import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lk_cric_park/core/routes/pages.dart';
import 'package:lk_cric_park/data/firebase/user/user_repository.dart';
import 'package:lk_cric_park/presentation/authentication/screens/login/login.dart';
import 'package:lk_cric_park/presentation/authentication/screens/onboarding/onboarding.dart';
import 'package:lk_cric_park/presentation/authentication/screens/signup/verify_email.dart';


class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  /// Get Authenticated User Data
  User? get authUser => _auth.currentUser;

  /// Call from main.dart on app Launch
  @override
  void onReady() {

    // Redirect to the appropriate  screen
    screenRedirect();
  }

  /// Functions to determine the relevant screen and redirect accordingly
  screenRedirect() async {
    final user = _auth.currentUser;
    if (user != null) {
      // If the user is logged in
      if (user.emailVerified) {
        // If the user's email is verified, navigate to the main Navigation Menu
        Get.offAllNamed(Routes.mainView);
      } else {
        // If the user's email is not verified, navigate to the main Verification Email Screen
        Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser?.email));
      }
    } else {
      // Local Storage
      deviceStorage.writeIfNull("isFirstTime", true);

      // Check if it's the first time launching the app
      deviceStorage.read("isFirstTime") != true
          ? Get.offAll(() => const LoginScreen())
          : Get.offAll(() => const OnboardingScreen());
    }
  }

/*--------------------------------------------------------- Email & Password sign in -------------------------------------------------------*/

  /// [Email Authentication] - Sign In
  Future<UserCredential> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    }

    /// * Important want to handle exception
    on FirebaseAuthException catch (e) {
      throw "${e.code} - FirebaseAuth Exception : ${e.message}";
    } on FirebaseException catch (e) {
      throw "${e.code} - Firebase Exception : ${e.message}";
    } on FormatException catch (_) {
      throw "Format Exception";
    } on PlatformException catch (e) {
      throw "${e.code} - Platform Exception : ${e.message}";
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
  }

  /// [Email Authentication] - Sign Up
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    }

    /// * Important want to handle exception
    on FirebaseAuthException catch (e) {
      throw "${e.code} - FirebaseAuth Exception : ${e.message}";
    } on FirebaseException catch (e) {
      throw "${e.code} - Firebase Exception : ${e.message}";
    } on FormatException catch (_) {
      throw "Format Exception";
    } on PlatformException catch (e) {
      throw "${e.code} - Platform Exception : ${e.message}";
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
  }

  /// [Email Verification] - Mail Verification
  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    }

    /// * Important want to handle exception
    on FirebaseAuthException catch (e) {
      throw "${e.code} - FirebaseAuth Exception : ${e.message}";
    } on FirebaseException catch (e) {
      throw "${e.code} - Firebase Exception : ${e.message}";
    } on FormatException catch (_) {
      throw "Format Exception";
    } on PlatformException catch (e) {
      throw "${e.code} - Platform Exception : ${e.message}";
    }
    catch (e) {
      throw "Something went wrong. Please try again";
    }
  }

  /// [EmailAuthenticate] -  Forget Password
  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    }

    /// * Important want to handle exception
    on FirebaseAuthException catch (e) {
      throw "${e.code} - FirebaseAuth Exception : ${e.message}";
    } on FirebaseException catch (e) {
      throw "${e.code} - Firebase Exception : ${e.message}";
    } on FormatException catch (_) {
      throw "Format Exception";
    } on PlatformException catch (e) {
      throw "${e.code} - Platform Exception : ${e.message}";
    }
    catch (e) {
      throw "Something went wrong. Please try again";
    }
  }

  /// [ReAuthentication] - ReAuthenticate User
  Future<void> reAuthenticateWithEmailAndPassword(String email, String password) async {
    try {
      AuthCredential credential = EmailAuthProvider.credential(email: email, password: password);

      // Re Authenticate
      await _auth.currentUser!.reauthenticateWithCredential(credential);
    }

    /// * Important want to handle exception
    on FirebaseAuthException catch (e) {
      throw "${e.code} - FirebaseAuth Exception : ${e.message}";
    } on FirebaseException catch (e) {
      throw "${e.code} - Firebase Exception : ${e.message}";
    } on FormatException catch (_) {
      throw "Format Exception";
    } on PlatformException catch (e) {
      throw "${e.code} - Platform Exception : ${e.message}";
    }
    catch (e) {
      throw "Something went wrong. Please try again";
    }
  }

/*--------------------------------------------------------- Federated identify & social sign-in -------------------------------------------------------*/

  /// [GoogleAuthentication] - Google
  signInWithGoogle() {}

  /// [FacebookAuthentication] - Facebook

/*--------------------------------------------------------- Email & Password sign in -------------------------------------------------------*/

  /// [Logout User] - Valid for any authentication
  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => const LoginScreen());
    } on FirebaseAuthException catch (e) {
      throw "${e.code} - FirebaseAuthException : ${e.message}";
    } on FirebaseException catch (e) {
      throw "${e.code} - FirebaseException : ${e.message}";
    } on FormatException catch (_) {
      throw "FormatException";
    } on PlatformException catch (e) {
      throw "${e.code} - PlatformException : ${e.message}";
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
  }

  /// [DeleteUser] - Remove user Auth and FireStore Account

    Future<void> deleteAccount() async {
      try {
        await UserRepository.instance.removeUserRecord(_auth.currentUser!.uid);
        await _auth.currentUser?.delete();
        await FirebaseAuth.instance.signOut();
        Get.offAll(() => const LoginScreen());
      } on FirebaseAuthException catch (e) {
        throw "${e.code} - FirebaseAuthException : ${e.message}";
      } on FirebaseException catch (e) {
        throw "${e.code} - FirebaseException : ${e.message}";
      } on FormatException catch (_) {
        throw "FormatException";
      } on PlatformException catch (e) {
        throw "${e.code} - PlatformException : ${e.message}";
      } catch (e) {
        throw "Something went wrong. Please try again";
      }
    }

}
