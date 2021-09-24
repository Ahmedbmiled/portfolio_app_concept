import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsItem extends StatelessWidget {
  const SettingsItem(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.color,
      required this.icon})
      : super(key: key);
  final String title;
  final String subtitle;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      subtitle: Text(subtitle),
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: color,
        ),
        child: Center(
          child: FaIcon(
            icon,
            color: Colors.white,
            size: 24,
          ),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      trailing: Icon(
        Icons.keyboard_arrow_right,
        color: Colors.grey,
      ),
    );
  }
}
