import 'package:dio/dio.dart';
import 'package:new_gen_project/repositories/phone_number/models/phone_model.dart';

class PhoneNumberRepository {
  Future<PhoneDates> getPhoneNumber() async {
    var dio = Dio();
    dio.options.headers['apikey'] = 'U0NWsKT708GKsVVSVHE8VHJgJwAHXlLt';

    final response = await dio.get(
        'https://api.apilayer.com/number_verification/validate?number=%2B77474439663');
    final data = response.data as Map<String, dynamic>;
    final phoneNumberData = PhoneDates(
      number: data['number'],
      local_format: data['local_format'],
      international_format: data['international_format'],
      country_prefix: data['country_prefix'],
      country_code: data['country_code'],
      country_name: data['country_name'],
      location: data['location'],
      carrier: data['carrier'],
      line_type: data['line_type'],
    );
    return phoneNumberData;
  }
}
