// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emergency_card_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmergencyCardDataModelImpl _$$EmergencyCardDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EmergencyCardDataModelImpl(
      id: json['id'] as String,
      location: json['location'] as String,
      attendees: (json['attendees'] as num).toInt(),
      disaster: json['disaster'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      impact: json['impact'] as String,
      image: json['image'] as String,
      funds: (json['funds'] as num).toInt(),
    );

Map<String, dynamic> _$$EmergencyCardDataModelImplToJson(
        _$EmergencyCardDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location': instance.location,
      'attendees': instance.attendees,
      'disaster': instance.disaster,
      'title': instance.title,
      'description': instance.description,
      'impact': instance.impact,
      'image': instance.image,
      'funds': instance.funds,
    };
