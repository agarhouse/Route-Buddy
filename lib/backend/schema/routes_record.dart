import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoutesRecord extends FirestoreRecord {
  RoutesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "stops" field.
  List<DocumentReference>? _stops;
  List<DocumentReference> get stops => _stops ?? const [];
  bool hasStops() => _stops != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "startTime" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "endTime" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "optimized" field.
  bool? _optimized;
  bool get optimized => _optimized ?? false;
  bool hasOptimized() => _optimized != null;

  // "companyname" field.
  String? _companyname;
  String get companyname => _companyname ?? '';
  bool hasCompanyname() => _companyname != null;

  // "routedesc" field.
  String? _routedesc;
  String get routedesc => _routedesc ?? '';
  bool hasRoutedesc() => _routedesc != null;

  void _initializeFields() {
    _stops = getDataList(snapshotData['stops']);
    _name = snapshotData['name'] as String?;
    _startTime = snapshotData['startTime'] as DateTime?;
    _endTime = snapshotData['endTime'] as DateTime?;
    _optimized = snapshotData['optimized'] as bool?;
    _companyname = snapshotData['companyname'] as String?;
    _routedesc = snapshotData['routedesc'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('routes');

  static Stream<RoutesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoutesRecord.fromSnapshot(s));

  static Future<RoutesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoutesRecord.fromSnapshot(s));

  static RoutesRecord fromSnapshot(DocumentSnapshot snapshot) => RoutesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoutesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoutesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoutesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoutesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoutesRecordData({
  String? name,
  DateTime? startTime,
  DateTime? endTime,
  bool? optimized,
  String? companyname,
  String? routedesc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'startTime': startTime,
      'endTime': endTime,
      'optimized': optimized,
      'companyname': companyname,
      'routedesc': routedesc,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoutesRecordDocumentEquality implements Equality<RoutesRecord> {
  const RoutesRecordDocumentEquality();

  @override
  bool equals(RoutesRecord? e1, RoutesRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.stops, e2?.stops) &&
        e1?.name == e2?.name &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        e1?.optimized == e2?.optimized &&
        e1?.companyname == e2?.companyname &&
        e1?.routedesc == e2?.routedesc;
  }

  @override
  int hash(RoutesRecord? e) => const ListEquality().hash([
        e?.stops,
        e?.name,
        e?.startTime,
        e?.endTime,
        e?.optimized,
        e?.companyname,
        e?.routedesc
      ]);

  @override
  bool isValidKey(Object? o) => o is RoutesRecord;
}
