import 'package:flutter/material.dart';

class AppBarDetailPage extends StatelessWidget {
  const AppBarDetailPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text('Dashboard', style: Theme.of(context).textTheme.bodyText1),
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Icon(
            Icons.more_horiz,
          ),
        )
      ],
    );
  }
}
