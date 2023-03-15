import 'package:api_interview/controller/datacontroller.dart';
import 'package:api_interview/main.dart';
import 'package:api_interview/widget1/suggestionsection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




class HomePage extends StatelessWidget {
  String? user;
  String? password;
  HomePage({this.user,this.password});
  //1.first create instance for controlle
  final controller = Get.put(DataController());
  

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(SAVE_KEY_NAME),
      ),
      body: Container(
        alignment: Alignment.center,
        //2.create obx
        child: Obx(() {
          //3.store data value
          var data1 = controller.dataModel.value;
        return controller.loading.isTrue?Center(child: Text("Loading..."),):
          //4.display data
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Suggestionsection()
            
              
                    
            ],
          );
         
          
        }),

      ),
    );
  }
}

