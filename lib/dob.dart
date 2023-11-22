import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

class DateOfBirthPage extends StatefulWidget {
  const DateOfBirthPage({Key? key}) : super(key: key);

  @override
  State<DateOfBirthPage> createState() => _DateOfBirthPageState();
}

class _DateOfBirthPageState extends State<DateOfBirthPage> {
  var _dobController = TextEditingController();
  late int age;
  late int month1;
  late int month2;
  late int day1;
  late int day2;

  void ageCalculator(BuildContext context) {
    showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1998),
        lastDate: DateTime.now()).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _dobController.text = DateFormat.yMMMd().format(pickedDate).toString();
      });
      age=DateTime.now().year-pickedDate.year;
      month1=DateTime.now().month;
      month2=pickedDate.month;
      day1=DateTime.now().day;
      day2=pickedDate.day;

      print("${_dobController}");
      print("${age}");

      if(month2>month1){
        age--;
      }
      else if(month1==month2){
        if(day2>day1){
          age--;
        }
      }
      Fluttertoast.showToast(msg: "you are ${age} ${(age>1)? 'years': 'year'} old");
    });

    // print(DateFormat.yMMMd(f))



  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("Age Calculator"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell
                (
                  onTap: () {
                    ageCalculator(context);
                  },
                  child: IgnorePointer(
                      child: TextField(
                        controller: _dobController,
                        decoration: InputDecoration(
                            hintText: "Enter your Date of Birth"),
                      ))),
            ),
          ],
        ),
      );
    }
  }
