import 'nav bar/nav_bar.dart';
import 'oldFiles/storage_utility.dart';
import 'widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';


void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // Keep splash visible
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Future.delayed(const Duration(seconds: 2), () {
    FlutterNativeSplash.remove();
  });
  await BLocalStorage.init("favourites");
  runApp(const MyApp());

}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
          displayColor:  Color(0xFF393939),
        ),
      ),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Bitmap.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height *.01,),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  children: const [
                    TextSpan(text: "Read ",style: TextStyle(fontSize: 80)),
                    TextSpan(
                      text: "&\n",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 115,
                        color: Colors.red,
                      ),
                    ),
                    TextSpan(text: "Lead",style: TextStyle(fontSize: 80)),
                  ],
                ),
              ),
              const SizedBox(height: 100),
              SizedBox(
                width: MediaQuery.of(context).size.width * .65,
                child: RoundedButton(
                  text: "Start Reading",
                  fontSize: 22,
                  press: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  NavigationMenu(),
                      ),
                    );
                  },
                ),
              ),
              const Spacer(flex: 2), // leaves space at bottom
            ],
          ),
        ),
      ),
    );
  }
}
