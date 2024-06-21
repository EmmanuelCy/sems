import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "department" field.
  DocumentReference? _department;
  DocumentReference? get department => _department;
  bool hasDepartment() => _department != null;

  // "attended_events" field.
  List<String>? _attendedEvents;
  List<String> get attendedEvents => _attendedEvents ?? const [];
  bool hasAttendedEvents() => _attendedEvents != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "userID" field.
  int? _userID;
  int get userID => _userID ?? 0;
  bool hasUserID() => _userID != null;

  // "schoolID" field.
  int? _schoolID;
  int get schoolID => _schoolID ?? 0;
  bool hasSchoolID() => _schoolID != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "userType" field.
  UserType? _userType;
  UserType? get userType => _userType;
  bool hasUserType() => _userType != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _department = snapshotData['department'] as DocumentReference?;
    _attendedEvents = getDataList(snapshotData['attended_events']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _userID = castToType<int>(snapshotData['userID']);
    _schoolID = castToType<int>(snapshotData['schoolID']);
    _gender = snapshotData['gender'] as String?;
    _userType = deserializeEnum<UserType>(snapshotData['userType']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? name,
  DocumentReference? department,
  DateTime? createdAt,
  int? userID,
  int? schoolID,
  String? gender,
  UserType? userType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'department': department,
      'created_at': createdAt,
      'userID': userID,
      'schoolID': schoolID,
      'gender': gender,
      'userType': userType,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.department == e2?.department &&
        listEquality.equals(e1?.attendedEvents, e2?.attendedEvents) &&
        e1?.createdAt == e2?.createdAt &&
        e1?.userID == e2?.userID &&
        e1?.schoolID == e2?.schoolID &&
        e1?.gender == e2?.gender &&
        e1?.userType == e2?.userType;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.name,
        e?.department,
        e?.attendedEvents,
        e?.createdAt,
        e?.userID,
        e?.schoolID,
        e?.gender,
        e?.userType
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
