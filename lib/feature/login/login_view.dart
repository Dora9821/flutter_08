import 'package:flutter/material.dart';
import 'package:flutter_08/feature/login/login_controller.dart';
import 'package:flutter_08/home/home_arguments.dart';
import 'package:flutter_08/router/router.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, required this.title});
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
                Obx(
                  () => TextFormField(
                    controller: controller.user2,
                    obscureText: !controller.showPassword.value,
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
                      suffixIcon: GestureDetector(
                        onTap: controller.showHidePassword,
                        child: Icon(controller.showPassword.value
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                    ),
                    onChanged: controller.onChangePassword,
                    validator: controller.validatorPassword,
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                // button login
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(
                        AppRouterNamed.homepage,
                        arguments: HomeArguements(
                          username: controller.user1.text,
                          password: controller.user2.text,
                        ),
                      );
                    },
                    child: const Text(
                      'Sign In',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(AppRouterNamed.signUp);
                    },
                    child: const Text(
                      'Sign Up',
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
