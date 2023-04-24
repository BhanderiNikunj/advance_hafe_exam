import 'package:adavance_hafe_exam/ApiHelper/ApiHelper.dart';
import 'package:adavance_hafe_exam/Screen/Corona/Model/CoronaModel.dart';
import 'package:get/get.dart';

class CoronaContorllor extends GetxController{

  Future<CoronaModel> ApiCall() async {
    ApiHelper apiHelper = ApiHelper();

    CoronaModel c1 = await apiHelper.GetApiCall();

    return c1;
  }

}