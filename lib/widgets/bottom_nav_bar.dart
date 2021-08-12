import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key, required this.index, required this.callback}) : super(key: key);

  final int index;
  final Function(int)? callback;

  _buildBottomNavItem({
    required Icon icon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.all(10.0),
        child: icon,
      ),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      unselectedItemColor: Theme.of(context).accentColor,
      backgroundColor: Theme.of(context).backgroundColor,
      selectedLabelStyle: Theme.of(context).textTheme.subtitle2,
      unselectedLabelStyle: Theme.of(context).textTheme.subtitle2,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      currentIndex: index,
      items: [
        _buildBottomNavItem(icon: Icon(Icons.timer), label: 'Stop Watch'),
        _buildBottomNavItem(icon: Icon(Icons.slow_motion_video), label: 'Timer'),
        _buildBottomNavItem(icon: Icon(Icons.settings), label: 'Settings'),
      ],
      onTap: callback,
    );
  }
}
