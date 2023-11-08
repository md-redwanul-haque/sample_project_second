import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/modules/splash/model/sample_data_response.dart';
import 'app/routes/app_pages.dart';

void main() {

  runApp(
      Sample()
  );
}
class Sample extends StatelessWidget {
   Sample({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}

