import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:pelatihan1/chat_statefull/chat_view.dart';
import 'package:pelatihan1/counter_firebase.dart';
import 'package:pelatihan1/counter_http/counter_http.dart';
import 'package:pelatihan1/counter_provider/view.dart';
import 'package:pelatihan1/counter_sqflite/counter_sqflite.dart';
import 'package:pelatihan1/counter_statefull/counter_statefull.dart';
import 'package:pelatihan1/firebase_options.dart';
import 'package:pelatihan1/food_app/configs/theme/app_color.dart';
import 'package:pelatihan1/food_app/configs/theme/app_font.dart';
import 'package:pelatihan1/food_app/presentation/pages/home/view.dart';
import 'package:pelatihan1/helpers/hive_helper.dart';
import 'package:pelatihan1/helpers/db_helper.dart';
import 'package:pelatihan1/helpers/pref_helper.dart';
import 'package:pelatihan1/models/counter.dart';
import 'package:pelatihan1/responsive_location.dart';
import 'package:pelatihan1/responsive_size.dart';
import 'package:pelatihan1/sample_layout.dart';
import 'package:pelatihan1/sample_stack.dart';

import 'counter_hive/counter_hive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  PrefHelper.init();
  await HiveHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, __) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: AppColor.primarySwatch,
            fontFamily: AppFont.primaryFont),
        // home: const SampleLayout(),
        // home: const SampleStack(),
        // home: const ResponsiveSize()
        // home: const ResponsiveLocation()
        // home: const CounterStateFull(),
        // home: const CounterPage());
        // home: const ChatView());
        // home: const CounterFirebase(),
        // home: const CounterSqfLite(),
        // home: const CounterHive(),
        // home: const CounterHttp(),
        home: const HomePage(),
      ),
    );
  }
}
