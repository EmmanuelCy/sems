import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/components/edit_user/edit_user_widget.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'users_page_widget.dart' show UsersPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class UsersPageModel extends FlutterFlowModel<UsersPageWidget> {
  ///  Local state fields for this page.

  List<UsersRow> usersPageListTable = [];
  void addToUsersPageListTable(UsersRow item) => usersPageListTable.add(item);
  void removeFromUsersPageListTable(UsersRow item) =>
      usersPageListTable.remove(item);
  void removeAtIndexFromUsersPageListTable(int index) =>
      usersPageListTable.removeAt(index);
  void insertAtIndexInUsersPageListTable(int index, UsersRow item) =>
      usersPageListTable.insert(index, item);
  void updateUsersPageListTableAtIndex(
          int index, Function(UsersRow) updateFn) =>
      usersPageListTable[index] = updateFn(usersPageListTable[index]);

  List<UsersRow> searchedUsers = [];
  void addToSearchedUsers(UsersRow item) => searchedUsers.add(item);
  void removeFromSearchedUsers(UsersRow item) => searchedUsers.remove(item);
  void removeAtIndexFromSearchedUsers(int index) =>
      searchedUsers.removeAt(index);
  void insertAtIndexInSearchedUsers(int index, UsersRow item) =>
      searchedUsers.insert(index, item);
  void updateSearchedUsersAtIndex(int index, Function(UsersRow) updateFn) =>
      searchedUsers[index] = updateFn(searchedUsers[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in UsersPage widget.
  List<UsersRow>? usersOnLoad;
  // Model for webNav component.
  late WebNavModel webNavModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<String> simpleSearchResults = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<UsersRow>();
  // Stores action output result for [Backend Call - Query Rows] action in IconButton widget.
  List<UsersRow>? refreshUsersTable;

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
