import 'package:flutter/material.dart';
import 'package:progress_dialog_null_safe/progress_dialog_null_safe.dart';

class ProgressDialogPage extends StatefulWidget {
  const ProgressDialogPage({Key? key}) : super(key: key);

  @override
  State<ProgressDialogPage> createState() => _ProgressDialogPageState();
}

class _ProgressDialogPageState extends State<ProgressDialogPage> {
  late ProgressDialog pr;
  double percentage = 0.0;

  @override
  Widget build(BuildContext context) {
    pr = ProgressDialog(
      context,
      type: ProgressDialogType.download,
      textDirection: TextDirection.rtl,
      isDismissible: true,
//      customBody: LinearProgressIndicator(
//        valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
//        backgroundColor: Colors.white,
//      ),
    );
    pr.style(
        message: 'Downloading file...',
        borderRadius: 10.0,
        backgroundColor: Colors.white,
        progressWidget: LinearProgressIndicator(),
        elevation: 10.0,
        insetAnimCurve: Curves.easeInOut,
        progress: 0.0,
        maxProgress: 100.0,
        progressTextStyle: TextStyle(
            color: Colors.black, fontSize: 13.0, fontWeight: FontWeight.w400),
        messageTextStyle: TextStyle(
            color: Colors.black, fontSize: 19.0, fontWeight: FontWeight.w600));

    return Scaffold(
      appBar: AppBar(
        title: Text("Progress Dialog"),
      ),
      body: ElevatedButton(
          child: Text("OK"),
          onPressed: () async {
            await pr.show();

            Future.delayed(const Duration(seconds: 2)).then((onValue) {
              percentage = percentage + 30.0;
              print(percentage);

              pr.update(
                progress: percentage,
                message: "Please wait...",
                progressWidget: Container(
                    
                    child: const LinearProgressIndicator()),
                maxProgress: 100.0,
                progressTextStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400),
                messageTextStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 19.0,
                    fontWeight: FontWeight.w600),
              );

              Future.delayed(const Duration(seconds: 2)).then((value) {
                percentage = percentage + 30.0;
                pr.update(progress: percentage, message: "Few more seconds...");
                print(percentage);
                Future.delayed(const Duration(seconds: 2)).then((value) {
                  percentage = percentage + 30.0;
                  pr.update(progress: percentage, message: "Almost done...");
                  print(percentage);

                  Future.delayed(const Duration(seconds: 2)).then((value) {
                    pr.hide().whenComplete(() {
                      print(pr.isShowing());
                    });
                    percentage = 0.0;
                  });
                });
              });
            });

            Future.delayed(const Duration(seconds: 10)).then((onValue) {
              print("PR status  ${pr.isShowing()}");
              if (pr.isShowing()) {
                pr.hide().then((isHidden) {
                  print(isHidden);
                });
              }
              print("PR status  ${pr.isShowing()}");
            });
          }),
    );
  }
}
