import 'package:get/get.dart';

import '../model/datamodel.dart';
import '../service/data_service.dart';

class DataController extends GetxController{
  String? us;
  String? pass;
  DataController({this.us,this.pass});
  var loading=true.obs;
  //1.create instance variable
var dataModel=Data().obs;
  getDAta()async{
    try
    {
      loading.value=true;
    //2.create instance of get service
    var data=await DataServices().getService(us!,pass!);
    //3.check condition
    if(data!=null){
      dataModel.value=data;
      loading.value=false;

    }
    }catch(e){
      Get.snackbar("title","$e");
      loading.value=false;
    }

  }
  //4.API call function
  @override
  void onInit(){
    getDAta();
    super.onInit();
  }}