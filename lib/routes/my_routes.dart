import 'package:MiAlcaldia/interfazUsuario/interfaz_Home.dart';
import 'package:MiAlcaldia/interfazUsuario/interfaz_HomeEmail.dart';
import 'package:MiAlcaldia/pages/principal_page.dart';
import 'package:MiAlcaldia/pages/home_page.dart';
import 'package:MiAlcaldia/pages/login_page.dart';
import 'package:MiAlcaldia/pages/register_page.dart';
import 'package:MiAlcaldia/pages/regiter_login_page.dart';
import 'package:MiAlcaldia/ui/listview_funcionario.dart';
import 'package:get/route_manager.dart';

routes() => [
      GetPage(name: "/home", page: () => LoginPage()),
      GetPage(name: "/registration", page: () => RegisterPage()),
      GetPage(name: "/loginpage", page: () => LoginPage()),
      GetPage(name: "/logingoogle", page: () => LoginPage()),
      GetPage(name: "/principalpage", page: () => ListViewFuncionario()),
      GetPage(name: "/principalpage2", page: () => InterfazHomeEmail()),
    ];
