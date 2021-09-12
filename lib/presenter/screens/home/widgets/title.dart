import 'package:flutter/material.dart';
import 'package:social_stats/presenter/widgets/fade_animation.dart';

class TitleApp extends StatelessWidget {
  const TitleApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      sliver: SliverToBoxAdapter(
        child: FadeAnimation(
          child: Text(
            'Social Media Influencer Analytic',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
