import 'package:flutter/material.dart';
import 'package:flutter_easy_auto/core/app_text_styles.dart';
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
                    controller: usernameController,
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
                    controller: usernameController,
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
                    controller: usernameController,
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
                    controller: usernameController,
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
                    controller: usernameController,
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
              ],
            );
          },
          itemCount: 1,
        ),
      ),
    );
  }
}
