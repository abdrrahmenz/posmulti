import 'package:flutter_jago_pos_app/data/models/requests/printer_request_model.dart';
import 'package:flutter_jago_pos_app/data/models/responses/auth_response_model.dart';
import 'package:flutter_jago_pos_app/data/models/responses/me_response_model.dart';
import 'package:flutter_jago_pos_app/data/models/responses/myoutlet_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDatasource {
  Future<void> saveUserData(AuthResponseModel data) async {
    // save user data to local storage
    final pref = await SharedPreferences.getInstance();
    await pref.setString('user', data.toJson());
  }

  //save outlet data to local storage
  Future<void> saveOutletData(MyoutletResponseModel data) async {
    // save user data to local storage
    final pref = await SharedPreferences.getInstance();
    await pref.setString('outlet', data.toJson());
  }

  //get outlet data from local storage
  Future<Outlet> getOutletData() async {
    final pref = await SharedPreferences.getInstance();
    final outlet = pref.getString('outlet');
    if (outlet != null) {
      return MyoutletResponseModel.fromJson(outlet).data;
    } else {
      return Outlet(id: 0, name: '', address: '');
    }
  }

  //remove outlet data from local storage
  Future<void> removeOutletData() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove('outlet');
  }

  //remove user data from local storage
  Future<void> removeUserData() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove('user');
  }

  //get user data from local storage
  Future<AuthResponseModel?> getUserData() async {
    final pref = await SharedPreferences.getInstance();
    final user = pref.getString('user');
    if (user != null) {
      return AuthResponseModel.fromJson(user);
    } else {
      return null;
    }
  }

  //get token
  Future<String?> getToken() async {
    final pref = await SharedPreferences.getInstance();
    final user = pref.getString('user');
    if (user != null) {
      return AuthResponseModel.fromJson(user).accessToken;
    } else {
      return null;
    }
  }

  //check if user is logged in
  Future<bool> isLoggedIn() async {
    final pref = await SharedPreferences.getInstance();
    final user = pref.getString('user');
    return user != null;
  }

  Future<void> savePrinter(PrinterModel? data) async {
    final prefs = await SharedPreferences.getInstance();
    if (data == null) {
      await prefs.remove('printer');
      return;
    }
    await prefs.setString('printer', data.toJson());
  }

  Future<PrinterModel?> getPrinter() async {
    final prefs = await SharedPreferences.getInstance();
    final printer = prefs.getString('printer');
    return printer != null ? PrinterModel.fromJson(printer) : null;
  }
}
