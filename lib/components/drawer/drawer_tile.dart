/* import 'package:flutter/material.dart';

class MyDrawerTile extends StatelessWidget {
  final String text;
  final IconData iconData;
  final void Function()? onTap;

  const MyDrawerTile({
    super.key,
    required this.text,
    required this.iconData,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: ListTile(
        title: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold
          ),
        ),
        leading: Icon(
          iconData,
          color: Colors.grey[400],
        ),
        onTap: onTap,
      ),
    );
  }
}
 */