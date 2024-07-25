import 'package:flutter/material.dart';
import 'package:lask_app/features/welcome_home/screens/home.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      // Background Color & Image
      Container(
          height: double.maxFinite,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.indigo, Colors.white70]),
              image: DecorationImage(
                  image: AssetImage('assets/images/splash.png'),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.contain))),
      // Overlayer Box
      Container(
          height: double.infinity,
          width: double.infinity,
          margin: const EdgeInsets.only(top: 500),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //  Bold Title
                    const Text('Get The Latest News \n And Updates',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 32)),
                    // Description
                    const Text(
                        'From Politics to Entertainment: Your One-Stop Source for Comprehensive Coverage of the Latest News and Developments Across the Glob will be right on your hand.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                            color: Colors.grey)),
                    // Explore Button
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            maximumSize: const Size(150, 50)),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Explore',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                              Spacer(),
                              Icon(Icons.arrow_forward_rounded,
                                  color: Colors.white)
                            ]))
                  ])))
    ]));
  }
}
