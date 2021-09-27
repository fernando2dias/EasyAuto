import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_easy_auto/core/app_text_styles.dart';
import 'package:flutter_easy_auto/core/core.dart';
import 'package:flutter_easy_auto/provider/google_sign_in.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
  bool _passwordObscure = true;
  final usernameController = new TextEditingController();
  final passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'EasyAuto',
                      style: AppTextStyles.title,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(
                          labelText: "Login",
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(),
                          ),
                          suffixIcon: Icon(Icons.person)),
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                        fontFamily: "Poppins",
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
                          icon: Icon(
                              _passwordObscure ? Icons.lock : Icons.lock_open),
                        ),
                        labelText: "Senha",
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
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
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(196, 196, 196, 0.5),
                              ),
                              icon: FaIcon(
                                FontAwesomeIcons.google,
                                color: Colors.red,
                              ),
                              label: Text(
                                'Login Google',
                                style: AppTextStyles.buttons,
                              ),
                              onPressed: () {
                                final provider =
                                    Provider.of<GoogleSignInProvider>(context,
                                        listen: false);
                                provider.googleLogin();
                                print(user.email);
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFFC4C4C4),
                              ),
                              onPressed: () {},
                              child: Text(
                                'ENTRAR',
                                style: AppTextStyles.buttons,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Esqueci minha senha',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
