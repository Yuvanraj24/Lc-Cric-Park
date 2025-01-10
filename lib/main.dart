import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lk_cric_park/core/routes/pages.dart';
import 'package:lk_cric_park/core/theme/theme.dart';
import 'package:lk_cric_park/presentation/authentication/bindings/signup/verification_email_binding.dart';

import 'data/firebase/authentication/authentication_repository.dart';
import 'data/services/network_manager/network_manager.dart';
import 'firebase_options.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  Get.put(NetworkManager());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(AuthenticationRepository()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: SiajAppTheme.darkTheme,
      darkTheme: SiajAppTheme.darkTheme,
      getPages: AppRoutes.pages,
      initialRoute: Routes.splash
    );
  }
}
