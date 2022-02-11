import 'package:buffer_error_demo/ad_state.provider.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';

class AdBannerWidget extends StatefulWidget {
  const AdBannerWidget({Key? key}) : super(key: key);

  @override
  State<AdBannerWidget> createState() => _AdBannerWidgetState();
}

class _AdBannerWidgetState extends State<AdBannerWidget> {
  BannerAd? banner;
  double get _adWidth => MediaQuery.of(context).size.width - (2 * 8);

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final adStateProvider = Provider.of<AdStateProvider>(context, listen: false);

    adStateProvider.initialization.then((status) {
      setState(() {
        banner = BannerAd(
          adUnitId: adStateProvider.bannerAdUnitId,
          size: AdSize.getInlineAdaptiveBannerAdSize(_adWidth.truncate(), 50),
          request: const AdRequest(),
          listener: adStateProvider.adListener,
        )..load();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: banner == null
          ? const Center(child: CircularProgressIndicator())
          : AdWidget(
              ad: banner!,
            ),
    );
  }
}
