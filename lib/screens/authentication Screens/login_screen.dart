import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lati_marvel/widgets/clickables/MainButton.dart';
import 'package:lati_marvel/widgets/customeTextFormFiled.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset("./assets/marvelLogo.png"),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  CustomeTextFormFiled(
                    label: "Email",
                    textEditingController: emailController,
                    validate: (v) {
                      if (v!.isEmpty) {
                        return "Email Cannot Be Empty.";
                      }

                      if (!v.contains("@") || !v.contains(".")) {
                        return "Please Enter Valid Email.";
                      }

                      return null;
                    },
                    hint: "Email",
                  )
                  // TextFormField(
                  //   validator: (v) {
                  //     if (v!.isEmpty) {
                  //       return "Email Cannot Be Empty.";
                  //     }

                  //     if (!v.contains("@") || !v.contains(".")) {
                  //       return "Please Enter Valid Email.";
                  //     }

                  //     return null;
                  //   },
                  //   controller: emailController,
                  //   decoration: InputDecoration(
                  //       hintText: "Email",
                  //       labelText: "Email",
                  //       border: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(12))),
                  // ),
                  ,
                  const SizedBox(
                    height: 12,
                  ),
                  CustomeTextFormFiled(
                    label: "Password",
                    hint: "Password",
                    textEditingController: passwordController,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return "Password Cannot Be Empty.";
                      }

                      if (value.length < 8) {
                        return "Password Must Be At Least 8 Characters.";
                      }

                      return null;
                    },
                  ),
                  // TextFormField(
                  //   obscureText: true,
                  // validator: (value) {
                  //   if (value!.isEmpty) {
                  //     return "Password Cannot Be Empty.";
                  //   }

                  //   if (value.length < 8) {
                  //     return "Password Must Be At Least 8 Characters.";
                  //   }

                  //   return null;
                  // },
                  //   controller: passwordController,
                  //   decoration: InputDecoration(
                  //       hintText: "Password",
                  //       labelText: "Password",
                  //       border: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(12))),
                  // ),
                  Row(
                    children: [
                      MainButton(text: "Forget Password?", onTap: () {})
                      // TextButton(
                      //     onPressed: () {
                      //       Navigator.push(
                      //           context,
                      //           CupertinoPageRoute(
                      //               builder: (context) =>
                      //                   const ForgetPasswordScreen()));
                      //     },
                      //     child: const Text("Forget Password?")),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  MainButton(text: "Login", onTap: () {})
                  // MainButton(
                  //     label: "Login",
                  //     onPressed: () {
                  //       if (formKey.currentState!.validate()) {
                  //         Provider.of<AutheticationProvider>(context,
                  //                 listen: false)
                  //             .login(
                  //                 emailController.text, passwordController.text)
                  //             .then((logedIn) {
                  //           if (logedIn) {
                  //             Navigator.pushAndRemoveUntil(
                  //                 context,
                  //                 CupertinoPageRoute(
                  //                     builder: (context) =>
                  //                         const ScreenRouter()),
                  //                 (route) => false);
                  //           }
                  //         });
                  //       } else {
                  //         print("FORM IS NOT VALID");
                  //       }
                  //     }),
                  ,
                  SizedBox(
                    height: 16,
                  ),
                  MainButton(text: "Create Account", onTap: () {})
                  // MainButton(
                  //   label: "Create Account",
                  //   onPressed: () {
                  //     Navigator.push(
                  //         context,
                  //         CupertinoPageRoute(
                  //             builder: (context) => const RegisterScreen()));
                  //   },
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
