import 'package:shared_preferences/shared_preferences.dart';

class Shr
{
  Future<void> CreatData(String email,String password) async {
    SharedPreferences shr = await SharedPreferences.getInstance();

    shr.setString("g1", email);
    shr.setString("p1", password);

    print(email);
    print(password);
  }


  Future<Map> readData() async {
    SharedPreferences shr = await SharedPreferences.getInstance();

    String? email = shr.getString("g1");
    String? password = shr.getString("p1");

    print(email);
    print(password);

    Map m1 = {"g1":email,"p1":password};

    return m1;
  }
}