import 'package:mobx/mobx.dart';

part 'auth_controller.g.dart';

class AuthController = AuthControllerBase with _$AuthController;

abstract class AuthControllerBase with Store {
  @observable
  bool isLoggedIn = true;

  @observable
  int count = 0;

  @action
  void increment(){
    count++;
  }

  @action
  void login(){
    isLoggedIn = true;
  }

  @action
  void logout(){
    isLoggedIn = false;
  }
}