import 'dart:html' as html;
import 'package:flutter/services.dart' show ByteData, rootBundle;

class DownloadService {

  static Future<void> downloadCV() async {
    try {
      final ByteData data = await rootBundle.load('assets/jonathan_poveda_cv.pdf');
      final List<int> bytes = data.buffer.asUint8List();

      final blob = html.Blob([bytes]);

      final url = html.Url.createObjectUrlFromBlob(blob);

      final anchor = html.AnchorElement(href: url)
        ..setAttribute("download", "jonathan_poveda_cv.pdf")
        ..click();

      html.Url.revokeObjectUrl(url);
    } catch (e) {
      print('Error in CV download: $e');
    }
  }

}