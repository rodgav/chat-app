import 'package:chat/colors/colors.dart';
import 'package:chat/widgets/boton_azul.dart';
import 'package:chat/widgets/custom_input.dart';
import 'package:chat/widgets/labels.dart';
import 'package:chat/widgets/logo.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LogoWidget(titulo: 'Messenger',),
                _form(),
                LabelsWidget(
                  text1: '¿No tienes cuenta?',
                  text2: '¡Crea una ahora!',
                  ruta: 'register',
                ),
                Text(
                  'Términos y condiciones de uso',
                  style: TextStyle(fontWeight: FontWeight.w200),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _form extends StatefulWidget {
  @override
  __formState createState() => __formState();
}

class __formState extends State<_form> {
  final emailCtrl = TextEditingController();
  final passwCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
              icon: Icons.mail_outline,
              placeHolder: 'Correo',
              keyboardType: TextInputType.emailAddress,
              textEditingController: emailCtrl),
          CustomInput(
            icon: Icons.lock_open_outlined,
            placeHolder: 'Password',
            keyboardType: TextInputType.visiblePassword,
            textEditingController: passwCtrl,
            isPassword: true,
          ),
          //Todo: crear boton
          BotonAzulWidget(onPressed: ingresar, text: 'Ingrese')
        ],
      ),
    );
  }

  ingresar() {
    print(emailCtrl.text);
    print(passwCtrl.text);
  }
}
