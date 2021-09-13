import 'package:flutter/material.dart';

import 'package:social_stats/domain/entity/social.dart';
import 'package:social_stats/presenter/screens/detail/widgets/widgets.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    Key? key,
    required this.socialMedia,
  }) : super(key: key);
  final SocialMedia socialMedia;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            AppBarDetailPage(),
            HeaderSummaryInfluencerData(socialMedia: widget.socialMedia),
            LikesGrowthChart(),
            CommentsGrowthChart(),
            FollowersGrowthChart(),
          ],
        ),
      ),
    );
  }
}
