import 'package:chat/pages/chat.dart';
import 'package:chat/pages/loading.dart';
import 'package:chat/pages/login.dart';
import 'package:chat/pages/register.dart';
import 'package:chat/pages/usuarios.dart';
import 'package:flutter/cupertino.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'usuarios': (_) => UsuariosPage(),
  'chat': (_) => ChatPage(),
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),
  'loading': (_) => LoadingPage(),
};
