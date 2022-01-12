// ignore: non_constant_identifier_names
final String _stagging_url =
    'http://ec2-177-71-159-147.sa-east-1.compute.amazonaws.com:12345/api';
// ignore: non_constant_identifier_names
final String _local_url = "http://192.168.1.7:12345/api";

class GenericProvider {
  String getStaginURL() {
    return _stagging_url;
  }

  String getLocalUrl() {
    return _local_url;
  }
}
