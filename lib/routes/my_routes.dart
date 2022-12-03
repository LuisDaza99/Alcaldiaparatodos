import 'package:MiAlcaldia/Widgets/Calendario.dart';
import 'package:MiAlcaldia/interfazUsuario/interfaz_Home.dart';
import 'package:MiAlcaldia/interfazUsuario/interfaz_HomeEmail.dart';
import 'package:MiAlcaldia/pages/MAPS/Google_maps.dart';
import 'package:MiAlcaldia/pages/MiMunicipio/Mi_municipio.dart';
import 'package:MiAlcaldia/pages/Nalcaldia/Nalcaldia.dart';
import 'package:MiAlcaldia/pages/Nalcaldia/Nalcaldia2.dart';
import 'package:MiAlcaldia/pages/Simbolos/simbolos.dart';
import 'package:MiAlcaldia/pages/principal_page.dart';
import 'package:MiAlcaldia/pages/home_page.dart';
import 'package:MiAlcaldia/pages/login_page.dart';
import 'package:MiAlcaldia/pages/register_page.dart';
import 'package:MiAlcaldia/pages/regiter_login_page.dart';
import 'package:MiAlcaldia/ui/listview_funcionario.dart';
import 'package:get/route_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

routes() => [
      GetPage(name: "/home", page: () => LoginPage()),
      GetPage(name: "/registration", page: () => RegisterPage()),
      GetPage(name: "/loginpage", page: () => LoginPage()),
      GetPage(name: "/logingoogle", page: () => LoginPage()),
      GetPage(name: "/funcionarios", page: () => ListViewFuncionario()),
      GetPage(name: "/principalpage1", page: () => InterfazHomeEmail()),
      GetPage(name: "/principalpage2", page: () => InterfazHome()),
      GetPage(name: "/calendario", page: () => Calendario()),
       GetPage(name: "/municipio", page: () => MiMunicipio()),
       GetPage(name: "/nalcaldia", page: () => Nalcaldia()),
       GetPage(name: "/nalcaldia2", page: () => Nalcaldia2()),
       GetPage(name: "/simbolos", page: () => Simbolos()),
    ];
