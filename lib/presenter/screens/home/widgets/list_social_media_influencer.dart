import 'package:flutter/material.dart';
import 'package:social_stats/domain/entity/influencer.dart';
import 'package:social_stats/domain/entity/social.dart';

import 'package:social_stats/presenter/extensions/counter.dart';

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
              (socialMedia) => Card(
                elevation: 0,
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _TitleSocialMediaCard(socialMedia: socialMedia),
                      _ListMediaCard(socialMedia: socialMedia),
                    ],
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
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: _getImageLogoBySocialMediaName(
                socialMedia.name,
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
          disabledColor: Colors.white,
          icon: Icon(Icons.arrow_forward_ios),
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

class _InformationMediaCard extends StatelessWidget {
  final int value;
  final String label;

  const _InformationMediaCard({
    Key? key,
    required this.value,
    required this.label,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            value.abbreviation(),
            style: Theme.of(context).textTheme.bodyText2,
          ),
          SizedBox(height: 8),
          Text(
            label,
            style: Theme.of(context).textTheme.subtitle2,
          )
        ],
      ),
    );
  }
}

class _ListMediaCard extends StatelessWidget {
  final SocialMedia socialMedia;

  const _ListMediaCard({
    Key? key,
    required this.socialMedia,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        socialMedia.likes != null
            ? Row(
                children: [
                  _InformationMediaCard(
                    value: socialMedia.likes!,
                    label: 'Likes',
                  ),
                  DividerVertical()
                ],
              )
            : SizedBox.shrink(),
        socialMedia.comments != null
            ? Row(
                children: [
                  _InformationMediaCard(
                    value: socialMedia.comments!,
                    label: 'Comments',
                  ),
                  DividerVertical()
                ],
              )
            : SizedBox.shrink(),
        socialMedia.mentions != null
            ? Row(
                children: [
                  _InformationMediaCard(
                    value: socialMedia.mentions!,
                    label: 'Mention',
                  ),
                  DividerVertical()
                ],
              )
            : SizedBox.shrink(),
        socialMedia.followers != null
            ? _InformationMediaCard(
                value: socialMedia.followers!,
                label: 'Follower',
              )
            : SizedBox.shrink()
      ],
    );
  }
}

class DividerVertical extends StatelessWidget {
  final double _height;
  final double _width;
  final Color _color;

  const DividerVertical({
    Key? key,
    double height = 55.0,
    double width = 0.5,
    Color color = Colors.white70,
  })  : _height = height,
        _width = width,
        _color = color,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      width: _width,
      color: _color,
    );
  }
}
