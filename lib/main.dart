import 'package:facebook_clone_darkmode/Screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:facebook_clone_darkmode/DarkModeTheme/themeprovider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory =
      await pathProvider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  final setting = await Hive.openBox('settings');
  bool isLightTheme = setting.get('isLightTheme') ?? true;
  print(isLightTheme);
  runApp(ChangeNotifierProvider(
    create: (_) => ThemeProvider(isLightTheme: isLightTheme),
    child: AppStart(),
  ));
}

// to ensure we have the themeProvider before the app starts
class AppStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return MyApp(themeProvider: themeProvider);
  }
}

class MyApp extends StatelessWidget {
  final ThemeProvider themeProvider;

  const MyApp({Key key, this.themeProvider}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook Clone',
      theme: themeProvider.themeData(),
      home: HomeScreen(),
    );
  }
}
