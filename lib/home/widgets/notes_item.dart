import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Gap(20),
          ListTile(
            title: const Text(
              'Flutter tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 27,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: const Text(
                'Bulid your first app by\n hamo elzyady',
                style: TextStyle(
                  color: Color.fromARGB(107, 0, 0, 0),
                  fontFamily: '',
                  fontSize: 17,
                ),
              ),
            ),
            trailing: Icon(
              CupertinoIcons.delete_solid,
              color: Colors.black,
              size: 28,
            ),
          ),
          Gap(20),
          Container(
            padding: EdgeInsets.only(right: 22),
            child: const Text(
              'May 21,2025',
              style: TextStyle(color: Color.fromARGB(158, 0, 0, 0)),
            ),
          ),
          Gap(20),
        ],
      ),
    );
  }
}
