import 'dart:html' as html;
import 'package:flutter/services.dart' show ByteData, rootBundle;

class DownloadService {

  static Future<void> downloadCV() async {
    try {
      final ByteData data = await rootBundle.load('assets/Jonathan Poveda - FullStack Mobile Developer.pdf');
      final List<int> bytes = data.buffer.asUint8List();

      final blob = html.Blob([bytes]);

      final url = html.Url.createObjectUrlFromBlob(blob);

      final anchor = html.AnchorElement(href: url)
        ..setAttribute("download", "Jonathan Poveda - FullStack Mobile Developer.pdf")
        ..click();

      html.Url.revokeObjectUrl(url);
    } catch (e) {
      print('Error in CV download: $e');
    }
  }

}