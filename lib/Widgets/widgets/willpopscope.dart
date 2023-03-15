import 'package:flutter/material.dart';

class WillPopScopeTo extends StatelessWidget {
  final String? titleText;
  final VoidCallback? onPressedYes;
  final Widget? child;
  final List<Widget>? widgets;
  const WillPopScopeTo({
    Key? key,
    this.titleText,
    this.onPressedYes,
    this.child,
    this.widgets,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool willLeave = false;
        await showDialog(
            context: context,
            builder: (_) => AlertDialog(
                  key: const ValueKey('alert'),
                  title: Column(children: widgets!),
                  scrollable: true,
                  actions: [
                    MaterialButton(
                        shape: const RoundedRectangleBorder(),
                        onPressed: onPressedYes,
                        child: const Text(
                          'Yes',
                          style: TextStyle(color: Colors.black),
                        )),
                    MaterialButton(
                        shape: const RoundedRectangleBorder(),
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text(
                          'No',
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                ));
        return willLeave;
      },
      child: child!,
    );
  }
}
