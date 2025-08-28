import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF29B2DD), // 0%
                Color(0xFF33AADD), // 47%
                Color(0xFF2DC8EA), // 100%
              ],
              stops: [0.0, 0.47, 1.0],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),

          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(44.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.white, size: 27),
                      const SizedBox(width: 12),
                      Text(
                        'Almaty',
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                        size: 27,
                      ),
                      const Spacer(),
                      Icon(Icons.notifications, color: Colors.white, size: 27),
                    ],
                  ),
                  Image.asset(
                    'assets/sun.png',
                    width: 284,
                    height: 187,
                    alignment: Alignment.center,
                  ),
                  Text(
                    '30º',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 64,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Precipitations',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Max.: 34º',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'Min.: 28º',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
