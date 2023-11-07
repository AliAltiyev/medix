import 'package:data/data.dart';

final class UserMapper implements Mapper<UserModel, UserEntity> {
  @override
  UserEntity toEntity(UserModel model) {
    return UserEntity(
      age: model.age,
      country: model.country,
      hobbies: model.hobbies,
      name: model.name,
      email: model.email,
    );
  }

  @override
  UserModel toModel(UserEntity model) {
    return UserModel(
      age: model.age,
      country: model.country,
      hobbies: model.hobbies,
      name: model.name,
      email: model.email,
    );
  }
}
