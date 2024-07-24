import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Image.asset('images/Logo/sk_logo.png', width: 100, height: 100),
            const SizedBox(height: 40),
            const Text(
              'ຍິນດີຕ້ອນຮັບເຂົ້າສູ່ຮ້ານ Sneaker Shop',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Classic kicks for classy individuals',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 300),

            //ປຸ່ມ
            SizedBox(
              width: 290,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(top: 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "signinPage");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
