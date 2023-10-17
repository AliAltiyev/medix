import 'package:equatable/equatable.dart';

final class UserEntity extends Equatable {
  final String name;
  final String? age;
  final String? country;
  final String email;
  final List<String>? hobbies;

  const UserEntity({
    required this.name,
    this.age,
    this.country,
    required this.email,
    this.hobbies,
  });

  @override
  List<Object?> get props => <Object?>[
        name,
        age,
        country,
        email,
        hobbies,
      ];
}
