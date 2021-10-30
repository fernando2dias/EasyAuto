// ignore_for_file: unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_easy_auto/core/app_restart.dart';
import 'package:flutter_easy_auto/core/app_text_styles.dart';
import 'package:flutter_easy_auto/core/core.dart';
import 'package:flutter_easy_auto/provider/account_manager_provider.dart';
import 'package:flutter_easy_auto/signin/signin_screen.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final bool isSignIn = false;
  final bool google = false;
  final bool isLoading = false;
  // bool _passwordObscure = true;
  // final usernameController = new TextEditingController();
  // final passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      backgroundColor: Colors.white,
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SizedBox(
                            height: 49,
                            child: SvgPicture.asset('assets/brand/brand.svg')),
                      ),
                      /*
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Form(
                          autovalidateMode: AutovalidateMode.always,
                          child: TextFormField(
                            controller: usernameController,
                            validator: validateEmail,
                            decoration: InputDecoration(
                                labelText: "Login",
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(),
                                ),
                                suffixIcon: Icon(Icons.person)),
                            keyboardType: TextInputType.text,
                            style: TextStyle(
                              fontFamily: "Poppins",
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: _passwordObscure,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                _passwordObscure = !_passwordObscure;
                                setState(() {});
                              },
                              icon: Icon(_passwordObscure
                                  ? Icons.lock
                                  : Icons.lock_open),
                            ),
                            labelText: "Senha",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 7.5),
                                child: SizedBox(
                                  height: 50,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Color.fromRGBO(64, 33, 78, 0.35),
                                    ),
                                    child: Text(
                                      'CADASTRAR',
                                      style: AppTextStyles.signInButton,
                                    ),
                                    onPressed: () async {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SignInScreen(),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 7.5),
                                child: SizedBox(
                                  height: 50,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xFF40214E),
                                    ),
                                    child: Text(
                                      'ENTRAR',
                                      style: AppTextStyles.logInButton,
                                    ),
                                    onPressed: () {
                                      authLogin(usernameController.text,
                                          passwordController.text);
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextButton(
                            child: Text(
                              'Esqueci minha senha',
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                            onPressed: () {
                              RestartWidget.restartApp(context);
                            }),
                      ),
                      */
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 53,
                            width: (width - 80),
                            child: SignInButton(
                              Buttons.Google,
                              text: "Entrar com Google",
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 82.0),
                              onPressed: () {
                                final provider =
                                    Provider.of<AccountManagerProvider>(context,
                                        listen: false);
                                provider.googleLogin();
                              },
                            ),
                          )),
                    ],
                  );
                },
                itemCount: 1,
              ),
            ),
    );
  }

  // authLogin(String email, String password) async {
  //   print(email);
  //   print(password);
  //   final provider =
  //       Provider.of<AccountManagerProvider>(context, listen: false);
  //   String result = await provider.emailLogin(email, password);
  //   if (result != 'success') {
  //     _showToast(context, result);
  //   }
  // }

  // void _showToast(BuildContext context, String text) {
  //   final scaffold = ScaffoldMessenger.of(context);
  //   scaffold.showSnackBar(
  //     SnackBar(
  //       content: Text(text),
  //       action: SnackBarAction(
  //           label: 'Ok', onPressed: scaffold.hideCurrentSnackBar),
  //     ),
  //   );
  // }

  // String? validateEmail(String? value) {
  //   Pattern pattern =
  //       r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
  //       r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
  //       r"{0,253}[a-zA-Z0-9])?)*$";
  //   RegExp regex = new RegExp(pattern.toString());
  //   if (!regex.hasMatch(value ?? '') || value == null)
  //     return 'Enter a valid email address';
  //   else
  //     return null;
  // }
}
