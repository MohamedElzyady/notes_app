import 'package:flutter/material.dart';
import 'package:note_app/home/widgets/showModalBottomSheet.dart';

class Floatingactionbutton extends StatelessWidget {
  const Floatingactionbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(40),
      ),
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Showmodalbottomsheet();
          },
        );
      },
      child: Icon(Icons.add),
    );
  }
}
