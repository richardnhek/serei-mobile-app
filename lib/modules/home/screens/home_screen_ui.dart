import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:serei_app/providers/app_provider.dart';
import 'package:provider/provider.dart';
import 'package:serei_app/widgets/bottom_nav/serei_bottom_nav.dart';
import 'package:serei_app/utils/ui/device_utils.dart';

class HomeScreenUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SereiAppProvider sereiAppProvider = Provider.of<SereiAppProvider>(context);
    final mq = MediaQuery.of(context);
    return Container(
      color: Color(0xFFF0F5F8),
      child: Container(
        child: Text("Home"),
        width: 300,
        height: 300,
        color: DeviceUtils.getResponsive(
            sereiAppProvider: sereiAppProvider,
            mq: mq,
            onPhone: Colors.red,
            onTablet: Colors.green),
      ),
    );
  }
}
