import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Api {
  Future<Response> getRequset(String url) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    final response =
        await http.get(Uri.parse(url), headers: {"Authrization": "$token"});

    if (kDebugMode) {
      print("GET Url:$url");
      print("GET STATUS CODE:${response.statusCode}");
      print("GET RSPONSE:${response.body}");
    }
    return response;
  }

  Future<Response> postRequset(String url, Map body) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    final response = await http.post(Uri.parse(url),
        body: json.encode(body), headers: {"Authrization": "$token"});

    if (kDebugMode) {
      print("POST Url:$url");
      print("POST BODY:$body");

      print("POST STATUS CODE:${response.statusCode}");
      print("POST RSPONSE:${response.body}");
    }
    return response;
  }

  Future<Response> putRequset(String url, Map body) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    final response = await http.put(Uri.parse(url),
        body: json.encode(body), headers: {"Authrization": "$token"});
    if (kDebugMode) {
      print("PUT Url:$url");
      print("PUT BODY:$body");

      print("PUT STATUS CODE:${response.statusCode}");
      print("PUT RSPONSE:${response.body}");
    }
    return response;
  }

  Future<Response> deleteRequset(String url, Map body) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    final response = await http.delete(Uri.parse(url),
        body: json.encode(body), headers: {"Authrization": "$token"});

    if (kDebugMode) {
      print("DELETE Url:$url");
      print("DELETE BODY:$body");
      print("DELETE STATUS CODE:${response.statusCode}");
      print("DELETE RSPONSE:${response.body}");
    }
    return response;
  }
}
