import 'package:flutter/material.dart';
import 'package:gallery/screens/login_screen/login.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isContainerVisible = false;


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
          Scaffold(
            backgroundColor: Colors.transparent,
            body: ClipPath(
              //clipper: CurvedEdge(),
              child: Container(
                width:double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 60.0,
                            left: 30.0,
                          ),
                          child: Text(
                            'Welcome\nMina',
                            maxLines: 2,
                            style: TextStyle(
                              color: Colors.grey[700]!,
                              fontSize: 40.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.only(
                            right: 30.0,
                            top: 30.0,
                          ),
                          child: CircleAvatar(
                            radius: 35.0,
                            backgroundImage: AssetImage("images/face.jpg"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Container(
                            height: 40.0,
                            width: 150.0,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LoginScreen(),
                                  ),
                                );
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: 35.0,
                                    height: 30,
                                    decoration: const BoxDecoration(
                                      color: Colors.redAccent,
                                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                    ),
                                    child: const Icon(
                                      Icons.arrow_back_outlined,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'log out',
                                    style: TextStyle(
                                      color: Colors.grey[600]!,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w700
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: Container(
                            height: 40.0,
                            width: 150.0,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: MaterialButton(
                              onPressed: () {
                                setState(() {
                                  isContainerVisible = true;
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: 35.0,
                                    height: 30,
                                    decoration: const BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                    ),
                                    child: const Icon(
                                      Icons.arrow_upward_outlined,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'upload',
                                    style: TextStyle(
                                      color: Colors.grey[600]!,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w700
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GridView(
                          scrollDirection: Axis.vertical,
                          physics: const AlwaysScrollableScrollPhysics(),
                          reverse: false,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 15.0,
                            mainAxisSpacing: 15.0,
                            childAspectRatio: 1/1,
                          ),
                          children: List.generate(
                            30,
                            (index) => Container(
                              height: 100.0,
                              decoration:  BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('images/picture.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Visibility(
            visible: isContainerVisible,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                height: 300.0,
                width: 330.0,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 70.0,
                      ),
                      child: Container(
                        width: 200.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[200]!,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: MaterialButton(
                          onPressed: () {
                          },
                          child: Text(
                            'Gellary',
                            style: TextStyle(
                              color: Colors.grey[700]!,
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 70.0,
                      ),
                      child: Container(
                        width: 200.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue[100]!,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: MaterialButton(
                          onPressed: () {

                          },
                          child: Text(
                            'Camera',
                            style: TextStyle(
                              color: Colors.grey[700]!,
                              fontSize: 30.0,
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
          ),
        ],
      );
  }
}

//
// class CurvedEdge extends CustomClipper<Path>{
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//
//
//     return path;
//
//   }
//
//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return true;
//   }
//
// }