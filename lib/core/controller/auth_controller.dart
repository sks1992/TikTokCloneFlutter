import 'dart:io';

import 'package:get/get.dart';

class AuthController extends GetxController {
//register user
  void registerUser(
    String username,
    String email,
    String password,
    File? image,
  ) async {

    try{
      if(username.isEmpty && email.isEmpty && password.isEmpty && image==null){
            Get.snackbar("Error", "Please Fill All Filed");
      }else {

      }
    }catch(e){

    }
  }
}
