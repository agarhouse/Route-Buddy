import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StopRecord extends FirestoreRecord {
  StopRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "customerName" field.
  String? _customerName;
  String get customerName => _customerName ?? '';
  bool hasCustomerName() => _customerName != null;

  // "customerPhone" field.
  String? _customerPhone;
  String get customerPhone => _customerPhone ?? '';
  bool hasCustomerPhone() => _customerPhone != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _address = snapshotData['address'] as String?;
    _customerName = snapshotData['customerName'] as String?;
    _customerPhone = snapshotData['customerPhone'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('stop')
          : FirebaseFirestore.instance.collectionGroup('stop');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('stop').doc(id);

  static Stream<StopRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StopRecord.fromSnapshot(s));

  static Future<StopRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StopRecord.fromSnapshot(s));

  static StopRecord fromSnapshot(DocumentSnapshot snapshot) => StopRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StopRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StopRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StopRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StopRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStopRecordData({
  String? id,
  String? address,
  String? customerName,
  String? customerPhone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'address': address,
      'customerName': customerName,
      'customerPhone': customerPhone,
    }.withoutNulls,
  );

  return firestoreData;
}

class StopRecordDocumentEquality implements Equality<StopRecord> {
  const StopRecordDocumentEquality();

  @override
  bool equals(StopRecord? e1, StopRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.address == e2?.address &&
        e1?.customerName == e2?.customerName &&
        e1?.customerPhone == e2?.customerPhone;
  }

  @override
  int hash(StopRecord? e) => const ListEquality()
      .hash([e?.id, e?.address, e?.customerName, e?.customerPhone]);

  @override
  bool isValidKey(Object? o) => o is StopRecord;
}
