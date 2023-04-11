import 'package:bank_app/data/progressBarManager/dialog_service.dart';
import 'package:bank_app/data/services/auth_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerLazySingleton(() => ProgressService());
  // locator.registerLazySingleton(() => BookingService());
  locator.registerLazySingleton(() => AuthService());
}
