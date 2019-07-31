import 'package:aad_oauth/aad_oauth.dart';
import 'package:aad_oauth/model/config.dart';

class AuthProvider {
  static String azureClientId = "d0fc0aa6-c341-464c-992f-64e571b9c17a";
  static String azureTenant = "29fa8797-b4ea-49ca-aa2b-443d88286ed1";

  static final Config config = new Config(
    azureTenant,
    azureClientId,
    "openid profile offline_access",
    "https://login.live.com/oauth20_desktop.srf",
  );

  // TODO: This needs to be set at some point
  // var screenSize = MediaQuery.of(context).size;
  // var rectSize =  Rect.fromLTWH(0.0, 25.0, screenSize.width, screenSize.height - 25);
  // oauth.setWebViewScreenSize(rectSize);

  final AadOAuth oauth = AadOAuth(config);

  Future<String> login() async {
    try {
      await oauth.login();
      return await oauth.getAccessToken();
    } catch (e) {

    }
  }

  void logout() async {
    await oauth.logout();
  }
}
