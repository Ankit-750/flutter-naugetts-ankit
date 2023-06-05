// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:nauggets/Screens/SecondScreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwardController = TextEditingController();

  void login(String email, passward) async {
    try {
      Response response = await post(
          Uri.parse("https://reqres.in/api/register"),
          body: {'email': email, 'passward': passward});
      
      if (response.statusCode == 200) {
        print('succesfully');
      } else {
        print('succesfully');
        // ignore: use_build_context_synchronously
        Navigator.push(context, MaterialPageRoute(builder:(context) => const SecondScreen()));
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 50, 187),
      body: Padding(
        padding: const EdgeInsets.only(top: 25, left: 25),
        child: Column(
          children: [
            const Text(
              'Welcome, to sing in continue',
              style: TextStyle(fontSize: 43, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(child: Text('')),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: SizedBox(
                      child: Text(
                    'Sign up',
                    style: TextStyle(color: Colors.white),
                  )),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                width: 500,
                child: TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      label: Text(
                    'Phone number',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                width: 500,
                child: TextFormField(
                  controller: passwardController,
                  decoration: const InputDecoration(
                      label: Text(
                    'Passward',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Center(
                      child: GestureDetector(
                    onTap: () {
                      login(emailController.text.toString(),
                          passwardController.text.toString());
                    },
                    child: Container(
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Text(
                          'Sing up',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 27,
                              color: Color.fromARGB(255, 19, 50, 187)),
                        ),
                      ),
                    ),
                  )),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Forgot your passward?',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
