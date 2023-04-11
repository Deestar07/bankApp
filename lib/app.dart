import 'package:bank_app/presentation/screens/auth/auth_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class App {

  static List<SingleChildWidget> notifierProviders = [
    // ChangeNotifierProvider(create: (context) => AppStateProvider()),
    ChangeNotifierProvider(create: (context) => AuthViewModel()),
  ];
}

