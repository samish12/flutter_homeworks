import 'package:counter_example/auth/model/request_otp_model.dart';
import 'package:dio/dio.dart';

Future<RequestOtpModel?> requestOtp(String phoneNumber) async {
  Dio dio = Dio();
  try {
    Response response = await dio.post("https://fosha.89.116.236.10.sslip.io/api/v1/auth/otp/request",data: 
    {
      "phone_number":phoneNumber
    });
    return RequestOtpModel.fromMap(response.data);
  } catch (e) {
    print(e);
    return null;
  }
}
