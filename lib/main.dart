import 'package:flutter/material.dart';
import 'package:lati_marvel/providers/baseProvider.dart';
import 'package:lati_marvel/providers/darkModeProvider.dart';
import 'package:lati_marvel/providers/moviesProvider.dart';
import 'package:lati_marvel/screens/splashScreen.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  


  runApp(const MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
         ChangeNotifierProvider<BaseProvider>(
            create: (_) => BaseProvider()),
        ChangeNotifierProvider<DarkModeProvider>(
            create: (_) => DarkModeProvider()),
        ChangeNotifierProvider<MoviesProvider>(create: (_) => MoviesProvider()),
        // ChangeNotifierProvider<Auth_Provider>(create: (_)=> Auth_Provider())
      ],
      child:
          Consumer<DarkModeProvider>(builder: (context, darkModeConsumer, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Marvel',
          theme: ThemeData(
            primaryColor: Colors.red,
            scaffoldBackgroundColor:
                darkModeConsumer.isDark ? Colors.black : Colors.white,
            dividerTheme: DividerThemeData(
              color: darkModeConsumer.isDark ? Colors.white : Colors.black,
            ),
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const SplashScreen(),
        );
      }),
    );
  }
}
