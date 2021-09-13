import 'package:flutter/material.dart';
import 'package:social_stats/presenter/screens/detail/widgets/chart_comments.dart';
import 'package:social_stats/presenter/widgets/fade_animation.dart';

class FollowersGrowthChart extends StatelessWidget {
  const FollowersGrowthChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      sliver: SliverToBoxAdapter(
        child: FadeAnimation(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Followers Growth',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      '3m',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 12,
                            color: Colors.white.withOpacity(0.6),
                          ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      '6m',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 12,
                            color: Colors.white.withOpacity(0.6),
                          ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      '1y',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 12,
                            color: Theme.of(context).primaryColor,
                          ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: BarChartCommentsGrowth(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
