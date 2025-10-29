import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, this.onTap, this.isLodaing = false});
  final Function()? onTap;
  final bool isLodaing;
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
          child: isLodaing
              ? const CircularProgressIndicator(
                  color: Color.fromARGB(255, 19, 104, 6),
                )
              : const Text(
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
