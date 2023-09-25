import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String? title, subtitle;
  final Color? color;

  const CustomListTile({
    Key? key,
    this.title,
    this.subtitle,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(24.0),
      color: color,
      child: ListTile(
        title: title != null ? Text(title!) : null,
        subtitle: subtitle != null ? Text(title!) : null,
      ),
    );
  }
}
