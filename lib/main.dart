import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice_1/archive.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarContrastEnforced: false,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
    ),
  );

  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.edgeToEdge,
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarDividerColor: Colors.transparent,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const Splash(),
      ),
    );
  }
}

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff12AA73),
              Color(0xff135B46),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
          child: SafeArea(
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: Image(
                        width: 97.0,
                        height: 19.78,
                        image: AssetImage("assets/smartr-logo.png"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 52.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image(
                          width: 200.0,
                          height: 211.0,
                          fit: BoxFit.contain,
                          image: AssetImage("assets/man.png"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Text(
                        "Fresh look, same login.",
                        style: TextStyle(
                          color: Color(0xffF4F4F4),
                          fontFamily: "Poppins",
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        SizedBox(height: 0.0,),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30.0),
                          child: Row(
                            children: [
                              SizedBox(width: 70.0,),
                              Image(
                                image: AssetImage("assets/switch.png"),
                                width: 34,
                                height: 24,
                              ),
                              SizedBox(width: 11.0),
                              Expanded(
                                child: Text(
                                  "SmartRecruiters candidate portal is now Smartr.",
                                  style: TextStyle(
                                    color: Color(0xffF4F4F4),
                                    fontFamily: "Poppins",
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(width: 100,),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(bottom: 30.0),
                          child: Row(
                            children: [
                              SizedBox(width: 70.0,),
                              Image(
                                image: AssetImage("assets/log-in.png"),
                                width: 34.0,
                                height: 24.0,
                              ),
                              SizedBox(width: 11.0,),
                              Expanded(
                                child: Text(
                                  "Enter the same login info used for your SmartrProfile",
                                  style: TextStyle(
                                    color: Color(0xffF4F4F4),
                                    fontFamily: "Poppins",
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(width: 80.0,)
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(bottom: 30.0),
                          child: Row(
                            children: [
                              SizedBox(width: 70.0,),
                              Image(
                                image: AssetImage("assets/refresh.png"),
                                width: 34.0,
                                height: 24.0,
                              ),
                              SizedBox(width: 11.0,),
                              Expanded(
                                child: Text(
                                  "If login details were saved, you may need to re-save.",
                                  style: TextStyle(
                                    color: Color(0xffF4F4F4),
                                    fontFamily: "Poppins",
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(width: 90.0,)
                            ],
                          ),
                        ),


                        SizedBox(height: 10.0,),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "Why Smartr? Read here",
                            style: TextStyle(
                              color: Color(0xffF4F4F4),
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              fontSize: 10.0,
                            ),
                          ),  
                        ),

                        SizedBox(
                          width: 274.0,
                          height: 42,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.25),
                                  offset: Offset(0, 4),
                                  blurRadius: 24,
                                ),
                              ],
                            ),
                          
                            child: ElevatedButton(
                              onPressed: () {
                              print("Button pressed!");
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Archive(),
                                ),
                              );
                            },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffBFDBD1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: Text(
                                "GET STARTED",
                                style: TextStyle(
                                  color: Color(0xff135B46),
                                  fontFamily: "Poppins",
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
          ),
        ),
      ),
    );
  }
}