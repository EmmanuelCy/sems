import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsRecord extends FirestoreRecord {
  EventsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "event_name" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  bool hasEventName() => _eventName != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "event_status" field.
  String? _eventStatus;
  String get eventStatus => _eventStatus ?? '';
  bool hasEventStatus() => _eventStatus != null;

  // "event_desc" field.
  String? _eventDesc;
  String get eventDesc => _eventDesc ?? '';
  bool hasEventDesc() => _eventDesc != null;

  // "event_start" field.
  DateTime? _eventStart;
  DateTime? get eventStart => _eventStart;
  bool hasEventStart() => _eventStart != null;

  // "event_end" field.
  DateTime? _eventEnd;
  DateTime? get eventEnd => _eventEnd;
  bool hasEventEnd() => _eventEnd != null;

  // "currentAttendanceCount" field.
  int? _currentAttendanceCount;
  int get currentAttendanceCount => _currentAttendanceCount ?? 0;
  bool hasCurrentAttendanceCount() => _currentAttendanceCount != null;

  // "eventID" field.
  String? _eventID;
  String get eventID => _eventID ?? '';
  bool hasEventID() => _eventID != null;

  void _initializeFields() {
    _eventName = snapshotData['event_name'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _eventStatus = snapshotData['event_status'] as String?;
    _eventDesc = snapshotData['event_desc'] as String?;
    _eventStart = snapshotData['event_start'] as DateTime?;
    _eventEnd = snapshotData['event_end'] as DateTime?;
    _currentAttendanceCount =
        castToType<int>(snapshotData['currentAttendanceCount']);
    _eventID = snapshotData['eventID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsRecord.fromSnapshot(s));

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventsRecord.fromSnapshot(s));

  static EventsRecord fromSnapshot(DocumentSnapshot snapshot) => EventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventsRecordData({
  String? eventName,
  DateTime? createdAt,
  String? eventStatus,
  String? eventDesc,
  DateTime? eventStart,
  DateTime? eventEnd,
  int? currentAttendanceCount,
  String? eventID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'event_name': eventName,
      'created_at': createdAt,
      'event_status': eventStatus,
      'event_desc': eventDesc,
      'event_start': eventStart,
      'event_end': eventEnd,
      'currentAttendanceCount': currentAttendanceCount,
      'eventID': eventID,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventsRecordDocumentEquality implements Equality<EventsRecord> {
  const EventsRecordDocumentEquality();

  @override
  bool equals(EventsRecord? e1, EventsRecord? e2) {
    return e1?.eventName == e2?.eventName &&
        e1?.createdAt == e2?.createdAt &&
        e1?.eventStatus == e2?.eventStatus &&
        e1?.eventDesc == e2?.eventDesc &&
        e1?.eventStart == e2?.eventStart &&
        e1?.eventEnd == e2?.eventEnd &&
        e1?.currentAttendanceCount == e2?.currentAttendanceCount &&
        e1?.eventID == e2?.eventID;
  }

  @override
  int hash(EventsRecord? e) => const ListEquality().hash([
        e?.eventName,
        e?.createdAt,
        e?.eventStatus,
        e?.eventDesc,
        e?.eventStart,
        e?.eventEnd,
        e?.currentAttendanceCount,
        e?.eventID
      ]);

  @override
  bool isValidKey(Object? o) => o is EventsRecord;
}
