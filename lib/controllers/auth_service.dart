class AuthService {
  static bool isAuthenticated = false;

  static void login() {
    isAuthenticated = true;
  }

  static void logout() {
    isAuthenticated = false;
  }
}
