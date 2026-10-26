import 'package:bloc/bloc.dart';
import 'package:counter_example/auth/model/request_otp_model.dart';
import 'package:counter_example/auth/service/auth_service.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  RequestOtpModel? requestOtpModel;
  AuthBloc() : super(AuthInitial()) {
    on<RequestOTP>((event, emit) async {
      emit(Loading());
      requestOtpModel = await requestOtp(event.phone);
      if (requestOtpModel == null) {
        emit(ErrorPage());
      } else {
        emit(Success());
      }
    });
  }
}
