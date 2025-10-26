
import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, this.onTap});
final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.cyan,
        borderRadius: BorderRadius.circular(23),
      ),
      child: Center(
        child: InkWell(
          onTap: onTap,
          child: Text(
            'Add',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: 'RobotoSlab',
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
