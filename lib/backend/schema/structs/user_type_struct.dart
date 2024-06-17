// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserTypeStruct extends BaseStruct {
  UserTypeStruct({
    String? patient,
    String? expert,
  })  : _patient = patient,
        _expert = expert;

  // "Patient" field.
  String? _patient;
  String get patient => _patient ?? '1';
  set patient(String? val) => _patient = val;

  bool hasPatient() => _patient != null;

  // "Expert" field.
  String? _expert;
  String get expert => _expert ?? '2';
  set expert(String? val) => _expert = val;

  bool hasExpert() => _expert != null;

  static UserTypeStruct fromMap(Map<String, dynamic> data) => UserTypeStruct(
        patient: data['Patient'] as String?,
        expert: data['Expert'] as String?,
      );

  static UserTypeStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserTypeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Patient': _patient,
        'Expert': _expert,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Patient': serializeParam(
          _patient,
          ParamType.String,
        ),
        'Expert': serializeParam(
          _expert,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserTypeStruct(
        patient: deserializeParam(
          data['Patient'],
          ParamType.String,
          false,
        ),
        expert: deserializeParam(
          data['Expert'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserTypeStruct &&
        patient == other.patient &&
        expert == other.expert;
  }

  @override
  int get hashCode => const ListEquality().hash([patient, expert]);
}

UserTypeStruct createUserTypeStruct({
  String? patient,
  String? expert,
}) =>
    UserTypeStruct(
      patient: patient,
      expert: expert,
    );
