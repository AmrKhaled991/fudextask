import 'package:flutter/material.dart';
import 'package:fudextask/core/functions/custom_shadow.dart';
import 'package:fudextask/core/globalUtils/Styles.dart';
import 'package:fudextask/core/globalWidgets/DropListModel%20.dart';

class SelectDropList extends StatefulWidget {
  final OptionItem itemSelected;
  final DropListModel dropListModel;
  final Function(OptionItem optionItem) onOptionSelected;

  SelectDropList(this.itemSelected, this.dropListModel, this.onOptionSelected);

  @override
  _SelectDropListState createState() =>
      _SelectDropListState(itemSelected, dropListModel);
}

class _SelectDropListState extends State<SelectDropList>
    with SingleTickerProviderStateMixin {
  OptionItem optionItemSelected;
  final DropListModel dropListModel;

  _SelectDropListState(this.optionItemSelected, this.dropListModel);

  late AnimationController expandController;
  late Animation<double> animation;

  bool isShow = false;
  @override
  void initState() {
    super.initState();
    expandController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 350));
    animation = CurvedAnimation(
      parent: expandController,
      curve: Curves.fastOutSlowIn,
    );
    _runExpandCheck();
  }

  void _runExpandCheck() {
    if (isShow) {
      expandController.forward();
    } else {
      expandController.reverse();
    }
  }

  @override
  void dispose() {
    expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            isShow = !isShow;
            _runExpandCheck();
            setState(() {});
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Color(0xFFDBDBDB)),
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  optionItemSelected.title,
                  style: Styles.textNormal14(),
                ),
                Spacer(),
                Icon(
                  isShow
                      ? Icons.keyboard_arrow_up_outlined
                      : Icons.keyboard_arrow_down_outlined,
                  size: 30,color: Color(0xFFDBDBDB),
                ),
              ],
            ),
          ),
        ),
        SizeTransition(
            axisAlignment: 1.0,
            sizeFactor: animation,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Color(0xFFDBDBDB)),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Colors.white,
                  boxShadow: [customShadow()],
                ),
                child: _buildDropListOptions(
                    dropListModel.listOptionItems, context))),
//          Divider(color: Colors.grey.shade300, height: 1,)
      ],
    );
  }

  Column _buildDropListOptions(List<OptionItem> items, BuildContext context) {
    return Column(
      children: items.map((item) => _buildSubMenu(item, context)).toList(),
    );
  }

  Widget _buildSubMenu(OptionItem item, BuildContext context) {
    return GestureDetector(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                border: Border(top: BorderSide(color: Colors.grey, width: 1)),
              ),
              child: Text(item.title,
                  style: Styles.textNormal14(),
                  maxLines: 3,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis),
            ),
          ),
        ],
      ),
      onTap: () {
        this.optionItemSelected = item;
        isShow = false;
        expandController.reverse();
        widget.onOptionSelected(item);
      },
    );
  }
}
