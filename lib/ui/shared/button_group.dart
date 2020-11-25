import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:flutter/material.dart';

class ButtonGroup extends StatefulWidget {
  final int selectedIndex;
  final void Function(int) onSelectedIndexChanged;

  const ButtonGroup({
    Key key,
    this.selectedIndex = 0,
    this.onSelectedIndexChanged,
  }) : super(key: key);

  @override
  _ButtonGroupState createState() => _ButtonGroupState();
}

class _ButtonGroupState extends State<ButtonGroup> {
  int _selectedIndex = 0;

  @override
  void initState() {
    _selectedIndex = widget.selectedIndex;
    super.initState();
  }

  void updateSelectedIndex(index) {
    setState(() {
      _selectedIndex = index;
      if (widget.onSelectedIndexChanged != null) {
        widget.onSelectedIndexChanged(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ButtonGroupButton(
          date: '6',
          day: 'Day 1',
          active: _selectedIndex == 0,
          onTap: () {
            updateSelectedIndex(0);
          },
        ),
        ButtonGroupButton(
          date: '7',
          day: 'Day 2',
          active: _selectedIndex == 1,
          onTap: () {
            updateSelectedIndex(1);
          },
        ),
        ButtonGroupButton(
          date: '8',
          day: 'Day 3',
          active: _selectedIndex == 2,
          onTap: () {
            updateSelectedIndex(2);
          },
        ),
      ],
    );
  }
}

class ButtonGroupButton extends StatelessWidget {
  final String date;
  final String day;
  final bool active;
  final Function onTap;

  const ButtonGroupButton(
      {Key key,
      this.active = false,
      this.onTap,
      @required this.date,
      @required this.day})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(5),
        // height: 60,
        // width: 50,
        decoration: BoxDecoration(
            color: active ? Palette.yellow : Palette.green[100],
            borderRadius: BorderRadius.circular(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              date,
              style: Theme.of(context).textTheme.title,
              textAlign: TextAlign.left,
            ),
            Text(
              day,
              style: Theme.of(context).textTheme.overline.copyWith(
                    color: active
                        ? Colors.black
                        : Theme.of(context).textTheme.overline.color,
                  ),
            ),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
