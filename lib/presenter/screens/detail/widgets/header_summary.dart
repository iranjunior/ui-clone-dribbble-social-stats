import 'package:flutter/material.dart';
import 'package:social_stats/domain/entity/social.dart';
import 'package:social_stats/presenter/widgets/data_social_stats.dart';
import 'package:social_stats/presenter/widgets/fade_animation.dart';

class HeaderSummaryInfluencerData extends StatelessWidget {
  const HeaderSummaryInfluencerData({
    Key? key,
    required this.socialMedia,
  }) : super(key: key);

  final SocialMedia socialMedia;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: FadeAnimation(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _TitleSocialMediaCard(socialMedia: socialMedia),
            ListMediaCard(socialMedia: socialMedia),
          ],
        ),
      ),
    );
  }
}

class _TitleSocialMediaCard extends StatelessWidget {
  final SocialMedia socialMedia;
  final VoidCallback? onPressed;

  const _TitleSocialMediaCard({
    Key? key,
    required this.socialMedia,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: _getImageLogoBySocialMediaName(
                  socialMedia.type,
                ),
                fit: BoxFit.cover,
                // invert color
                colorFilter: ColorFilter.matrix(<double>[
                  -1,
                  0,
                  0,
                  0,
                  255,
                  0,
                  -1,
                  0,
                  0,
                  255,
                  0,
                  0,
                  -1,
                  0,
                  255,
                  0,
                  0,
                  0,
                  1,
                  0,
                ]),
              ),
            ),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '@' + socialMedia.username,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  socialMedia.name!,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.4),
                      ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  ImageProvider _getImageLogoBySocialMediaName(SocialMediaName name) {
    if (name == SocialMediaName.instagram) {
      return AssetImage('lib/presenter/assets/instagram.png');
    }
    if (name == SocialMediaName.twitter) {
      return AssetImage('lib/presenter/assets/twitter.png');
    } else {
      return AssetImage('lib/presenter/assets/facebook.png');
    }
  }
}
