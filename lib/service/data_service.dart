import 'dart:convert';



import 'package:http/http.dart'as http;
import 'package:http/http.dart';

import '../main.dart';
import '../model/datamodel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataServices{

  //2.create get function
  Future<Data?> getService(String user_name ,String passwor)async{
   
    
      Response response = await post(
          Uri.parse("https://teckzy.co.in/manadarthi/user_api/login"),
          body: {
            'customer_username': user_name,
            'customer_password': passwor,
            'api_key': 'Sudip@123'
          });
  
  //3.check condition
    if(response.statusCode==200){
      //4.json deconde
      var data= await json.decode(response.body);
         final _sharedpreference = await SharedPreferences.getInstance();
      await _sharedpreference.setString(
            SAVE_KEY_NAME,data['data']['customer_name']);
            print("user name:${data['data']['customer_name']}"
            );
      print(data);
      return Data.fromJson(data);

    }
    else{
      return null;
    
    }
  }

}