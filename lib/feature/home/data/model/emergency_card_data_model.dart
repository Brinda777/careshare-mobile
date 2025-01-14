import 'package:freezed_annotation/freezed_annotation.dart';

part 'emergency_card_data_model.freezed.dart';
part 'emergency_card_data_model.g.dart';

@freezed
class EmergencyCardDataModel with _$EmergencyCardDataModel {
  const factory EmergencyCardDataModel(
      {required String id,
      required String location,
      required int attendees,
      required String disaster,
      required String title,
      required String description,
      required String impact,
      required String image,
      required int funds}) = _EmergencyCardDataModel;

  factory EmergencyCardDataModel.fromJson(Map<String, dynamic> json) =>
      _$EmergencyCardDataModelFromJson(json);
}
