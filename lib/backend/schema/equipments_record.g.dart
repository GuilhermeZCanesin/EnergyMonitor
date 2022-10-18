// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipments_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EquipmentsRecord> _$equipmentsRecordSerializer =
    new _$EquipmentsRecordSerializer();

class _$EquipmentsRecordSerializer
    implements StructuredSerializer<EquipmentsRecord> {
  @override
  final Iterable<Type> types = const [EquipmentsRecord, _$EquipmentsRecord];
  @override
  final String wireName = 'EquipmentsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EquipmentsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.specifications;
    if (value != null) {
      result
        ..add('specifications')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.modifiedAt;
    if (value != null) {
      result
        ..add('modified_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.owner;
    if (value != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.place;
    if (value != null) {
      result
        ..add('place')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mac;
    if (value != null) {
      result
        ..add('mac')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.consumptionRT;
    if (value != null) {
      result
        ..add('consumptionRT')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.consumption;
    if (value != null) {
      result
        ..add('consumption')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  EquipmentsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EquipmentsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'specifications':
          result.specifications = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'modified_at':
          result.modifiedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'owner':
          result.owner = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'place':
          result.place = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mac':
          result.mac = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'consumptionRT':
          result.consumptionRT = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'consumption':
          result.consumption.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(double)]))!
              as BuiltList<Object?>);
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$EquipmentsRecord extends EquipmentsRecord {
  @override
  final String? name;
  @override
  final String? specifications;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? modifiedAt;
  @override
  final DocumentReference<Object?>? owner;
  @override
  final String? place;
  @override
  final String? mac;
  @override
  final double? consumptionRT;
  @override
  final BuiltList<double>? consumption;
  @override
  final bool? state;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EquipmentsRecord(
          [void Function(EquipmentsRecordBuilder)? updates]) =>
      (new EquipmentsRecordBuilder()..update(updates))._build();

  _$EquipmentsRecord._(
      {this.name,
      this.specifications,
      this.createdAt,
      this.modifiedAt,
      this.owner,
      this.place,
      this.mac,
      this.consumptionRT,
      this.consumption,
      this.state,
      this.ffRef})
      : super._();

  @override
  EquipmentsRecord rebuild(void Function(EquipmentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EquipmentsRecordBuilder toBuilder() =>
      new EquipmentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EquipmentsRecord &&
        name == other.name &&
        specifications == other.specifications &&
        createdAt == other.createdAt &&
        modifiedAt == other.modifiedAt &&
        owner == other.owner &&
        place == other.place &&
        mac == other.mac &&
        consumptionRT == other.consumptionRT &&
        consumption == other.consumption &&
        state == other.state &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, name.hashCode),
                                            specifications.hashCode),
                                        createdAt.hashCode),
                                    modifiedAt.hashCode),
                                owner.hashCode),
                            place.hashCode),
                        mac.hashCode),
                    consumptionRT.hashCode),
                consumption.hashCode),
            state.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EquipmentsRecord')
          ..add('name', name)
          ..add('specifications', specifications)
          ..add('createdAt', createdAt)
          ..add('modifiedAt', modifiedAt)
          ..add('owner', owner)
          ..add('place', place)
          ..add('mac', mac)
          ..add('consumptionRT', consumptionRT)
          ..add('consumption', consumption)
          ..add('state', state)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EquipmentsRecordBuilder
    implements Builder<EquipmentsRecord, EquipmentsRecordBuilder> {
  _$EquipmentsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _specifications;
  String? get specifications => _$this._specifications;
  set specifications(String? specifications) =>
      _$this._specifications = specifications;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _$this._modifiedAt;
  set modifiedAt(DateTime? modifiedAt) => _$this._modifiedAt = modifiedAt;

  DocumentReference<Object?>? _owner;
  DocumentReference<Object?>? get owner => _$this._owner;
  set owner(DocumentReference<Object?>? owner) => _$this._owner = owner;

  String? _place;
  String? get place => _$this._place;
  set place(String? place) => _$this._place = place;

  String? _mac;
  String? get mac => _$this._mac;
  set mac(String? mac) => _$this._mac = mac;

  double? _consumptionRT;
  double? get consumptionRT => _$this._consumptionRT;
  set consumptionRT(double? consumptionRT) =>
      _$this._consumptionRT = consumptionRT;

  ListBuilder<double>? _consumption;
  ListBuilder<double> get consumption =>
      _$this._consumption ??= new ListBuilder<double>();
  set consumption(ListBuilder<double>? consumption) =>
      _$this._consumption = consumption;

  bool? _state;
  bool? get state => _$this._state;
  set state(bool? state) => _$this._state = state;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EquipmentsRecordBuilder() {
    EquipmentsRecord._initializeBuilder(this);
  }

  EquipmentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _specifications = $v.specifications;
      _createdAt = $v.createdAt;
      _modifiedAt = $v.modifiedAt;
      _owner = $v.owner;
      _place = $v.place;
      _mac = $v.mac;
      _consumptionRT = $v.consumptionRT;
      _consumption = $v.consumption?.toBuilder();
      _state = $v.state;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EquipmentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EquipmentsRecord;
  }

  @override
  void update(void Function(EquipmentsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EquipmentsRecord build() => _build();

  _$EquipmentsRecord _build() {
    _$EquipmentsRecord _$result;
    try {
      _$result = _$v ??
          new _$EquipmentsRecord._(
              name: name,
              specifications: specifications,
              createdAt: createdAt,
              modifiedAt: modifiedAt,
              owner: owner,
              place: place,
              mac: mac,
              consumptionRT: consumptionRT,
              consumption: _consumption?.build(),
              state: state,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'consumption';
        _consumption?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EquipmentsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
