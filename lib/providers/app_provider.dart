import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';

class SereiAppProvider extends ChangeNotifier {
  // Active tab index is to tell the navigator where we currently are
  int _activeTabIndex = 0;

  int get activeTabIndex => _activeTabIndex;

  set activeTabIndex(int i) {
    _activeTabIndex = i;
    notifyListeners();
  }

  //

  // Categories tab index is to tell the navigator which child the Categories tab is currently on
  int _categoriesTabIndex = 0;

  int get categoriesTabIndex => _categoriesTabIndex;

  set categoriesTabIndex(int i) {
    _categoriesTabIndex = i;
    notifyListeners();
  }

  //Check permissions
  Map<Permission, PermissionStatus> _permissions = {
    Permission.notification: PermissionStatus.undetermined,
    Permission.storage: PermissionStatus.undetermined,
  };

  Map<Permission, PermissionStatus> get permissions => _permissions;

  Future<void> requestPermissions() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.notification,
      Permission.storage,
    ].request();

    _permissions = statuses;
    print(_permissions);
    notifyListeners();
  }
  //

  //Check type of device
  bool _isTablet = false;
  bool get isTablet => _isTablet;
  set isTablet(bool a) {
    _isTablet = a;
    notifyListeners();
  }

  Future<void> getDeviceType(double shortestSide) async {
    _isTablet = shortestSide >= 500.0;
    notifyListeners();
  }
  //

  void setAppOrientation() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }
}
