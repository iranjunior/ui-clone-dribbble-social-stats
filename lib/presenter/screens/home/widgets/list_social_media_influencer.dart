import 'package:flutter/material.dart';
import 'package:social_stats/domain/entity/influencer.dart';
import 'package:social_stats/domain/entity/social.dart';
import 'package:social_stats/presenter/widgets/data_social_stats.dart';
import 'package:social_stats/presenter/widgets/fade_animation.dart';
import 'package:social_stats/shared/route_management.dart';

class ListSocialMediaInfluencer extends StatelessWidget {
  const ListSocialMediaInfluencer({
    Key? key,
    required this.influencer,
  }) : super(key: key);

  final Influencer influencer;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        influencer.socialMedias
            .map<Widget>(
              (socialMedia) => FadeAnimation(
                child: Card(
                  elevation: 0,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _TitleSocialMediaCard(
                          socialMedia: socialMedia,
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              DetailAppRoute.route.name,
                              arguments: DetailAppArguments(
                                socialMedia: socialMedia,
                              ),
                            );
                          },
                        ),
                        ListMediaCard(socialMedia: socialMedia),
                      ],
                    ),
                  ),
                ),
              ),
            )
            .toList(),
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
    return Row(
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
        Text(
          socialMedia.username,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        Spacer(),
        IconButton(
          onPressed: onPressed,
          disabledColor: Colors.white60,
          icon: Icon(Icons.arrow_forward_ios),
          iconSize: 20,
          color: Colors.white60,
        ),
      ],
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

