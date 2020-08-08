import 'package:covidapp/model/data.dart';
import 'package:covidapp/sevices/api.dart';
import 'package:covidapp/utils/colors.dart';
import 'package:covidapp/widget/main_page/banner.dart';
import 'package:covidapp/widget/main_page/cactinh.dart';
import 'package:covidapp/widget/main_page/loading.dart';
import 'package:covidapp/widget/main_page/phanbo.dart';
import 'package:covidapp/widget/main_page/tongke.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: MyColors.bg),
        ),
        child: FutureBuilder<DataModel>(
          future: Api.fetchData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    MyBanner(),
                    ThongKe(tongCa: snapshot.data.tongCa),
                    PhanBo(imageModel: snapshot.data.imageData),
                    CacTinh(data: snapshot.data.chiTiet),
                  ],
                ),
              );
            }
            return Loading(isLoad: true);
          },
        ),
      ),
    );
  }
}
