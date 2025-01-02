import 'package:enfu_tech/Controller/ThemeController.dart';
import 'package:enfu_tech/constants/constants.dart';
import 'package:enfu_tech/pages/HomePage.dart';
import 'package:enfu_tech/pages/SplashScreen.dart';
import 'package:enfu_tech/utils/world_language.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:showcaseview/showcaseview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  //** Init Controllers

  Get.put(ThemeController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShowCaseWidget(
      builder: (context) => ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          builder: (context, child) => GetMaterialApp(
                debugShowCheckedModeBanner: false,
                title: appName.tr,
                transitionDuration: const Duration(milliseconds: 700),
                translations: WorldLanguage(),
                localizationsDelegates: const [
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: const [
                  Locale('en', 'US'),
                  Locale('ar', 'AR'),
                ],
                locale: const Locale('en', 'US'),
                initialRoute: splashRoute,
                getPages: [
                  GetPage(
                      name: splashRoute,
                      page: () => const SplashScreen(),
                      transition: Transition.fadeIn),
                  GetPage(
                      name: homeRoute,
                      page: () => HomePage(),
                      transition: Transition.fadeIn),
                ],
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                // builder: (context, child) {

                //   // child = EasyLoading.init()(context, child);
                //   // return GetBuilder<LocaleController>(
                //   //     id: "0", builder: (localeController) {
                //   //   return Directionality(
                //   //     textDirection: localeController.locale == english ? TextDirection
                //   //         .ltr : TextDirection.rtl,
                //   //     child: child!,
                //   //   );
                //   // });
                // },
              )),
    );
  }
}
