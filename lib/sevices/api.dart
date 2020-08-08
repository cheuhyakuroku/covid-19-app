import 'package:covidapp/model/data.dart';
import 'package:covidapp/sevices/network.dart';

class Api {
  static const String url =
      "https://covid-19-vnn.herokuapp.com/covid19/vietnam";
  static Future<DataModel> fetchData() async {
    var res = await NetworkSevice.fetchData(url);
    DataModel dataModel = DataModel.fromJson(res);
    return dataModel;
  }
}
