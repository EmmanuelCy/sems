import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

List<UsersRow>? sortUserList(
  List<UsersRow> listToSort,
  int index,
  bool isAsc,
) {
  ///
  // create a function to sort the users table by id, fullname
  listToSort.sort((a, b) {
    if (index == 0) {
      if (isAsc) {
        return a.id.compareTo(b.id);
      } else {
        return b.id.compareTo(a.id);
      }
    } else {
      if (isAsc) {
        return a.fullname.compareTo(b.fullname);
      } else {
        return b.fullname.compareTo(a.fullname);
      }
    }
  });
  return listToSort;
}

int? convertToInt(String? toConvert) {
  // convert string to int/
  try {
    return int.parse(toConvert!);
  } catch (e) {
    return null;
  }
}

bool getAttendanceStatus(DateTime? eventStartTime) {
  // check if current time is 10minutes more than eventStartTime
  if (eventStartTime == null) {
    return false;
  }
  final now = DateTime.now();
  final difference = now.difference(eventStartTime);
  return difference.inMinutes >= 10;
}

int? getNumberOfRoleAttendance(
  List<AttendanceRow>? attendanceList,
  List<UsersRow> usersList,
  String? role,
) {
  //  create a function to return the count of user where userAuthID is equal and user_type is Student
  int count = 0;
  for (AttendanceRow attendance in attendanceList!) {
    for (UsersRow user in usersList) {
      if (attendance.userAuthID == user.userAuthID && user.userType == role) {
        count++;
      }
    }
  }
  return count;
}
