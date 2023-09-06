import 'package:url_launcher/url_launcher.dart' as urlLauncher;


class PhoneCallUtils {
  PhoneCallUtils._();

  static Future<void> callPhoneNumber(
    String number,
  ) async {
    final Uri phoneUrl = Uri(
      scheme: 'tel',
      path: number,
    );

    urlLauncher.launchUrl(phoneUrl);
  }
}
