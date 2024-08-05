import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:sportboo_mobile_client/core/models/profile_image_model.dart';
import 'package:sportboo_mobile_client/unils/endpoint.dart';
import 'package:sportboo_mobile_client/unils/request.dart';
import 'package:sportboo_mobile_client/unils/utils.dart';

import '../models/login/response/login_response.dart';
// import '../models/sportboo_user/sportboo_user.dart';
import '../services/file_picker_service.dart';

class SportbooUserProvider extends ChangeNotifier {
  UserData? _sportbooUser;
  ImageData? _profileImage;
  String _photo = '';
  String get photo => _photo;
  ImageData? get profileImage => _profileImage;

  // Getter method
  UserData? get sportbooUser {
    return _sportbooUser;
  }

  // Setter method
  set sportbooUser(UserData? value) {
    _sportbooUser = value;
    notifyListeners();
  }

  Future<void> fetchProfileImage() async {
    try {
      var res = await Request().get(endpoint: Endpoint.changeProfileImage);
      _profileImage = ImageData.fromJson(res['data']);
      _photo = _profileImage?.profileImgUrl ?? "";
      notifyListeners();
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      showSportbooSnackBar(e.toString().split(":").last, (id) => null);
    }
  }

  selectProfileImage() async {
    try{
      var result = await ImagePickerService()
          .pickImageFromGallery();
      if (result != null) {
       // File selectedImage = File(result.files.single.path ?? '');
        String imagePath = result.path ?? '';
       // String fileName = result.files.first.name;
        if (kDebugMode) {
          print('Selected file path in viewModel: $imagePath');
        }
        try {
          showSportbooLoader();
          var res = await Request().changeProfileImage(imagePath: imagePath);
          _profileImage = ImageData.fromJson(res['data']);
          _photo = _profileImage?.profileImgUrl ?? "";
          closeSportbooLoader();
          showSportbooSnackBar("image updated", (id) => null);
          notifyListeners();
        } catch (e) {
          closeSportbooLoader();
          showSportbooSnackBar(e.toString().split(":").last, (id) => null);
        }
      }
    }catch(e){
      if (kDebugMode) {
        print("error picking : ${e.toString()}");
      }
    }
  }


  Future logout() async {
    try {
      showSportbooLoader();
      var res = await Request().post(
          endpoint: Endpoint.logout,body: {},okStatusCode: 201);
      return res;
    } catch (e) {
      rethrow;
    }
  }
}
