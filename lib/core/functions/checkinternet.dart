import 'dart:io';

checkInternet() async {

try{
var checkNet = await InternetAddress.lookup("google.com");
if (checkNet.isNotEmpty && checkNet[0].rawAddress.isNotEmpty) {
  return true;
}
}

on SocketException catch(_) {
return false;
}
}