class User{
  String id;
  String name;
  String email;
  String phone;
  String password;
  User({this.id, this.name, this.email, this.phone, this.password});
  User.named({ this.name, this.email, this.phone, this.password});

  User.fromJson(Map<String, dynamic> json):
      id=json["id"],
      name=json["name"],
      email=json["email"],
      phone=json["phone"],
      password=json["password"];

  Map<String, dynamic> toJson() =>{
    "name":name,
    "email":email,
    "phone":phone,
    "password":password,

  };

}