import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:test01/data/data_source/remote_data_source.dart';
import 'package:test01/data/network/error_handler.dart';
import 'package:test01/data/network/failure.dart';
import 'package:test01/data/network/network_info.dart';
import 'package:test01/data/network/requests.dart';
import 'package:test01/domain/model/models.dart';
import 'package:test01/domain/repository/repository.dart';
import 'package:test01/data/mapper/mapper.dart';

class RepositoryImpl implements Repository {
  final RemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;

  RepositoryImpl(this._remoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, Authentication>> login(
      LoginRequest loginRequest) async {
    if (await _networkInfo.isConnected) {
      //it is connected to internet , its safe to call api

      try{
        final response = await _remoteDataSource.login(loginRequest);
        if (response.status == ApiInternalStatus.SUCCESS) {
          //success
          //return data
          return Right(response.toDomain());
        } else {
          //failure --business error
          return Left(Failure(ApiInternalStatus.FAILURE, response.message ?? ResponseMessage.DEFAULT));
        }
      }catch(error){
        return Left(ErrorHandler.handle(error).failure);

      }

    } else {
      //return internet connection error
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }
}
