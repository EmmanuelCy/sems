import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DepartmentsRecord extends FirestoreRecord {
  DepartmentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "department_name" field.
  String? _departmentName;
  String get departmentName => _departmentName ?? '';
  bool hasDepartmentName() => _departmentName != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "department_acronymn" field.
  String? _departmentAcronymn;
  String get departmentAcronymn => _departmentAcronymn ?? '';
  bool hasDepartmentAcronymn() => _departmentAcronymn != null;

  // "departmentID" field.
  String? _departmentID;
  String get departmentID => _departmentID ?? '';
  bool hasDepartmentID() => _departmentID != null;

  void _initializeFields() {
    _departmentName = snapshotData['department_name'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _departmentAcronymn = snapshotData['department_acronymn'] as String?;
    _departmentID = snapshotData['departmentID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('departments');

  static Stream<DepartmentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DepartmentsRecord.fromSnapshot(s));

  static Future<DepartmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DepartmentsRecord.fromSnapshot(s));

  static DepartmentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DepartmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DepartmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DepartmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DepartmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DepartmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDepartmentsRecordData({
  String? departmentName,
  DateTime? createdAt,
  String? departmentAcronymn,
  String? departmentID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'department_name': departmentName,
      'created_at': createdAt,
      'department_acronymn': departmentAcronymn,
      'departmentID': departmentID,
    }.withoutNulls,
  );

  return firestoreData;
}

class DepartmentsRecordDocumentEquality implements Equality<DepartmentsRecord> {
  const DepartmentsRecordDocumentEquality();

  @override
  bool equals(DepartmentsRecord? e1, DepartmentsRecord? e2) {
    return e1?.departmentName == e2?.departmentName &&
        e1?.createdAt == e2?.createdAt &&
        e1?.departmentAcronymn == e2?.departmentAcronymn &&
        e1?.departmentID == e2?.departmentID;
  }

  @override
  int hash(DepartmentsRecord? e) => const ListEquality().hash([
        e?.departmentName,
        e?.createdAt,
        e?.departmentAcronymn,
        e?.departmentID
      ]);

  @override
  bool isValidKey(Object? o) => o is DepartmentsRecord;
}
