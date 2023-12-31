import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

part 'api_constant.dart';
part 'api_exception.dart';
part 'api_handler.dart';

class Api {
  static final ApiHandler _handler = ApiHandler();
  static Future user() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // String? token = prefs.getString(StringValue.sessionTokenStr).toString();
    return await _handler.post(ApiUrl.infoUserUrl,{
      'id': '1'
    });
  }

  static Future banner() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // String? token = prefs.getString(StringValue.sessionTokenStr).toString();
    return await _handler.get(ApiUrl.bannerUrl);
  }
}