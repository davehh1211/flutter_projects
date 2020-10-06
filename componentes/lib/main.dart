import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// import 'package:componentes/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Componentes App',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          // ... app-specific localization delegate[s] here
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', 'US'), // English, no country code
          const Locale('es', 'ES'), // Hebrew, no country code
          // const Locale.fromSubtags(
          //     languageCode: 'zh'), // Chinese *See Advanced Locales below*
          // // ... other locales the app supports
        ],
        theme: ThemeData(primaryColor: Color(0xFF00DBB3)),
        // home: HomePage(),
        initialRoute: '/',
        routes: getAppRoute(),
        onGenerateRoute: (RouteSettings settings) {
          print('Ruta: ${settings.name}');

          return MaterialPageRoute(
              builder: (BuildContext context) => AlertPage());
        });
  }
}
