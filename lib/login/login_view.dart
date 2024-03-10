import 'package:flutter/material.dart';
import 'package:flutter_08/login/login_controller.dart';
import 'package:flutter_08/signup.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: SafeArea(
        child: Form(
          key: controller.formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Container(
                //   padding: const EdgeInsets.all(10.0),
                //   child: Image.asset(ImageAssest.techMasterCard),
                // ),

                // user name
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: controller.user1,
                  obscureText: false,
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: 'Username',
                  ),
                  onChanged: controller.onChangeUserName,
                  validator: controller.validatorUserName,
                ),

                const SizedBox(
                  height: 20,
                ),

                //password
                TextFormField(
                  controller: controller.user2,
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: 'Password',
                  ),
                  onChanged: controller.onChangePassword,
                  validator: controller.validatorPassword,
                ),

                const SizedBox(
                  height: 20,
                ),

                // button login
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(const SignUpPage());
                    },
                    child: const Text(
                      'Sign In',
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
