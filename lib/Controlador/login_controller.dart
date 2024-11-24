import '../Modelo/user.dart';

class LoginController {
  void login(User user) {
    // Simulación de autenticación
    print('Iniciando sesión con: ${user.email}');
  }

  void register(User user) {
    // Simulación de registro
    print('Registrando con: ${user.email}');
  }
}
