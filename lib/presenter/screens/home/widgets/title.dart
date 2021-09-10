import 'package:flutter/material.dart';

class TitleApp extends StatelessWidget {
  const TitleApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      sliver: SliverToBoxAdapter(
        child: Text(
          'Social Media Influencer Analytic',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
