import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easy_auto/core/app_text_styles.dart';
import 'package:flutter_easy_auto/login/login_screen.dart';
import 'package:flutter_svg/svg.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _passwordObscure = true;
  final usernameController = new TextEditingController();
  final passwordController = new TextEditingController();

  final emailController = new TextEditingController();
  final cellphoneController = new TextEditingController();

  final cpfController = new TextEditingController();
  final carController = new TextEditingController();

  final plateController = new TextEditingController();
  final repeatPasswordController = new TextEditingController();

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 41.95),
                  child: SizedBox(
                      height: 49,
                      child: SvgPicture.asset('assets/brand/brand.svg')),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 26.95),
                  child: SizedBox(
                    width: 327,
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: SizedBox(
                    height: 60,
                    width: 327,
                    child: Center(
                      child: Text(
                        "Fazer Cadastro",
                        style: AppTextStyles.signInButton,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: usernameController,
                    decoration: InputDecoration(
                        labelText: "Usuário",
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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                        labelText: "E-mail",
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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: cellphoneController,
                    decoration: InputDecoration(
                        labelText: "Telefone / Celular",
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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: cpfController,
                    decoration: InputDecoration(
                        labelText: "CPF",
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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: carController,
                    decoration: InputDecoration(
                        labelText: "Marca e Modelo do veículo",
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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: plateController,
                    decoration: InputDecoration(
                        labelText: "Placa",
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
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: repeatPasswordController,
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
                      labelText: "Confirmar Senha",
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
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Esqueci minha senha',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Checkbox(
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = !isChecked;
                              });
                            }),
                      ),
                      Expanded(
                        flex: 9,
                        child: Text(
                          'Aceito os termos estabelecidos pelo aplicativo.',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7.5),
                          child: SizedBox(
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(64, 33, 78, 0.35),
                              ),
                              child: Text(
                                'LIMPAR',
                                style: AppTextStyles.signInButton,
                              ),
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7.5),
                          child: SizedBox(
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF40214E),
                              ),
                              onPressed: () {
                                print("Clicou em Entrar");
                                authSignIn(emailController.text,
                                    passwordController.text);
                              },
                              child: Text(
                                'CADASTRAR',
                                style: AppTextStyles.logInButton,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7.5),
                      child: SizedBox(
                        height: 63,
                        child: ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Veja como funciona",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                ),
                              ],
                            )),
                      )),
                ),
              ],
            );
          },
          itemCount: 1,
        ),
      ),
    );
  }

  authSignIn(String email, String password) async {
    print(email);
    print(password);
    FirebaseAuth _auth = FirebaseAuth.instance;
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        _showToast(context, 'Senha muito fraca');
      } else if (e.code == 'email-already-in-use') {
        _showToast(context, 'E-mail já cadastrado. Tente novamente');
      } else {
        // print(e.code);
        _showToast(context, 'Ocorreu um erro. Tente novamente');
      }
    }
  }

  void _showToast(BuildContext context, String text) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(text),
        action: SnackBarAction(
            label: 'Ok', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
