import 'package:flutter/material.dart';

import 'package:get/get.dart';


import '../../../utils/AppName.dart';
import '../../../utils/app_colors.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    controller.moveToNext();
    controller.fetchData();
    return Scaffold(

      body:  SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(color: AppColors.primary_color),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AppName(appNameText:"Simple Application" ),
              SizedBox(height: Get.height*.04,),
              Center(child: ClipOval(child: Image.asset('assets/25817383_6972652@3x.png'))),

            ],
          ),
        ),
      ),
      //Image.asset('assets/25817383_6972652@3x.png')
    );
  }
}
