import 'package:flutter/material.dart';
import 'package:social_stats/presenter/widgets/fade_animation.dart';

class TitleSocialMedia extends StatelessWidget {
  const TitleSocialMedia({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      sliver: SliverToBoxAdapter(
        child: FadeAnimation(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Social Media Account',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Icon(Icons.more_horiz)
            ],
          ),
        ),
      ),
    );
  }
}
