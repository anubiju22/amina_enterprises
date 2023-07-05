class BaseUrl {
  String noImageUrl =
      "https://t4.ftcdn.net/jpg/04/99/93/31/240_F_499933117_ZAUBfv3P1HEOsZDrnkbNCt4jc3AodArl.jpg";

  ///[staging]/////
  // String baseUrl = "http://stagging.vkcparivar.com/api/";
  // String imageUrl = "http://stagging.vkcparivar.com/";
  // String retailerImage1 =
  //     "http://stagging.vkcparivar.com/uploads/profile/retailer/";

  ///[live]/////
  String baseUrl = "http://vkcparivar.com/api/";
  String imageUrl = "http://vkcparivar.com/";
  String retailerImage1 = "http://vkcparivar.com/uploads/profile/retailer/";
  // paymemt report url
  String outstandingReportApiUrl =
      "http://117.247.179.120:9099/parivar-api/dealer/";
  String homeeventSchemeUrl = "https://events.vkcparivar.com/api/";
}

class AppSettings {
  //String appVersionNo = '1.0.91'; // db version no
  // App version
  String appVersionNo = '1.0.215'; // db version no
  String appIosVersionNo = '1.0.0'; // db version no
  String appBuildNo = '1.0.221'; // pub version no
  int timeout = 20;
}
