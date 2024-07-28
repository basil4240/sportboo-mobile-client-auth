class ProfileImage {
  String? message;
  ImageData? data;

  ProfileImage({this.message, this.data});

  ProfileImage.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? ImageData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class ImageData {
  String? profileImgUrl;
  ImageData({this.profileImgUrl});
  ImageData.fromJson(Map<String, dynamic> json) {
    profileImgUrl = json['profileImgUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['profileImgUrl'] = profileImgUrl;
    return data;
  }
}
