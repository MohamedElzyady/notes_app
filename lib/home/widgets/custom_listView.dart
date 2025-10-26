import 'package:flutter/cupertino.dart';
import 'package:note_app/home/widgets/notes_item.dart';

class CustomListview extends StatelessWidget {
  const CustomListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 14),
          child: NoteItem(
            
          ),
        );
      },
    );
  }
}
