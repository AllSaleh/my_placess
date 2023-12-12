import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

// ignore: depend_on_referenced_packages

import 'package:project/main.dart';

class Crud {
  get(String uri) async {
    try {
      var response = await http.get(Uri.parse(uri), headers: {
        "Authorization": "Bearer ${sharedPref.getString('token')}"
      });

      if (response.statusCode == 200) {
        var responseBody = jsonDecode(response.body);

        return responseBody;
      }
    } catch (e) {
      debugPrint('error $e');
    }
  }

  delete(String uri) async {
    try {
      var response = await http.delete(Uri.parse(uri), headers: {
        "Authorization": "Bearer ${sharedPref.getString('token')}"
      });

      if (response.statusCode == 200) {
        var responseBody = jsonDecode(response.body);

        return responseBody;
      }
    } catch (e) {
      debugPrint('error $e');
    }
  }

  postdata(Map data, String uri) async {
    try {
      var response = await http.post(Uri.parse(uri), body: data, headers: {
        "Authorization": "Bearer ${sharedPref.getString('token')}"
      });

      if (response.statusCode == 200) {
        var responseBody = jsonDecode(response.body);
        return responseBody;
      }
      debugPrint(response.statusCode.toString());
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  postwithFile(String uri, Map data, List<File> images) async {
    try {
      var request = http.MultipartRequest('POST', Uri.parse(uri));
      request.headers
          .addAll({"Authorization": "Bearer ${sharedPref.getString('token')}"});
      for (int i = 0; i < images.length; i++) {
        final f = http.MultipartFile(
            'images[$i]',
            File(images[i].path).readAsBytes().asStream(),
            File(images[i].path).lengthSync(),
            filename: basename(images[i].path));
        request.files.add(f);
      }

      data.forEach((key, value) {
        request.fields[key] = value;
      });
      var myrequest = await request.send();

      var response = await http.Response.fromStream(myrequest);
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        debugPrint('Error ${myrequest.statusCode}');
      }
    } catch (e) {
      debugPrint('Error is $e');
    }
  }

  postWithFile1(Map data, File file, String uri) async {
    try {
      var request = http.MultipartRequest('POST', Uri.parse(uri));
      request.headers
          .addAll({"Authorization": "Bearer ${sharedPref.getString('token')}"});

      var length = await file.length();
      var stream = http.ByteStream(file.openRead());

      var muiltpartfile = http.MultipartFile("image", stream, length,
          filename: basename(file.path));
      request.files.add(muiltpartfile);
      data.forEach((key, value) {
        request.fields[key] = value;
      });
      var myrequest = await request.send();

      var response = await http.Response.fromStream(myrequest);
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {}
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
