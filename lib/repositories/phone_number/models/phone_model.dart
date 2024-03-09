class PhoneDates {
  final String number;
  final String local_format;
  final String international_format;
  final String country_prefix;
  final String country_code;
  final String country_name;
  final String location;
  final String carrier;
  final String line_type;

  PhoneDates({
    required this.number,
    required this.local_format,
    required this.international_format,
    required this.country_prefix,
    required this.country_code,
    required this.country_name,
    required this.location,
    required this.carrier,
    required this.line_type,
  });
}
