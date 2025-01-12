import 'package:care_share_nepal/app/app.dart';
import 'package:care_share_nepal/bootstrap.dart';
import 'package:care_share_nepal/start_up.dart';

void main() async {
  await startUp();
  bootstrap(() => const App());
}
