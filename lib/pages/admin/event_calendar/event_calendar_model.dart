import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/components/create_event/create_event_widget.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'event_calendar_widget.dart' show EventCalendarWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EventCalendarModel extends FlutterFlowModel<EventCalendarWidget> {
  ///  Local state fields for this page.

  List<AttendanceRecord> homeQueryAttendance = [];
  void addToHomeQueryAttendance(AttendanceRecord item) =>
      homeQueryAttendance.add(item);
  void removeFromHomeQueryAttendance(AttendanceRecord item) =>
      homeQueryAttendance.remove(item);
  void removeAtIndexFromHomeQueryAttendance(int index) =>
      homeQueryAttendance.removeAt(index);
  void insertAtIndexInHomeQueryAttendance(int index, AttendanceRecord item) =>
      homeQueryAttendance.insert(index, item);
  void updateHomeQueryAttendanceAtIndex(
          int index, Function(AttendanceRecord) updateFn) =>
      homeQueryAttendance[index] = updateFn(homeQueryAttendance[index]);

  EventsRow? selectedAttendanceData;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for webNav component.
  late WebNavModel webNavModel;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  bool requestCompleted = false;
  String? requestLastUniqueKey;

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    webNavModel.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleted;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
