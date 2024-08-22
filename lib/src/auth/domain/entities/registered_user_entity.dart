import 'package:equatable/equatable.dart';

class RegisteredUserEntity extends Equatable {
  const RegisteredUserEntity({
    required this.fullname,
    required this.userId,
    required this.email,
    required this.sportbooId,
  });

  final String? fullname;
  final int? userId;
  final String? email;
  final String? sportbooId;
  
  @override
  List<Object?> get props => [
    fullname,
    userId,
    email,
    sportbooId,
  ];
}