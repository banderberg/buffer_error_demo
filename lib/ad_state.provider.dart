import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdStateProvider {
  Future<InitializationStatus> initialization;

  AdStateProvider(this.initialization);

  String get bannerAdUnitId => 'ca-app-pub-3940256099942544/6300978111';

  BannerAdListener get adListener => _adListener;

  final BannerAdListener _adListener = BannerAdListener(
    onAdLoaded: (ad) => print('Ad loaded: ${ad.adUnitId}'),
    onAdFailedToLoad: (ad, error) {
      print('Banner ad failed to load: ${error.message}');
    },
  );
}
