import 'package:get/get.dart';
import 'package:khaabd/core/bindings/bindings.dart';
import 'package:khaabd/core/navigations/routes/routes.dart';
import 'package:khaabd/screens/auth/Login_screen/login_screen.dart';
import 'package:khaabd/screens/auth/authentication_screen/authentication_screen.dart';
import 'package:khaabd/screens/auth/forgot_screen/forgot_screen.dart';
import 'package:khaabd/screens/auth/newpassword_screen/newpassword_screen.dart';
import 'package:khaabd/screens/auth/register_screen/register_screen.dart';
import 'package:khaabd/screens/onboarding/onboarding_screen.dart';
import 'package:khaabd/screens/role_screen/role_screen.dart';
import 'package:khaabd/screens/splash_screen/splash.dart';

class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(
      name: Routes.splash,
      binding: SplashBinding(),
      page: () => SplashScreen(),
    ),
    GetPage(
      name: Routes.onboardingScreen,
      binding: OnboardingScreenBinding(),
      page: () => OnboardingScreen(),
    ),
    GetPage(
      name: Routes.roleScreen,
      binding: RoleScreenBinding(),
      page: () => RoleScreen(),
    ),
    GetPage(
      name: Routes.loginScreen,
      binding: LoginScreenBinding(),
      page: () => LoginScreen(),
    ),
    GetPage(
      name: Routes.forgotScreen,
      binding: ForgotScreenBinding(),
      page: () => ForgotScreen(),
    ),
    GetPage(
      name: Routes.authenticationScreen,
      binding: AuthenticationScreenBinding(),
      page: () => AuthenticationScreen(),
    ),
    GetPage(
      name: Routes.newPasswordScreen,
      binding: NewPasswordScreenBinding(),
      page: () => NewPasswordScreen(),
    ),
    GetPage(
      name: Routes.registerScreen,
      binding: RegisterScreenBinding(),
      page: () => RegisterScreen(),
    ),
  ];
}
