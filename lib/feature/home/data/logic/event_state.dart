part of 'event_cubit.dart';

extension Validator on EventState {}

@freezed
class EventState with _$EventState {
  const factory EventState({
    @Default('') String error,
    @Default(false) bool isLoading,
    @Default([]) List<EmergencyCardDataModel> events,
  }) = _EventState;
}
