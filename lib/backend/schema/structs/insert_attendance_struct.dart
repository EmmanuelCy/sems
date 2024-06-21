// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InsertAttendanceStruct extends FFFirebaseStruct {
  InsertAttendanceStruct({
    int? eventId,
    String? createdAt,
    String? status,
    int? userID,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _eventId = eventId,
        _createdAt = createdAt,
        _status = status,
        _userID = userID,
        super(firestoreUtilData);

  // "event_id" field.
  int? _eventId;
  int get eventId => _eventId ?? 0;
  set eventId(int? val) => _eventId = val;

  void incrementEventId(int amount) => eventId = eventId + amount;

  bool hasEventId() => _eventId != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "userID" field.
  int? _userID;
  int get userID => _userID ?? 0;
  set userID(int? val) => _userID = val;

  void incrementUserID(int amount) => userID = userID + amount;

  bool hasUserID() => _userID != null;

  static InsertAttendanceStruct fromMap(Map<String, dynamic> data) =>
      InsertAttendanceStruct(
        eventId: castToType<int>(data['event_id']),
        createdAt: data['created_at'] as String?,
        status: data['status'] as String?,
        userID: castToType<int>(data['userID']),
      );

  static InsertAttendanceStruct? maybeFromMap(dynamic data) => data is Map
      ? InsertAttendanceStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'event_id': _eventId,
        'created_at': _createdAt,
        'status': _status,
        'userID': _userID,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'event_id': serializeParam(
          _eventId,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'userID': serializeParam(
          _userID,
          ParamType.int,
        ),
      }.withoutNulls;

  static InsertAttendanceStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      InsertAttendanceStruct(
        eventId: deserializeParam(
          data['event_id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        userID: deserializeParam(
          data['userID'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'InsertAttendanceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InsertAttendanceStruct &&
        eventId == other.eventId &&
        createdAt == other.createdAt &&
        status == other.status &&
        userID == other.userID;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([eventId, createdAt, status, userID]);
}

InsertAttendanceStruct createInsertAttendanceStruct({
  int? eventId,
  String? createdAt,
  String? status,
  int? userID,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    InsertAttendanceStruct(
      eventId: eventId,
      createdAt: createdAt,
      status: status,
      userID: userID,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

InsertAttendanceStruct? updateInsertAttendanceStruct(
  InsertAttendanceStruct? insertAttendance, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    insertAttendance
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addInsertAttendanceStructData(
  Map<String, dynamic> firestoreData,
  InsertAttendanceStruct? insertAttendance,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (insertAttendance == null) {
    return;
  }
  if (insertAttendance.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && insertAttendance.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final insertAttendanceData =
      getInsertAttendanceFirestoreData(insertAttendance, forFieldValue);
  final nestedData =
      insertAttendanceData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = insertAttendance.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getInsertAttendanceFirestoreData(
  InsertAttendanceStruct? insertAttendance, [
  bool forFieldValue = false,
]) {
  if (insertAttendance == null) {
    return {};
  }
  final firestoreData = mapToFirestore(insertAttendance.toMap());

  // Add any Firestore field values
  insertAttendance.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getInsertAttendanceListFirestoreData(
  List<InsertAttendanceStruct>? insertAttendances,
) =>
    insertAttendances
        ?.map((e) => getInsertAttendanceFirestoreData(e, true))
        .toList() ??
    [];
