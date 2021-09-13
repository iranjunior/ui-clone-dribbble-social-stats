import 'package:flutter/material.dart';
import 'package:social_stats/domain/entity/social.dart';

import 'package:social_stats/presenter/extensions/counter.dart';

class InformationMediaCard extends StatelessWidget {
  final int value;
  final String label;

  const InformationMediaCard({
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

class ListMediaCard extends StatelessWidget {
  final SocialMedia socialMedia;

  const ListMediaCard({
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
                  InformationMediaCard(
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
                  InformationMediaCard(
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
                  InformationMediaCard(
                    value: socialMedia.mentions!,
                    label: 'Mention',
                  ),
                  DividerVertical()
                ],
              )
            : SizedBox.shrink(),
        socialMedia.followers != null
            ? InformationMediaCard(
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
