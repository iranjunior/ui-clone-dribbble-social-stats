import 'package:flutter/material.dart';

import 'package:social_stats/domain/entity/influencer.dart';
import 'package:social_stats/domain/entity/social.dart';
import 'package:social_stats/presenter/screens/home/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final influencer = Influencer(
    socialMedias: [
      SocialMedia(
        type: SocialMediaName.instagram,
        username: '_devmobile',
        name: 'Iran Junior | Dev Mobile',
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
        type: SocialMediaName.twitter,
        username: 'iranjunior94',
        name: 'Iran Junior | Dev Mobile',
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
        type: SocialMediaName.facebook,
        username: 'Dev Mobile',
        name: 'Iran Junior | Dev Mobile',
        likes: 5020,
        lastLikes: 2400,
        comments: 700,
        lastComments: 680,
        mentions: 160,
        lastMentions: 158,
        followers: 600,
        lastFollowers: 555,
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
