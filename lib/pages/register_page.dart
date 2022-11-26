import 'package:MiAlcaldia/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';
import 'package:MiAlcaldia/controllers/registration_login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:MiAlcaldia/Widgets/FormCard2.dart';
import '../CustomIcons.dart';

import '../Widgets/SocialIcons.dart';

class RegisterPage extends StatefulWidget {
  final controller = Get.put(LoginRegisterController());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  _RegisterPageState createState() => new _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final controller = Get.put(LoginRegisterController());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget horizontalLine() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: ScreenUtil().setWidth(120),
          height: 1.0,
          color: Colors.black26.withOpacity(.2),
        ),
      );

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: Size(750, 1334),
      minTextAdapt: true,
    );
    return new Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: Image.asset("assets/image_01.png"),
              ),
              Expanded(
                child: Container(),
              ),
              Image.asset("assets/image_02.png")
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 60.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset(
                        "assets/logoo.png",
                        width: ScreenUtil().setWidth(200),
                        height: ScreenUtil().setHeight(110),
                      ),
                      Text("Portafolio\nDe Servicios",
                          style: TextStyle(
                              fontFamily: "ITCEDSCR",
                              fontSize: ScreenUtil().setSp(32),
                              letterSpacing: .6,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(180),
                  ),
                  FormCard2(),
                  SizedBox(height: ScreenUtil().setHeight(40)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 12.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                        ],
                      ),
                      InkWell(
                        child: Container(
                          width: ScreenUtil().setWidth(280),
                          height: ScreenUtil().setHeight(70),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xFF17ead9),
                                Color(0xFF6078ea)
                              ]),
                              borderRadius: BorderRadius.circular(6.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xFF6078ea).withOpacity(.3),
                                    offset: Offset(0.0, 8.0),
                                    blurRadius: 8.0)
                              ]),
                          child: GetBuilder<LoginRegisterController>(
                            init: LoginRegisterController(),
                            builder: (_) {
                              return SingleChildScrollView(
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {
                                      _.register();
                                    },
                                    child: Center(
                                      child: Text("Registrarse",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Poppins-Bold",
                                              fontSize: 18,
                                              letterSpacing: 1.0)),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(40),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      horizontalLine(),
                      Text("Ingresar con",
                          style: TextStyle(
                              fontSize: 16.0, fontFamily: "Poppins-Medium")),
                      horizontalLine()
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(40),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SocialIcon(
                        colors: [
                          Color(0xFF102397),
                          Color(0xFF187adf),
                          Color(0xFF00eaf8),
                        ],
                        iconData: CustomIcons.facebook,
                        onPressed: () {},
                      ),
                      SocialIcon(
                        colors: [
                          Color(0xFFff4f38),
                          Color(0xFFff355d),
                        ],
                        iconData: CustomIcons.googlePlus,
                        onPressed: () async {
                          LoginController().signInWithGoogle();
                        },
                      ),
                      SocialIcon(
                        colors: [
                          Color(0xFF17ead9),
                          Color(0xFF6078ea),
                        ],
                        iconData: CustomIcons.twitter,
                        onPressed: () {},
                      ),
                      SocialIcon(
                        colors: [
                          Color(0xFF00c6fb),
                          Color(0xFF005bea),
                        ],
                        iconData: CustomIcons.linkedin,
                        onPressed: () {},
                      )
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Get.toNamed("/home");
                        },
                        child: MaterialButton(
                          onPressed: () async {
                            Get.toNamed("/home");
                          },
                          color: Colors.blue,
                          child: Icon(Icons.logout),
                          textColor: Colors.white,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
    throw UnimplementedError();
  }
}
