import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SendAttendanceAPICall {
  static Future<ApiCallResponse> call({
    int? eventID,
    String? statusText = '',
    String? userID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Send Attendance API',
      apiUrl: 'https://l9qpts.buildship.run/send_attendance',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdrdmd5cmdzZWpiaHd3dXZlb2lvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTQ0NzAxNTAsImV4cCI6MjAzMDA0NjE1MH0.Y1rQOVXr_w_xWD7trPsaZMw7wMciEw5KIG0NONjNJac',
        'Content-Type': 'application/json',
      },
      params: {
        'event_id': eventID,
        'status': statusText,
        'userID': userID,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TestCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "event_id": 3,
  "status": "Present",
  "userID": "0d4418a2-5a47-4166-ae5d-f5f3e0f51bab"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Test',
      apiUrl: 'https://l9qpts.buildship.run/send_attendance',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdrdmd5cmdzZWpiaHd3dXZlb2lvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTQ0NzAxNTAsImV4cCI6MjAzMDA0NjE1MH0.Y1rQOVXr_w_xWD7trPsaZMw7wMciEw5KIG0NONjNJac',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SendAttendanceCall {
  static Future<ApiCallResponse> call({
    int? event,
    String? status = '',
    String? user = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'sendAttendance',
      apiUrl: 'https://l9qpts.buildship.run/send_attendance',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdrdmd5cmdzZWpiaHd3dXZlb2lvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTQ0NzAxNTAsImV4cCI6MjAzMDA0NjE1MH0.Y1rQOVXr_w_xWD7trPsaZMw7wMciEw5KIG0NONjNJac',
      },
      params: {
        'event_id': event,
        'status': status,
        'userID': user,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
