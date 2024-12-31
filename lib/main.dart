import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lk_cric_park/core/routes/pages.dart';
import 'package:lk_cric_park/core/theme/theme.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: SiajAppTheme.lightTheme,
      darkTheme: SiajAppTheme.darkTheme,
      getPages: AppRoutes.pages,
      initialRoute: Routes.splash
    );
  }
}
