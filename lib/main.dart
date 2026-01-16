import 'package:flutter/material.dart';
import 'package:flutter_remote_configuar/src/flutter_remote_configuar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RemoteConfiguar',
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final remoteConfig = RemoteConfig(
      initialConfig: {
        'showAds': true,
        'maxLives': 5,
        'welcomeText': 'Welcome Player!',
      },
    );

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            remoteConfig.getString('welcomeText'),
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
