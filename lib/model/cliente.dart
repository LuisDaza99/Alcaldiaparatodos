import 'package:firebase_database/firebase_database.dart';

class Cliente {
  String _id;
  String _nombre;
  String _identificacion;
  String _areaa;
  String _motivo;
  String _fechanacimiento;
  String _hora;

  Cliente(this._id, this._nombre, this._identificacion, this._areaa,
      this._motivo, this._fechanacimiento, this._hora);

  Cliente.map(dynamic obj) {
    this._nombre = obj['nombre'];
    this._identificacion = obj['identificacion'];
    this._areaa = obj['areaa'];
    this._motivo = obj['motivo'];
    this._fechanacimiento = obj['fechanacimiento'];
    this._hora = obj['hora'];

  }

  String get id => _id;
  String get nombre => _nombre;
  String get identificacion => _identificacion;
  String get areaa => _areaa;
  String get motivo => _motivo;
  String get fechanacimiento => _fechanacimiento;
  String get hora => _hora;

  Cliente.fromSnapShot(DataSnapshot snapshot) {
    _id = snapshot.key;
    _nombre = snapshot.value['nombre'];
    _identificacion = snapshot.value['identificacion'];
    _areaa = snapshot.value['areaa'];
    _motivo = snapshot.value['motivo'];
    _fechanacimiento = snapshot.value['fechanacimiento'];
    _hora = snapshot.value['hora'];
  }
}
