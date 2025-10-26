import 'package:hive/hive.dart';
 
//class ملحوظه لازم يكون الاسم نفس اسم 
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String notes;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;
  NoteModel({
    required this.color,
    required this.date,
    required this.notes,
    required this.title,
  });
}
