import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemsRecord extends FirestoreRecord {
  ItemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "itemPrice" field.
  double? _itemPrice;
  double get itemPrice => _itemPrice ?? 0.0;
  bool hasItemPrice() => _itemPrice != null;

  // "itemImg" field.
  String? _itemImg;
  String get itemImg => _itemImg ?? '';
  bool hasItemImg() => _itemImg != null;

  // "itemOwner" field.
  String? _itemOwner;
  String get itemOwner => _itemOwner ?? '';
  bool hasItemOwner() => _itemOwner != null;

  // "itemDesc" field.
  String? _itemDesc;
  String get itemDesc => _itemDesc ?? '';
  bool hasItemDesc() => _itemDesc != null;

  // "condition" field.
  String? _condition;
  String get condition => _condition ?? '';
  bool hasCondition() => _condition != null;

  void _initializeFields() {
    _itemPrice = castToType<double>(snapshotData['itemPrice']);
    _itemImg = snapshotData['itemImg'] as String?;
    _itemOwner = snapshotData['itemOwner'] as String?;
    _itemDesc = snapshotData['itemDesc'] as String?;
    _condition = snapshotData['condition'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('items');

  static Stream<ItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItemsRecord.fromSnapshot(s));

  static Future<ItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItemsRecord.fromSnapshot(s));

  static ItemsRecord fromSnapshot(DocumentSnapshot snapshot) => ItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItemsRecordData({
  double? itemPrice,
  String? itemImg,
  String? itemOwner,
  String? itemDesc,
  String? condition,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'itemPrice': itemPrice,
      'itemImg': itemImg,
      'itemOwner': itemOwner,
      'itemDesc': itemDesc,
      'condition': condition,
    }.withoutNulls,
  );

  return firestoreData;
}

class ItemsRecordDocumentEquality implements Equality<ItemsRecord> {
  const ItemsRecordDocumentEquality();

  @override
  bool equals(ItemsRecord? e1, ItemsRecord? e2) {
    return e1?.itemPrice == e2?.itemPrice &&
        e1?.itemImg == e2?.itemImg &&
        e1?.itemOwner == e2?.itemOwner &&
        e1?.itemDesc == e2?.itemDesc &&
        e1?.condition == e2?.condition;
  }

  @override
  int hash(ItemsRecord? e) => const ListEquality().hash(
      [e?.itemPrice, e?.itemImg, e?.itemOwner, e?.itemDesc, e?.condition]);

  @override
  bool isValidKey(Object? o) => o is ItemsRecord;
}
