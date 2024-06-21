// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert' show utf8;
import 'package:download/download.dart';

Future exportAttendanceCSV(
  String eventName,
  DateTime eventDate,
) async {
  String header = "$eventName,$eventDate\n\n";

  String fileContent = header +
      "name,user_type,gender,department,year_level,created_at,status\n";
  final supabase = SupaFlow.client;
  // Perform the SQL query
  try {
    // Nested query for the right join effect
    final response = await supabase
        .from('users') // Start from the "users" table (right table)
        .select(
            'fullname, user_type, gender, department, year_level, a.created_at, a.status') // Select all required columns
        .eq(
            'userAuthID',
            supabase.from('attendance').select(
                'userAuthID')) // Nested query to get matching IDs from 'attendance'
        .execute();

    // Data handling (unchanged)
    for (var record in response.data as List<dynamic>) {
      fileContent +=
          "${record['fullname']},${record['user_type']},${record['gender']},${record['department']},${record['year_level']},${record['created_at']},${record['status']}\n";
    }
  } catch (error) {
    // Handle errors (unchanged)
    print("Error fetching data: $error");
    return;
  }

  // Create and download the CSV file
  final fileName = "$eventName($eventDate)_${DateTime.now()}.csv";
  var bytes = utf8.encode(fileContent);
  final stream = Stream.fromIterable(bytes);
  return download(stream, fileName);
}
