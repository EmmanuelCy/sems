import '/backend/supabase/supabase.dart';
import '/components/generate_q_r_c_o_d_e/generate_q_r_c_o_d_e_widget.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  Local state fields for this page.

  bool isStartEvent = false;

  String? selectedEvent;

  int? selectedEventID;

  List<AttendanceRow> selectedEventAttendanceData = [];
  void addToSelectedEventAttendanceData(AttendanceRow item) =>
      selectedEventAttendanceData.add(item);
  void removeFromSelectedEventAttendanceData(AttendanceRow item) =>
      selectedEventAttendanceData.remove(item);
  void removeAtIndexFromSelectedEventAttendanceData(int index) =>
      selectedEventAttendanceData.removeAt(index);
  void insertAtIndexInSelectedEventAttendanceData(
          int index, AttendanceRow item) =>
      selectedEventAttendanceData.insert(index, item);
  void updateSelectedEventAttendanceDataAtIndex(
          int index, Function(AttendanceRow) updateFn) =>
      selectedEventAttendanceData[index] =
          updateFn(selectedEventAttendanceData[index]);

  String? eventJudgeCode;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in Dashboard widget.
  List<AttendanceRow>? refreshEventAttData;
  // Model for webNav component.
  late WebNavModel webNavModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - Query Rows] action in DropDown widget.
  List<AttendanceRow>? refreshEventAttDataDD;
  // Stores action output result for [Backend Call - Query Rows] action in DropDown widget.
  List<EventsRow>? getJudgeCode;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<EventsRow>? setEventActive;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    webNavModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
