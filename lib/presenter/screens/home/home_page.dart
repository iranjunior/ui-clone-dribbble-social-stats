import 'package:flutter/material.dart';

import 'package:social_stats/domain/entity/influencer.dart';
import 'package:social_stats/domain/entity/social.dart';
import 'package:social_stats/presenter/screens/home/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final influencer = Influencer(
    socialMedias: [
      SocialMedia(
        name: SocialMediaName.instagram,
        username: '_devmobile',
        likes: 2510,
        lastLikes: 2000,
        comments: 900,
        lastComments: 970,
        mentions: 325,
        lastMentions: 400,
        followers: 250,
        lastFollowers: 200,
      ),
      SocialMedia(
        name: SocialMediaName.twitter,
        username: 'iranjunior94',
        likes: 100,
        lastLikes: 25,
        comments: 15,
        lastComments: 10,
        mentions: 2,
        lastMentions: 0,
        followers: 100,
        lastFollowers: 99,
      ),
      SocialMedia(
        name: SocialMediaName.facebook,
        username: 'Dev Mobile',
        likes: 100,
        lastLikes: 25,
        comments: 15,
        lastComments: 10,
        mentions: 2,
        lastMentions: 0,
        followers: 100,
        lastFollowers: 99,
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          AppBarHomePage(),
          TitleApp(),
          SummaryInformationInfluencer(influencer: influencer),
          TitleSocialMedia(),
          ListSocialMediaInfluencer(influencer: influencer)
        ],
      ),
    );
  }
}
