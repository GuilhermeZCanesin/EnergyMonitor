import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'equipments_record.g.dart';

abstract class EquipmentsRecord
    implements Built<EquipmentsRecord, EquipmentsRecordBuilder> {
  static Serializer<EquipmentsRecord> get serializer =>
      _$equipmentsRecordSerializer;

  String? get name;

  String? get specifications;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'modified_at')
  DateTime? get modifiedAt;

  DocumentReference? get owner;

  String? get place;

  String? get mac;

  double? get consumptionRT;

  BuiltList<double>? get consumption;

  bool? get state;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EquipmentsRecordBuilder builder) => builder
    ..name = ''
    ..specifications = ''
    ..place = ''
    ..mac = ''
    ..consumptionRT = 0.0
    ..consumption = ListBuilder()
    ..state = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('equipments');

  static Stream<EquipmentsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EquipmentsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EquipmentsRecord._();
  factory EquipmentsRecord([void Function(EquipmentsRecordBuilder) updates]) =
      _$EquipmentsRecord;

  static EquipmentsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEquipmentsRecordData({
  String? name,
  String? specifications,
  DateTime? createdAt,
  DateTime? modifiedAt,
  DocumentReference? owner,
  String? place,
  String? mac,
  double? consumptionRT,
  bool? state,
}) {
  final firestoreData = serializers.toFirestore(
    EquipmentsRecord.serializer,
    EquipmentsRecord(
      (e) => e
        ..name = name
        ..specifications = specifications
        ..createdAt = createdAt
        ..modifiedAt = modifiedAt
        ..owner = owner
        ..place = place
        ..mac = mac
        ..consumptionRT = consumptionRT
        ..consumption = null
        ..state = state,
    ),
  );

  return firestoreData;
}
