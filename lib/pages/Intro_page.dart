import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child:
                    Image.asset('lib/assets/images/nike.png',
                    height: 240,),
                ),

                const SizedBox(height: 48,),

                const Text(
                  'Just Do It',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),

                const SizedBox(height: 25,),

                const Text(
                  'Brand New Sneakers & Custom Kicks Made With Premium Quality',
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 48,),

                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage(),
                      ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                       color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12) 
                    ),
                    padding: const EdgeInsets.all(25),
                    child: Center(
                      child: const Text("Shop Now",
                        style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
