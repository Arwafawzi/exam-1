class User {
  int? id;
  String? email;
  String? name;
  String? age;

  User(
      {this.id,
      this.email,
      this.name,
      this.age,
      });

  factory User.fromJson(Map json){
    return User(
      id: json["id"],
      email: json["email"],
      name: json["name"],
      age: json["given_name"],
      
    );
  }

  toMap(){
    return {
      "user_id": id,
      "email": email,
      "name": name,
      "age": age,
    
    };
  }
}