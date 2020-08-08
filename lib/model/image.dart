import 'package:covidapp/model/image_data.dart';

class ImageModel {
  String image;
  List<ImageDataModel> data;

  ImageModel({
    this.image,
    this.data,
  });

  factory ImageModel.fromJson(Map<String, dynamic> js) => ImageModel(
        image: js["image"],
        data: (js["data"] as List)
            .map((i) => ImageDataModel.fromJson(i))
            .toList(),
      );
}
