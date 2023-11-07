import 'package:data/data.dart';

part 'user_model.g.dart';

@JsonSerializable()
final class UserModel extends Equatable {
  final String name;
  final String? age;
  final String? country;
  final String email;
  final List<String>? hobbies;

  const UserModel({
    required this.name,
    this.age,
    this.country,
    required this.email,
    this.hobbies,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return _$UserModelFromJson(json);
  }

  Map<String, dynamic> toJson(UserModel userModel) {
    return _$UserModelToJson(userModel);
  }

  @override
  List<Object?> get props => <Object?>[
        name,
        age,
        country,
        email,
        hobbies,
      ];
}
