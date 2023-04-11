class SignupPayload {
  String? username;
  String? email;
  String? password;

  SignupPayload({this.username, this.email, this.password});

  SignupPayload.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    data['username'] = username;
    return data;
  }
}
