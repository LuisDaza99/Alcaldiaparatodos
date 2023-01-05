import 'package:MiAlcaldia/controllers/registration_login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:MiAlcaldia/pages/register_page.dart';

class FormCard3 extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final controller = Get.put(LoginRegisterController());
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      height: ScreenUtil().setHeight(500),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 15.0),
                blurRadius: 15.0),
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, -10.0),
                blurRadius: 10.0),
          ]),
      child: GetBuilder<LoginRegisterController>(
        init: LoginRegisterController(),
        builder: (_) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Crear Cuenta",
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(45),
                          fontFamily: "Poppins-Bold",
                          letterSpacing: .6)),
                  SizedBox(
                    height: ScreenUtil().setHeight(30),
                  ),
                  Text("Correo",
                      style: TextStyle(
                          fontFamily: "Poppins-Medium",
                          fontSize: ScreenUtil().setSp(26))),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 12.0)),
                    controller: controller.emailController,
                    validator: (String value) {
                      if (value.isEmpty)
                        return 'Por favor, introduzca un texto';
                      return null;
                    },
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(30),
                  ),
                  Text("Contraseña",
                      style: TextStyle(
                          fontFamily: "Poppins-Medium",
                          fontSize: ScreenUtil().setSp(26))),
                  TextFormField(
                    controller: controller.passwordController,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    ],
                    decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 12.0)),
                    validator: (String value) {
                      if (value.isEmpty)
                        return 'Por favor ingrese algún texto o números';
                      return null;
                    },
                    obscureText: true,
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(35),
                  ),
                 
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
