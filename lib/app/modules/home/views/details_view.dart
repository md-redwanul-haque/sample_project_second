import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';


import '../../../utils/app_colors.dart';
import '../../../utils/text_design.dart';
import '../../splash/controllers/splash_controller.dart';
import '../controllers/home_controller.dart';

class DetailsView extends GetView {
  int index;
   DetailsView({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Application',style: TextStyle(color: Colors.black,fontSize: 22),),
        leading: IconButton(onPressed: () { Get.back(); }, icon: Icon(Icons.arrow_back_ios,color: Colors.black),),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          children: [
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  //set border radius more than 50% of height and width to make circle
                ),
                elevation: 10,
                shadowColor: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24, vertical: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                          'assets/25817383_6972652@3x.png'),
                      SizedBox(
                        height: 12,
                      ),
                      TextDesignR(
                        title: 'Content ID: ',
                        descript: sampleDataList[index].id
                            .toString(),
                      ),

                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "${sampleDataList[index].title}",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "User ID: ${sampleDataList[index].userId}",
                          style: TextStyle(
                            color: AppColors.button,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: SizedBox(
                            height: 40,
                            width: 110,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.button
                                ),
                                onPressed: (){

                                }, child: Text('Read',style: TextStyle(fontSize: 16),)),
                          ),
                        ),
                      ],
                    ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 1.0, color: AppColors.button),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Text("T${sampleDataList[index].body}"),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }

}
