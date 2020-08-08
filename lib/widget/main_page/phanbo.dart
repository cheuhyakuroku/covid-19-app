import 'package:cached_network_image/cached_network_image.dart';
import 'package:covidapp/model/image.dart';
import 'package:covidapp/model/image_data.dart';
import 'package:covidapp/utils/hex_color.dart';
import 'package:covidapp/utils/styles.dart';
import 'package:covidapp/widget/main_page/loading.dart';
import 'package:flutter/material.dart';

class PhanBo extends StatelessWidget {
  final ImageModel imageModel;
  PhanBo({this.imageModel});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: ListTile(
            title: Text('Bản đồ phân bố', style: MyStyles.title),
          ),
        ),
        Container(
          color: Colors.white,
          width: width,
          height: width,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: CachedNetworkImage(
                    imageUrl: "https://${imageModel.image}",
                    placeholder: (context, url) => Loading(isLoad: false),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: imageModel.data.map((e) => buildCa(e)).toList(),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget buildCa(ImageDataModel dataModel) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 20,
            height: 20,
            color: HexColor.fromHex(dataModel.color),
          ),
          SizedBox(
            width: 8,
          ),
          Text("${dataModel.txt} ca")
        ],
      ),
    );
  }
}
