import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarHomePage extends StatelessWidget {
  const AppBarHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      snap: true,
      floating: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Container(
          color: Colors.black,
          child: Row(
            children: [
              Icon(
                Icons.auto_awesome,
                color: Theme.of(context).primaryColor,
              ),
              Text(
                'Exposur',
                style: Theme.of(context).textTheme.headline2,
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
