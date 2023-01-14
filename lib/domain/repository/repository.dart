import 'package:test01/data/network/requests.dart';
import 'package:test01/domain/model/models.dart';
import 'package:dartz/dartz.dart';
import '../../data/network/failure.dart';

abstract class Repository{
 Future<Either<Failure,Authentication>> login(LoginRequest loginRequest);
}
