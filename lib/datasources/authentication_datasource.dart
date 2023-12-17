import 'package:qr_code_app/util/auth_json_data_model.dart';

abstract class IAuthenticationDatasource {
  Future<void> register(AuthJsonDataModel authJsonDataModel);
  Future<void> login(AuthJsonDataModel authJsonDataModel);
}

class AuthenticationLocalDatasource extends IAuthenticationDatasource {
  @override
  Future<void> login(AuthJsonDataModel authJsonDataModel) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> register(AuthJsonDataModel authJsonDataModel) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
