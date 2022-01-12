const String staggingUrl = 
  'http://ec2-177-71-159-147.sa-east-1.compute.amazonaws.com:12345/api';

class GenericProvider {
  String getStagingUrl (){
    return staggingUrl;
  }
}