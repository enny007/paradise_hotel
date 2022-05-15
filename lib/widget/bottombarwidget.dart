import 'package:flutter/material.dart';

import 'bottombaritem.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  List<BottomBarItem> barItems = [
    BottomBarItem(label: 'Home', isSelected: true, icon: Icons.home),
    BottomBarItem(label: 'Account', isSelected: false, icon: Icons.person),
    BottomBarItem(
        label: 'Bookings', isSelected: false, icon: Icons.pending_actions),
    BottomBarItem(label: 'Payments', isSelected: false, icon: Icons.payments),
    BottomBarItem(label: 'More', isSelected: false, icon: Icons.more_horiz),
  ];

  get mainThemeColor => null;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(barItems.length, (index) {
          var barItem = barItems[index];

          return GestureDetector(
            onTap: (() {
              setState(() {
                for (var item in barItems) {
                  item.isSelected = barItem == item;
                }
              });
            }),
            child: Column(
              children: [
                Icon(
                  barItem.icon,
                  color: barItem.isSelected! ? mainThemeColor : Colors.grey,
                ),
                Text(
                  barItem.label!,
                  style: TextStyle(
                      fontSize: 11,
                      color:
                          barItem.isSelected! ? mainThemeColor : Colors.grey),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
