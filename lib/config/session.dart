class Session {
  Session._();

  static String userid = '';

  // static String type = '';
  static String name = '';
  static String mobile = '';
  static String email = '';

  static preferaceData(
    String userid,
    // String type,
    String name,
    String mobile,
    String email,
  ) async {
    Session.userid = userid;
    // Session.type = type;
    Session.name = name;
    Session.mobile = mobile;
    Session.email = email;
  }
}
