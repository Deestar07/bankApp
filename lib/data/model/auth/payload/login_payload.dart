class LoginPayload {
  String? userLogin;
  String? userPassword;

  LoginPayload({this.userLogin, this.userPassword});

  LoginPayload.fromJson(Map<String, dynamic> json) {
    userLogin = json['user_login'];
    userPassword = json['user_password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_login'] = userLogin;
    data['user_password'] = userPassword;
    return data;
  }
}