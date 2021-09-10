import 'package:flutter/material.dart';
import 'package:social_stats/domain/entity/influencer.dart';
import 'package:social_stats/presenter/screens/home/widgets/summary_information.dart';

import 'package:social_stats/presenter/extensions/counter.dart';

class SummaryInformationInfluencer extends StatelessWidget {
  const SummaryInformationInfluencer({
    Key? key,
    required this.influencer,
  }) : super(key: key);
  final Influencer influencer;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Growth',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Spacer(),
              Icon(Icons.more_horiz)
            ],
          ),
          SizedBox(height: 16),
          Container(
            color: Theme.of(context).primaryColor,
            padding: const EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            child: Wrap(
              spacing: 4,
              runSpacing: 16,
              children: [
                SummaryInformation(
                  value: influencer.socialMedias.calculateLikes(),
                  lastValue: influencer.socialMedias.calculateLastLikes(),
                  type: 'Likes',
                ),
                SummaryInformation(
                  value: influencer.socialMedias.calculateComments(),
                  lastValue: influencer.socialMedias.calculateLastComments(),
                  type: 'Comments',
                ),
                SummaryInformation(
                  value: influencer.socialMedias.calculateMention(),
                  lastValue: influencer.socialMedias.calculateLastMention(),
                  type: 'Mention',
                ),
                SummaryInformation(
                  value: influencer.socialMedias.calculateFollowers(),
                  lastValue: influencer.socialMedias.calculateLastFollowers(),
                  type: 'Follow',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
