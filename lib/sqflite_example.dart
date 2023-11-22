import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'package:path/path.dart';



class DBStudentManager  {
  late Database _database;

  Future openDB() async {
    _database = await openDatabase(
        join(await getDatabasesPath(), "student.db"),
        version: 1,
        onCreate: (Database db, int version) async {
          await db.execute(
              "CREATE TABLE student(id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,course TEXT)");
        });
  }

  Future<int> insertStudent(Student student) async {
    await openDB();
    return await _database.insert('student', student.toMap());
  }

  Future<List<Student>> getStudentList() async {
    await openDB();
    final List<Map<String, dynamic>> maps = await _database.query('student');
    return List.generate(maps.length, (index) {
      return Student(id: maps[index]['id'], name: maps[index]['name'], course: maps[index]['course']);
    });
  }


  Future<int> updateStudent(Student student) async {
  await openDB();
  return await _database.update('student', student.toMap(), where: 'id=?', whereArgs: [student.id]);
  }

  Future<void> deleteStudent(int? id) async {
    await openDB();
    await _database.delete("student", where: "id = ? ", whereArgs: [id]);
  }



}

class Student {
  int? id;
  String name;
  String course;

  Student({ this.id, required this.name, required this.course});

  Map<String, dynamic> toMap() {
    return {'name': name, 'course': course};
  }
}