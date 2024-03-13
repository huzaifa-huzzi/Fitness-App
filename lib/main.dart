import 'package:dart_fitness_app/Provider/SignupProvider.dart';
import 'package:dart_fitness_app/utils/Routes/RoutesInitializing.dart';
import 'package:dart_fitness_app/utils/Routes/Routes_Name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main()async {
 WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
       providers: [
         ChangeNotifierProvider(create: (_) => SignupProvider())
       ],
      child:MaterialApp(
        title: 'Live Location Tracking App',
        theme: ThemeData(
          useMaterial3: true,

// Define the default brightness and colors.
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
// ···
            brightness: Brightness.dark,
          ),

          textTheme: TextTheme(
              displayLarge: const TextStyle(
                fontSize: 72,
                fontWeight: FontWeight.bold,
              ),
// ···
              titleLarge: GoogleFonts.poppins(
                fontSize: 50,
                fontStyle: FontStyle.italic,
                color:Colors.white,
              ),
              bodyMedium: GoogleFonts.poppins(
                  color:Colors.white,
                  fontSize:22,
                  fontStyle:FontStyle.normal
              ),
              displaySmall: GoogleFonts.poppins(
                fontSize:22,
                color:Colors.grey,
              ),
              displayMedium: GoogleFonts.poppins(
                  fontSize:30,
                  color:Colors.white,
                  fontStyle:FontStyle.italic
              )
          ),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        initialRoute: RouteName.splashscreen,
        onGenerateRoute: Routes.generateRoute,
      ) ,
    );
  }
}

