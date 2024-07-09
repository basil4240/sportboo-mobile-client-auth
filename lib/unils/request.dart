import 'dart:async';
import 'dart:convert';

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:sportboo_mobile_client/unils/endpoint.dart';
import 'package:sportboo_mobile_client/unils/utils.dart';
import 'package:http_parser/http_parser.dart';
import 'constant.dart';

class Request {
  Future<Map<String, dynamic>> post(
      {required String endpoint,
      required Map<String, dynamic> body,
      int okStatusCode = 200}) async {
    http.Response response;
    try {
      response = await http.post(
        Uri.parse('$baseUrl/$endpoint'),
        body: (body.isNotEmpty)?jsonEncode(body):'',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      ).timeout(const Duration(seconds: timeOutTime));
      if (response.statusCode != okStatusCode) {
        String error = json.decode(response.body)['message'];
        if (kDebugMode) {
          print(error);
        }
        throw Exception(error);
      }
      return json.decode(response.body);
    } on TimeoutException {
      throw TimeoutException("Requests taking too long");
    } on SocketException {
      throw const SocketException("No network");
    } on http.ClientException {
      throw Exception('An unexpected error occurred while making the request.');
    } catch (e, st) {
      if (kDebugMode) {
        print(
          e.toString(),
        );
      }
      rethrow;
    }
  }

  Future changeProfileImage({required String imagePath}) async {
    http.Response? response;
    final form = http.MultipartRequest(
        'PATCH', Uri.parse('$baseUrl/${Endpoint.changeProfileImage}'));
    form.headers['Authorization'] = 'Bearer $token';
    final file = await http.MultipartFile.fromPath('file', imagePath,
        contentType: MediaType('image', 'jpeg'));
    form.files.add(file);
    final streamedResponse = await form.send();
    response = await http.Response.fromStream(streamedResponse);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(jsonDecode(response.body)['message']);
    }
  }

  Future accountVerification(
      {required String imagePath, required String verificationType}) async {
    http.Response? response;
    final form = http.MultipartRequest(
        'PATCH', Uri.parse('$baseUrl/${Endpoint.verification}'));
    form.headers['Authorization'] = 'Bearer $token';
    final file = await http.MultipartFile.fromPath('file', imagePath,
        contentType: MediaType('image', 'jpeg'));
    form.files.add(file);
    form.fields['accountVerificationType'] = verificationType;
    final streamedResponse = await form.send();
    response = await http.Response.fromStream(streamedResponse);
    if (response.statusCode == 200) {
      return jsonDecode(response.body)['message'];
    } else {
      throw Exception(jsonDecode(response.body)['message']);
    }
  }

  Future<Map<String, dynamic>> put(
      {required String endpoint,
      required Map<String, dynamic> body,
      int okStatusCode = 200}) async {
    http.Response response;
    try {
      response = await http.put(
        Uri.parse('$baseUrl/$endpoint'),
        body: json.encode(body),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      ).timeout(const Duration(seconds: timeOutTime));
      if (response.statusCode != okStatusCode) {
        String error = json.decode(response.body)['message'];
        throw Exception(error);
      }
      return json.decode(response.body);
    } on TimeoutException {
      throw TimeoutException("Requests taking too long");
    } on SocketException {
      throw const SocketException("No network");
    } on http.ClientException {
      throw Exception('An unexpected error occurred while making the request.');
    } catch (e, st) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> patch(
      {required String endpoint,
      Map<String, dynamic>? body,
      int okStatusCode = 200}) async {
    http.Response response;
    try {
      response = await http.patch(
        Uri.parse('$baseUrl/$endpoint'),
        body: jsonEncode(body),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      ).timeout(const Duration(seconds: timeOutTime));
      if (response.statusCode != okStatusCode) {
        String error = json.decode(response.body)['message'];
        throw Exception(error);
      }
      return json.decode(response.body);
    } on TimeoutException {
      throw TimeoutException("Requests taking too long");
    } on SocketException {
      throw const SocketException("No network");
    } on http.ClientException {
      throw Exception('An unexpected error occurred while making the request.');
    } catch (e, st) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> delete(
      {required String endpoint, int okStatusCode = 200}) async {
    http.Response response;
    try {
      response = await http.delete(
        Uri.parse('$baseUrl/$endpoint'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      ).timeout(const Duration(seconds: timeOutTime));
      if (response.statusCode != okStatusCode) {
        String error = json.decode(response.body)['message'];
        throw Exception(error);
      }
      return json.decode(response.body);
    } on TimeoutException {
      throw TimeoutException("Requests taking too long");
    } on SocketException {
      throw const SocketException("No network");
    } on http.ClientException {
      throw Exception('An unexpected error occurred while making the request.');
    } catch (e, st) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> get(
      {required String endpoint, int okStatusCode = 200}) async {
    http.Response response;
    try {
      response = await http.get(
        Uri.parse('$baseUrl/$endpoint'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      ).timeout(const Duration(seconds: timeOutTime));
      if (response.statusCode != okStatusCode) {
        String error = jsonEncode(response.body);
        throw Exception(error);
      }
      return jsonDecode(response.body);
    } on TimeoutException {
      throw TimeoutException("Requests taking too long");
    } on SocketException {
      throw const SocketException("No network");
    } on http.ClientException {
      throw Exception('An unexpected error occurred while making the request.');
    } catch (e, st) {
      rethrow;
    }
  }
}
