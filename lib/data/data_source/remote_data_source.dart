import 'package:test01/data/network/app_api.dart';
import 'package:test01/data/network/requests.dart';
import 'package:test01/data/responses/responses.dart';

abstract class RemoteDataSource{
 Future<AuthenticationResponse> login(LoginRequest loginRequest);
}
class RemoteDataSourceImpl implements RemoteDataSource{

  AppServiceClient _appServiceClient;
  RemoteDataSourceImpl(this._appServiceClient);

  @override
  Future<AuthenticationResponse> login(LoginRequest loginRequest) async{
   return await _appServiceClient.login(loginRequest.email, loginRequest.password);
  }

}