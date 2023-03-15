import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/exceptions/exceptions.dart';
import 'package:http/http.dart';

class Auth_cred {
   loginApi(
      String uname, String password, BuildContext context) async {
        log("login api called");
        var body = jsonEncode({"uname": "$uname", "password": "$password"});
        print(body);
    Response res = await post(
        Uri.parse("http://159.65.156.175/oxford/api/login.php"),
        body: body);
        log(res.statusCode.toString());
    if (res.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
  Future getProfileDetails ()async {
    Response res = await get(Uri.parse("http://159.65.156.175/oxford/api/profile.php?id=OXFSTU0103"));
    return res.body;
  }
}
