import 'package:dartz/dartz.dart';
import 'package:sportboo_mobile_client/core/errors/failures.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;
typedef DataMap = Map<String, dynamic>;