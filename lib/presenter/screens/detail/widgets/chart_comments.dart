import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartCommentsGrowth extends StatefulWidget {
  @override
  _BarChartCommentsGrowthState createState() => _BarChartCommentsGrowthState();
}

class _BarChartCommentsGrowthState extends State<BarChartCommentsGrowth> {
  List<Color> gradientColors = [
    const Color(0xffA6FB19),
    const Color(0xffA6FB19),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 2,
          child: Container(
            color: Theme.of(context).canvasColor,
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 18.0, left: 12.0, top: 24, bottom: 12),
              child: BarChart(
                BarChartData(
                  gridData: FlGridData(
                    show: false,
                  ),
                  titlesData: FlTitlesData(
                    show: true,
                    rightTitles: SideTitles(showTitles: false),
                    topTitles: SideTitles(showTitles: false),
                    bottomTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 22,
                      interval: 1,
                      getTextStyles: (context, value) =>
                          Theme.of(context).textTheme.bodyText1!.copyWith(
                                fontSize: 14,
                                color: Colors.white.withOpacity(0.6),
                              ),
                      getTitles: (value) {
                        switch (value.toInt()) {
                          case 0:
                            return 'Jan';
                          case 2:
                            return 'Feb';

                          case 4:
                            return 'Mar';

                          case 6:
                            return 'Apr';

                          case 8:
                            return 'May';

                          case 10:
                            return 'Jun';
                        }
                        return '';
                      },
                      margin: 8,
                    ),
                    leftTitles: SideTitles(
                      showTitles: true,
                      interval: 1,
                      getTextStyles: (context, value) =>
                          Theme.of(context).textTheme.bodyText1!.copyWith(
                                fontSize: 14,
                                color: Colors.white.withOpacity(0.6),
                              ),
                      getTitles: (value) {
                        switch (value.toInt()) {
                          case 2:
                            return '10k';
                          case 6:
                            return '30k';
                          case 10:
                            return '50k';
                        }
                        return '';
                      },
                      reservedSize: 32,
                      margin: 12,
                    ),
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  minY: 0,
                  maxY: 10,
                  barGroups: [
                    BarChartGroupData(x: 0, barsSpace: 0, barRods: [
                      BarChartRodData(
                        y: 4,
                        borderSide: BorderSide.none,
                        width: 25,
                        colors: [
                          Color(0xffA6FB19).withOpacity(0),
                          Color(0xffA6FB19),
                        ],
                        borderRadius: BorderRadius.all(Radius.zero),
                      )
                    ]),
                    BarChartGroupData(x: 1, barsSpace: 0, barRods: [
                      BarChartRodData(
                        y: 6,
                        colors: [
                          Color(0xffA6FB19).withOpacity(0),
                          Color(0xffA6FB19),
                        ],
                        borderSide: BorderSide.none,
                        width: 25,
                        borderRadius: BorderRadius.all(Radius.zero),
                      )
                    ]),
                    BarChartGroupData(x: 2, barsSpace: 0, barRods: [
                      BarChartRodData(
                        y: 8,
                        colors: [
                          Color(0xffA6FB19).withOpacity(0),
                          Color(0xffA6FB19),
                        ],
                        borderSide: BorderSide.none,
                        width: 25,
                        borderRadius: BorderRadius.all(Radius.zero),
                      )
                    ]),
                    BarChartGroupData(x: 3, barsSpace: 0, barRods: [
                      BarChartRodData(
                        y: 8,
                        colors: [
                          Color(0xffA6FB19).withOpacity(0),
                          Color(0xffA6FB19),
                        ],
                        borderSide: BorderSide.none,
                        width: 25,
                        borderRadius: BorderRadius.all(Radius.zero),
                      )
                    ]),
                    BarChartGroupData(x: 4, barsSpace: 0, barRods: [
                      BarChartRodData(
                        y: 7,
                        colors: [
                          Color(0xffA6FB19).withOpacity(0),
                          Color(0xffA6FB19),
                          Color(0xffA6FB19),
                        ],
                        borderSide: BorderSide.none,
                        width: 25,
                        borderRadius: BorderRadius.all(Radius.zero),
                      )
                    ]),
                    BarChartGroupData(x: 5, barsSpace: 0, barRods: [
                      BarChartRodData(
                        y: 4,
                        colors: [
                          Color(0xffA6FB19).withOpacity(0),
                          Color(0xffA6FB19),
                        ],
                        borderSide: BorderSide.none,
                        width: 25,
                        borderRadius: BorderRadius.all(Radius.zero),
                      )
                    ]),
                    BarChartGroupData(x: 6, barsSpace: 0, barRods: [
                      BarChartRodData(
                        y: 8,
                        colors: [
                          Color(0xffA6FB19).withOpacity(0),
                          Color(0xffA6FB19),
                        ],
                        borderSide: BorderSide.none,
                        width: 25,
                        borderRadius: BorderRadius.all(Radius.zero),
                      )
                    ]),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
