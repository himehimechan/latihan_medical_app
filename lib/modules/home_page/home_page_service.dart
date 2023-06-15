import 'package:latihan_medical_app/models/banner.dart';

import '../../data/network/api.dart';
import '../../models/user.dart';

class Home_pageService {
  Future<bannerData?> getBanner() async {
    try {
      var res = await Api.banner();
      bannerData dataJson;
      dataJson = bannerData.fromJson(res);
      // dataJson = List<Data>.from(res.map((model)=> DataUser.fromJson(model)));
      return dataJson;
    } catch (e) {
      return null;
    }
  }

  Future<DataUser?> getUser() async {
    try {
      var res = await Api.user();
      DataUser dataJson;
      dataJson = DataUser.fromJson(res);
      return dataJson;
    } catch (e) {
      return null;
    }
  }

}