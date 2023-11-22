import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OtpTextFieldPage extends StatefulWidget {
  const OtpTextFieldPage({Key? key}) : super(key: key);

  @override
  State<OtpTextFieldPage> createState() => _OtpTextFieldPageState();
}

class _OtpTextFieldPageState extends State<OtpTextFieldPage> {
  OtpFieldController _controller = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Text Field'),
      ),
      body: Container(
        child: OTPTextField(
            controller: _controller,
            length: 5,
            width: MediaQuery.of(context).size.width,
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldWidth: 45,
            fieldStyle: FieldStyle.box,
            outlineBorderRadius: 15,
            style: TextStyle(fontSize: 17),
            onChanged: (pin) {
              print("Changed: " + pin);
            },
            onCompleted: (pin) {
              print("Completed: " + pin);
            }),
      ),
    );
  }
}
