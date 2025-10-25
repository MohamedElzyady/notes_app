import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppPar extends StatelessWidget {
  const CustomAppPar({
    super.key,
    this.iconBar,
    this.onTaps,
    required this.title,
  });
  final Icon? iconBar;
  final Function()? onTaps;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            fontFamily: 'RobotoSlab',
          ),
        ),
        const Spacer(),
        Container(
          padding: EdgeInsets.all(7),
          decoration: BoxDecoration(
            color: const Color.fromARGB(77, 158, 158, 158),
            borderRadius: BorderRadius.circular(9),
          ),
          child: InkWell(
            onTap: onTaps,
            child: iconBar ?? Icon(CupertinoIcons.search),
          ),
        ),
      ],
    );
  }
}
