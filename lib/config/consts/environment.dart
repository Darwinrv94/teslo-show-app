import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String apiUrl = dotenv.env['API_URL'] ?? 'No está configurada la API_URL';

  static Future<void> initEnvironment() async {
    await dotenv.load(fileName: '.env');
  }
}
