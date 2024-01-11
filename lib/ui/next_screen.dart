import 'package:branch_app_demo/utils/constants/app_constants.dart';
import 'package:branch_app_demo/utils/constants/dimens.dart';
import 'package:flutter/material.dart';

class NextScreen extends StatefulWidget {
  final String? customString;
  const NextScreen({super.key, this.customString});
  @override
  _NextScreenState createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.nextScreenAppBarTitle),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            AppConstants.gettingData,
            style: TextStyle(fontSize: descriptionFontSize),
          ),
          Center(
            child: Text(
              "${widget.customString}",
              style: const TextStyle(
                  fontSize: descriptionFontSize, color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
