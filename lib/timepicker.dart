import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimePickerPage extends StatefulWidget {
  const TimePickerPage({Key? key}) : super(key: key);

  @override
  State<TimePickerPage> createState() => _TimePickerPageState();
}

class _TimePickerPageState extends State<TimePickerPage> {


  var timectrlr=TextEditingController();
  var dattectrlr=TextEditingController();


  void showdate(BuildContext context){
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime.now())
        .then((pickedDate) {
      // Check if no date is selected
      if (pickedDate == null) {
        return;
      }
      setState(() {
        // using state so that the UI will be rerendered when date is picked
        dattectrlr.text = pickedDate.toString();

      });
    });
  }
  Future<void> picktime(BuildContext context) async {
    TimeOfDay? pickedTime =  await showTimePicker(initialTime: TimeOfDay.now(), context: context,);
    //
    if(pickedTime != null ){
      print(pickedTime.format(context));

      String formattedTime = '${pickedTime.hour.toString().padLeft(2, '0')}:${pickedTime.minute.toString().padLeft(2, '0')}:00';

      setState(() {
        timectrlr.text = formattedTime; //set the value of text field.
      });
    }else{
      print("Time is not selected");
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              children: [
                InkWell(child: Text("show date"),onTap: (){
                  picktime(context);
                },),
                InkWell(
                  onTap: () {
                    picktime(context);
                  },
                  child:  IgnorePointer(
                    child: TextField(
                      controller: timectrlr,
                      decoration: InputDecoration(
                        labelText: 'Time',
                        hintText: 'Enter Time',
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.lock_clock),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showdate(context);
                  },
                  child:  IgnorePointer(
                    child: TextField(
                      controller: dattectrlr,
                      decoration: InputDecoration(
                        labelText: 'Date',
                        hintText: 'Enter Date',
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.calendar_today_outlined),
                      ),
                    ),
                  ),
                ),
              ],
              ),
        ),
        );
    }

}
