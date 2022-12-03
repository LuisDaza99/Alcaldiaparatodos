import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Category {
  Category({
    this.title = '',
    this.imagePath = '',
 
  });

  String title;
  String imagePath;
  

  static List<Category> categoryList = <Category>[
    
    Category(
      imagePath: 'assets/diseño_interfaz/interFace1.png',
      title: 'Mi Municipio',
    ),
    Category(
      imagePath: 'assets/diseño_interfaz/interFace2.png',
      title: 'Nuestra Alcaldia',
    ),
    Category(
      imagePath: 'assets/diseño_interfaz/interFace1.png',
      title: 'Nuestros Simbolos',

    ),
    Category(
      
      imagePath: 'assets/diseño_interfaz/interFace2.png',
      title: 'Calendario' ,
      
    ),
    
  ];


  static List<Category> popularCourseList = <Category>[
    Category(
      imagePath: 'assets/diseño_interfaz/interFace3.png',
      title: 'Regimen Subsidiado',
    ),
    Category(
      imagePath: 'assets/diseño_interfaz/interFace4.png',
      title: 'Tesoreria',
    ),
    Category(
      imagePath: 'assets/diseño_interfaz/interFace3.png',
      title: 'Adulto Mayor',
    ),
    Category(
      imagePath: 'assets/diseño_interfaz/interFace4.png',
      title: 'Oficina Juridica',
    ),
    Category(
      imagePath: 'assets/diseño_interfaz/interFace4.png',
      title: 'Secretaria de Gobierno',
    ),
    Category(
      imagePath: 'assets/diseño_interfaz/interFace4.png',
      title: 'Sisben',
    ),
    Category(
      imagePath: 'assets/diseño_interfaz/interFace4.png',
      title: 'Servicios Sociales',
    ),
  ];
}
