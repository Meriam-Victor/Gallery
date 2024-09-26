import 'package:flutter/material.dart';
import 'package:gallery/screens/home_screen/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.centerLeft,
              colors: [
                Colors.deepPurple[500]!.withOpacity(0.9),
                Colors.white.withOpacity(0.8),
              ],
              //stops: [0.0, 1.0],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.center,
              colors: [
                Colors.white.withOpacity(0.9),
                Colors.deepPurple[300]!.withOpacity(0.3),
              ],
              stops: const [0.2, 1.0],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.center,
              colors: [
                const Color(0x00ff4dd2).withOpacity(0.5),
                Colors.white.withOpacity(0.1),
              ],
              stops: const [0.2, 1.0],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [
                Colors.white.withOpacity(0.9),
                Colors.white.withOpacity(0.1),
              ],
            ),
          ),
        ),
        CustomPaint(
          painter: CurvedPainter(),
          child: Container(),
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 20.0,
          ),
          child: Image(
            alignment: Alignment.topLeft,
            height: 300.0,
            width: 300.0,
            image: AssetImage('images/camera.png'),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100.0,
              ),
              Text(
                'My\nGallery',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Colors.grey[800]!,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.20),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Text(
                          'Log in',
                          style: TextStyle(
                            color: Colors.grey[900]!,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        SizedBox(
                          height: 50.0,
                          width: 300.0,
                          child: TextField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              hintText: 'User Name',
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.5),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        SizedBox(
                          height: 50.0,
                          width: 300.0,
                          child: TextField(
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.5),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                        height: 40,
                        ),
                        Container(
                          height: 50.0,
                          width: 300.0,
                          decoration: BoxDecoration(
                            color: Colors.blue[400]!,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ),
                                );
                              },
                            child: const Text(
                              'Submit',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ]
                    ),
                  ),
                ),
              ),
            ]
          ),
        )
      ],
    );
  }
}

class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    Path path = Path();


    path.moveTo(size.width*0.1, 0);
    path.quadraticBezierTo(
        size.width*-0.1,
        size.height*0.1,
        size.width*0.1,
        size.height*0.12
    );
    path.conicTo(
        size.width*0.23,
        size.height*0.13,
        size.width*0.15,
        size.height*0.18,
      0.3
    );
    path.conicTo(
        size.width*0,
        size.height*0.5,
        size.width*0.28,
        size.height*0.25,
        0.09
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}