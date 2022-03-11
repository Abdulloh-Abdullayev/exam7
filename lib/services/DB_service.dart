import 'package:exam7/models/List_model.dart';
import 'package:hive/hive.dart';

class HiveDB {
  var box = Hive.box('Hive');

  void storeUser(LIstM user)async{
    box.put('user', user.toJson());
  }

  LIstM loadUser(){
    var user = LIstM.fromJson(box.get('user'));
    return user;
  }

  void removeUser(){
    box.delete('user');
  }
}