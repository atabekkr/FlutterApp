import 'package:first_flutter_app/design/dialog/error_dialog.dart';
import 'package:first_flutter_app/design/dimensions.dart';
import 'package:first_flutter_app/design/widgets/accent_button.dart';
import 'package:first_flutter_app/pages/driver/driver_page.dart';
import 'package:first_flutter_app/pages/vehicle/vehicle_item.dart';
import 'package:flutter/material.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      _list(context),
      Align(alignment: Alignment.bottomCenter, child: _updateButton(context))
    ]);
  }

  Widget _list(BuildContext context) {
    final safeBottomPadding = MediaQuery.of(context).padding.bottom;
    final bottomPadding = (safeBottomPadding + height8) * 2 + height40;

    return ListView.separated(
      itemCount: 15,
      padding: EdgeInsets.only(
          left: padding16,
          top: padding16,
          right: padding16,
          bottom: bottomPadding),
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: height8);
      },
      itemBuilder: (BuildContext context, int index) {
        return VehicleItem(onTap: () async {
          await _showDriverPage(context);
        });
      },
    );
  }

  Widget _updateButton(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(
          bottom: padding16, right: padding8, left: padding8),
      child: AccentButton(title: 'Update', onTap: () {
        _showErrorDialog(context);
      }),
    ));
  }

  void _showErrorDialog(BuildContext context) {
    showDialog(context: context, builder: (BuildContext context) {
      return const ErrorDialog(description: 'Server is unvailable. Please try again later.');
    });
  }

  Future<void> _showDriverPage(BuildContext context) async {
    await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const DriverPage();
    }));
  }
}
