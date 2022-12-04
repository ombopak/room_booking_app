import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';
import 'package:thengoding/config/networking/networking.dart';
import 'package:thengoding/config/router/router.dart';
import 'package:thengoding/domain/controller/controller.dart';
import 'package:thengoding/util/helper/helper.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> implements HttpState {
  LoginCubit() : super(LoginState().init());
  late final AuthController _authController = AuthController(this);

  void login() async {
    BaseResponse baseResponse = await _authController.login(
      state.emailController.text,
      state.passwordController.text,
    );
    PrefHelper.instance.saveToken(baseResponse.result?.login?.token ?? '');

    Logger.root.info("TOKEN ${PrefHelper.instance.token}");
    if (baseResponse.result?.login?.token != null) {
      GetIt.I<AppRouter>().replace(DiscoverRoute());
    }
  }

  @override
  void onEndRequest(String url, String method) {}

  @override
  void onErrorRequest(String url, String method) {}

  @override
  void onStartRequest(String url, String method) {}

  @override
  void onSuccessRequest(String url, String method) {}
}
