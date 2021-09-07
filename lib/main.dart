import 'package:ringer/material.dart';
import 'package:ringer/screens/welcome_screen.dart';
import 'package:ringer/screens/login_screen.dart';
import 'package:ringer/screens/registration_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:  false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black54),
        ),
      ),
      // initialRoute: 'welcome_screen' ,
      // routes: {
      //   'welcome_screen': (context)=> WelcomeScreen(),
      //   'welcome_screen': (context)=> WelcomeScreen(),
      //   'welcome_screen': (context)=> WelcomeScreen(),
      //
      // },
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context)=> WelcomeScreen(),
        RegistrationScreen.id: (context)=> RegistrationScreen(),
        LoginScreen.id: (context)=> LoginScreen(),
        ChatScreen.id: (context)=> ChatScreen(),
      },
    );
  }
}
