import 'package:care_share_nepal/core/locator/locator.dart';
import 'package:care_share_nepal/core/service/api_service.dart';
import 'package:care_share_nepal/feature/home/data/model/emergency_card_data_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_cubit.freezed.dart';
part 'event_state.dart';

// flutter pub run build_runner build --delete-conflicting-outputs

class EventCubit extends Cubit<EventState> {
  EventCubit()
      : super(EventState(events: const [], isLoading: false, error: ''));

  final ApiService _apiService = di<ApiService>();

  Future<void> fetchEvents() async {
    try {
      emit(state.copyWith(isLoading: true, error: ''));

      final events = await _apiService.get<List<EmergencyCardDataModel>>(
        endpoint: 'event', // Base URL already includes /objects
        parseResponse: (data) {
          if (data['data'] is List) {
            return (data['data'] as List)
                .map((item) => EmergencyCardDataModel.fromJson(
                    item as Map<String, dynamic>))
                .toList();
          }
          throw ApiException(message: 'Invalid response format');
        },
      );

      print('Fetched events: $events');

      emit(state.copyWith(events: events, isLoading: false));
    } on ApiException catch (e) {
      emit(state.copyWith(error: e.message, isLoading: false));
    } catch (e) {
      emit(state.copyWith(
          error: 'An unexpected error occurred', isLoading: false));
    }
  }
}
