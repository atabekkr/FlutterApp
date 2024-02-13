import 'package:first_flutter_app/design/colors.dart';
import 'package:first_flutter_app/design/dimensions.dart';
import 'package:first_flutter_app/design/images.dart';
import 'package:first_flutter_app/pages/driver/driver_list.dart';
import 'package:flutter/material.dart';

class DriverPage extends StatelessWidget {
  const DriverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Select Driver',
          style: TextStyle(
              color: primaryColor,
              fontSize: fontSize16,
              fontWeight: FontWeight.w500),
        ),
        backgroundColor: surfaceColor,
        centerTitle: true,
        leading: IconButton(
            icon: icBackImage,
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Container(color: backgroundColor, child: const DriverList()),
    );
  }
}
