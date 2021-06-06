import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:springcloudgenui/commons/UiConstants.dart';
import 'package:springcloudgenui/components/LoadingDots.dart';

class Alerts extends StatelessWidget {
  final String title;
  final List<Widget> actions;

  Alerts({
    required this.title,
    this.actions = const [],
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Text(this.title, style: TextStyle(color: kWhite80)),
        actions: this.actions,
        backgroundColor: kAlertColor,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))));
  }
}

void showSilentAlerts(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}

void showSendingDialogue(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return Alerts(
        title: 'Submitting...',
        actions: [LoadingDots(size: 50)],
      );
    },
  );
}

void showSubmitResponse(BuildContext context, String resp, {Function? onOk}) {
  showDialog(
    context: context,
    builder: (context) {
      return Alerts(
        title: resp,
        actions: [
          TextButton(
              onPressed: () {
                if (onOk != null) onOk();
                Navigator.of(context).pop();
              },
              child: Text('OK'))
        ],
      );
    },
  );
}

void showErrorAlert(BuildContext context, String errorMessage) {
  showDialog(
    context: context,
    builder: (context) {
      return Alerts(
        title: 'ERROR',
        actions: [
          Text(errorMessage, style: TextStyle(fontSize: 18, color: kWhite80)),
          TextButton(
              onPressed: () => Navigator.of(context).pop(), child: Text('OK'))
        ],
      );
    },
  );
}

void showWarningAlert(
    BuildContext context, String errorMessage, Function onConfirmed) {
  showDialog(
    context: context,
    builder: (context) {
      return Alerts(
        title: 'Warning',
        actions: [
          Text(errorMessage, style: TextStyle(fontSize: 18, color: kWhite80)),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('No')),
              TextButton(onPressed: onConfirmed(), child: Text('Yes'))
            ],
          ),
        ],
      );
    },
  );
}
