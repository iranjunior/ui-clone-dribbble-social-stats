import 'package:flutter/material.dart';

import 'package:social_stats/presenter/extensions/counter.dart';

class SummaryInformation extends StatelessWidget {
  const SummaryInformation({
    Key? key,
    required this.type,
    required this.value,
    required this.lastValue,
  }) : super(key: key);
  final String type;
  final int value;
  final int lastValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 160,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  type,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Text(
                  value.avgValue(lastValue),
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: lastValue > value
                            ? Colors.orange.shade800
                            : Colors.green.shade800,
                      ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  _getIconByType(type),
                  color: Colors.black,
                  size: 36,
                ),
                Text(
                  value.abbreviation(),
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  IconData _getIconByType(String value) {
    if (value == 'Likes') return Icons.favorite;
    if (value == 'Follow') return Icons.people_alt;
    if (value == 'Mention') return Icons.alternate_email;
    if (value == 'Comments') return Icons.chat_bubble;
    return Icons.favorite;
  }
}
