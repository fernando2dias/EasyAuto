import 'package:flutter_easy_auto/models/vehicles.dart';

class User {
  String name;
  String telephone;
  String ssn;
  List<Vehicles> vehicles;

  User(this.name, this.telephone, this.ssn, this.vehicles);
}
