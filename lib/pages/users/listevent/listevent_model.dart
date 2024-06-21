import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'listevent_widget.dart' show ListeventWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListeventModel extends FlutterFlowModel<ListeventWidget> {
  ///  Local state fields for this page.

  List<AttendanceRow> eventsPresent = [];
  void addToEventsPresent(AttendanceRow item) => eventsPresent.add(item);
  void removeFromEventsPresent(AttendanceRow item) =>
      eventsPresent.remove(item);
  void removeAtIndexFromEventsPresent(int index) =>
      eventsPresent.removeAt(index);
  void insertAtIndexInEventsPresent(int index, AttendanceRow item) =>
      eventsPresent.insert(index, item);
  void updateEventsPresentAtIndex(
          int index, Function(AttendanceRow) updateFn) =>
      eventsPresent[index] = updateFn(eventsPresent[index]);

  List<EventsRow> eventName = [];
  void addToEventName(EventsRow item) => eventName.add(item);
  void removeFromEventName(EventsRow item) => eventName.remove(item);
  void removeAtIndexFromEventName(int index) => eventName.removeAt(index);
  void insertAtIndexInEventName(int index, EventsRow item) =>
      eventName.insert(index, item);
  void updateEventNameAtIndex(int index, Function(EventsRow) updateFn) =>
      eventName[index] = updateFn(eventName[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Backend Call - Query Rows] action in Tab widget.
  List<AttendanceRow>? getAttendance;
  // Stores action output result for [Backend Call - Query Rows] action in Column widget.
  List<AttendanceRow>? getAttendanceRefreshCopy;
  // Stores action output result for [Backend Call - Query Rows] action in Column widget.
  List<AttendanceRow>? getAttendanceRefresh;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
