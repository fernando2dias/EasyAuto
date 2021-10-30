import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_easy_auto/core/core.dart';
import 'package:flutter_easy_auto/howItWorks/how_it_works.dart';
import 'package:flutter_easy_auto/models/user.dart';
import 'package:flutter_easy_auto/models/vehicles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserData extends StatefulWidget {
  UserData({Key? key}) : super(key: key);

  @override
  _UserDataState createState() => _UserDataState();
}

class _UserDataState extends State<UserData> {
  final usernameController = new TextEditingController();

  final cellphoneController = new TextEditingController();

  final ssnController = new TextEditingController();
  final carBrandController = new TextEditingController();
  final carModelController = new TextEditingController();
  final carYearController = new TextEditingController();
  final carPlateController = new TextEditingController();

  int countVehicles = 0;

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
                        "Informações de Usuário",
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
                        labelText: "Nome completo",
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
                        labelText: "Número do Celular",
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(),
                        ),
                        suffixIcon: Icon(Icons.phone_android)),
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: ssnController,
                    decoration: InputDecoration(
                      labelText: "CPF",
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
                  child: Card(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Text(
                                'Veículos',
                                style: AppTextStyles.body20,
                              ),
                            ),
                            Visibility(
                              visible: countVehicles > 0,
                              child: Expanded(
                                flex: 1,
                                child: IconButton(
                                  onPressed: (() {
                                    setState(() {
                                      countVehicles--;
                                    });
                                    log(countVehicles.toString());
                                  }),
                                  icon: Icon(Icons.remove),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: countVehicles < 1,
                              child: Expanded(
                                flex: 1,
                                child: IconButton(
                                  onPressed: (() {
                                    setState(() {
                                      countVehicles++;
                                    });
                                    log(countVehicles.toString());
                                  }),
                                  icon: Icon(Icons.add),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Visibility(
                          visible: countVehicles > 0,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: TextFormField(
                                  controller: carBrandController,
                                  decoration: InputDecoration(
                                    labelText: "Marca do veículo",
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
                                  controller: carModelController,
                                  decoration: InputDecoration(
                                    labelText: "Modelo do veículo",
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
                                  controller: carYearController,
                                  decoration: InputDecoration(
                                    labelText: "Ano do veículo",
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(),
                                    ),
                                  ),
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: TextFormField(
                                  controller: carPlateController,
                                  decoration: InputDecoration(
                                    labelText: "Placa",
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
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.all(16.0),
                        //   child: TextFormField(
                        //     controller: carBrandController,
                        //     decoration: InputDecoration(
                        //         labelText: "Marca do veículo",
                        //         fillColor: Colors.white,
                        //         border: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(5),
                        //           borderSide: BorderSide(),
                        //         ),
                        //         suffixIcon: Icon(Icons.person)),
                        //     keyboardType: TextInputType.text,
                        //     style: TextStyle(
                        //       fontFamily: "Poppins",
                        //     ),
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.all(16.0),
                        //   child: TextFormField(
                        //     controller: carModelController,
                        //     decoration: InputDecoration(
                        //         labelText: "Modelo do veículo",
                        //         fillColor: Colors.white,
                        //         border: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(5),
                        //           borderSide: BorderSide(),
                        //         ),
                        //         suffixIcon: Icon(Icons.person)),
                        //     keyboardType: TextInputType.text,
                        //     style: TextStyle(
                        //       fontFamily: "Poppins",
                        //     ),
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.all(16.0),
                        //   child: TextFormField(
                        //     controller: carYearController,
                        //     decoration: InputDecoration(
                        //         labelText: "Ano do veículo",
                        //         fillColor: Colors.white,
                        //         border: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(5),
                        //           borderSide: BorderSide(),
                        //         ),
                        //         suffixIcon: Icon(Icons.person)),
                        //     keyboardType: TextInputType.number,
                        //     style: TextStyle(
                        //       fontFamily: "Poppins",
                        //     ),
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.all(16.0),
                        //   child: TextFormField(
                        //     controller: carPlateController,
                        //     decoration: InputDecoration(
                        //         labelText: "Placa",
                        //         fillColor: Colors.white,
                        //         border: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(5),
                        //           borderSide: BorderSide(),
                        //         ),
                        //         suffixIcon: Icon(Icons.person)),
                        //     keyboardType: TextInputType.text,
                        //     style: TextStyle(
                        //       fontFamily: "Poppins",
                        //     ),
                        //   ),
                        // ),
                      ],
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
                                usernameController.text = '';
                                cellphoneController.text = '';
                                ssnController.text = '';
                                carBrandController.text = '';
                                carModelController.text = '';
                                carYearController.text = '';
                                carPlateController.text = '';
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
                                Vehicles vehicle = new Vehicles(
                                    carBrandController.text,
                                    carModelController.text,
                                    carPlateController.text,
                                    carYearController.text);
                                List<Vehicles> listVehicles = [];
                                listVehicles.add(vehicle);
                                User user = new User(
                                    usernameController.text,
                                    cellphoneController.text,
                                    ssnController.text,
                                    listVehicles);
                              },
                              child: Text(
                                'Salvar',
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
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HowItWorks(),
                                ),
                              );
                            },
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
