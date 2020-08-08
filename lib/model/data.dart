import 'package:covidapp/model/image.dart';
import 'package:covidapp/model/tinh.dart';
import 'package:covidapp/model/tongca.dart';

class DataModel {
  TongCaModel tongCa;
  ImageModel imageData;
  List<TinhModel> chiTiet;

  DataModel({
    this.tongCa,
    this.imageData,
    this.chiTiet,
  });

  factory DataModel.fromJson(Map<String, dynamic> js) => DataModel(
        tongCa: TongCaModel.fromJson(js["tongCa"]),
        imageData: ImageModel.fromJson(js["imageData"]),
        chiTiet:
            (js["chiTiet"] as List).map((i) => TinhModel.fromJson(i)).toList(),
      );
}
