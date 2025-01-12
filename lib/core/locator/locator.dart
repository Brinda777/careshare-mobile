import 'package:care_share_nepal/core/service/api_service.dart';
import 'package:get_it/get_it.dart';

final GetIt di = GetIt.instance;

Future<void> initDependencies() async {
  di
    ..registerSingleton(
      ApiService(),
    );

  await di.allReady();
}
