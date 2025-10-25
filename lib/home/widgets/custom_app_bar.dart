import 'package:flutter/cupertino.dart';

class AppPar extends StatelessWidget {
  const AppPar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Notes',
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
          child: const Icon(CupertinoIcons.search),
        ),
      ],
    );
  }
}
