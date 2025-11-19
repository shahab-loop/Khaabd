

import 'package:khaabd/core/bindings/bindings.dart';
import 'package:khaabd/screens/auth/Login_screen/login_screen.dart';
import 'package:khaabd/screens/auth/accountauthentication_screen/accountauthentication_screen.dart';
import 'package:khaabd/screens/auth/authentication_screen/authentication_screen.dart';
import 'package:khaabd/screens/auth/change_password/change_password.dart';
import 'package:khaabd/screens/auth/forgot_screen/forgot_screen.dart';
import 'package:khaabd/screens/auth/newpassword_screen/newpassword_screen.dart';
import 'package:khaabd/screens/auth/register_screen/register_screen.dart';
import 'package:khaabd/screens/deals_screen/deals_screen.dart';
import 'package:khaabd/screens/home_screen/home_screen.dart';
import 'package:khaabd/screens/item-description/item_description.dart';
import 'package:khaabd/screens/notification_screen/notification_screen.dart';
import 'package:khaabd/screens/onboarding/onboarding_screen.dart';
import 'package:khaabd/screens/profile/profile_screen.dart';
import 'package:khaabd/screens/restaurent_details/restaurentdetails_screen.dart';
import 'package:khaabd/screens/role_screen/role_screen.dart';
import 'package:khaabd/screens/splash_screen/splash.dart';

class Routes {
  static const String splash = SplashScreen.routeName;
  static const String onboardingScreen = OnboardingScreen.routeName;
  static const String roleScreen = RoleScreen.routeName;
  static const String loginScreen = LoginScreen.routeName;
  static const String forgotScreen = ForgotScreen.routeName;
  static const String authenticationScreen = AuthenticationScreen.routeName;
  static const String newPasswordScreen = NewPasswordScreen.routeName;
  static const String registerScreen = RegisterScreen.routeName;
  static const String accountAuthenticationScreen = AccountAuthenticationScreen.routeName;
  static const String homeScreen = HomeScreen.routeName;
  static const String profileScreen = ProfileScreen.routeName;
  static const String changePassword = ChangePassword.routeName;
  static const String notificationScreen = NotificationScreen.routeName;
  static const String dealsScreen = DealsScreen.routeName;
  static const String itemDescription = ItemDescription.routeName;
  static const String restaurentDetailsScreen = RestaurentDetailsScreen.routeName;
}
