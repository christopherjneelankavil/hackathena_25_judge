import 'package:flutter/material.dart';
import 'package:hackathena_25/models/font_helper.dart';

class LoginPage extends StatelessWidget {
  final idController = TextEditingController();
  final passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 30),

              Image.asset('lib/assets/images/app_bar_logo.png'),

              const SizedBox(height: 70),

              Align(
                alignment: Alignment.center,
                child: Image.asset('lib/assets/images/squid_game_icons.png'),
              ),
              const SizedBox(height: 40),
              // Using FontHelper for the welcome text

              FontHelper.customFont(
                  'HELLO JUDGE 👋', 32, FontWeight.w600, Colors.black),

              FontHelper.customFont(
                'Welcome to the HackAthena official judging app',
                15,
                FontWeight.w300,
                Colors.black,
              ),
              const SizedBox(height: 35),

              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: getTextField(
                  controller: idController,
                  labelText: 'Judge Id',
                  hintText: 'Enter Judge Id',
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: getTextField(
                  controller: passwordController,
                  labelText: 'Password',
                  hintText: 'Enter Password',
                  isPassword: true, // Enable password obscuring
                ),
              ),

              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.red),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      padding: WidgetStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 15),
                      ),
                    ),
                    onPressed: () {
                      // TODO Implement Login
                    },
                    child: FontHelper.customFont(
                        'Login', 24, FontWeight.w600, Colors.white),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side:
                              const BorderSide(color: Colors.black, width: 1.5),
                        ),
                      ),
                      padding: WidgetStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 15),
                      ),
                    ),
                    onPressed: () {
                      // TODO Implement Contact
                    },
                    child: FontHelper.customFont(
                        'Contact', 24, FontWeight.w600, Colors.red),
                  ),
                ],
              ),
              SizedBox(height: 40),

              Align(
                alignment: Alignment.center,
                child: Image.asset('lib/assets/images/squid_game.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget getTextField({
  required TextEditingController controller,
  required String labelText,
  required String hintText,
  bool isPassword = false, // Optional for password fields
}) {
  return TextField(
    controller: controller,
    obscureText: isPassword, // Obscure text if it's a password field
    decoration: InputDecoration(
      labelStyle: const TextStyle(color: Colors.black),
      labelText: labelText,
      hintText: hintText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          color: Colors.black, // Black border
          width: 1.5, // Bold border
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          color: Colors.black, // Black border when not focused
          width: 1.5, // Bold border
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          color: Colors.black, // Black border when focused
          width: 2.0, // Even bolder when focused
        ),
      ),
    ),
  );
}
