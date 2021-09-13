import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartLikesGrowth extends StatefulWidget {
  @override
  _LineChartLikesGrowthState createState() => _LineChartLikesGrowthState();
}

class _LineChartLikesGrowthState extends State<LineChartLikesGrowth> {
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
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(
                    show: false,
                  ),
                  lineTouchData: LineTouchData(
                    enabled: true,
                    getTouchedSpotIndicator: (lineChartBarData, list) {
                      return [
                        TouchedSpotIndicatorData(
                          FlLine(
                              color: Color(0xffA6FB19),
                              strokeWidth: 2,
                              dashArray: [10, 5]),
                          FlDotData(
                            show: true,
                            getDotPainter:
                                (flSpot, numberDot, linearBar, value) {
                              return FlDotCirclePainter(
                                  color: Color(0xffA6FB19),
                                  radius: 6,
                                  strokeWidth: 2,
                                  strokeColor: Colors.black);
                            },
                          ),
                        )
                      ];
                    },
                    touchTooltipData: LineTouchTooltipData(
                      tooltipBgColor: Color(0xffA6FB19),
                      getTooltipItems: (value) {
                        return value
                            .map(
                              (spot) => LineTooltipItem(
                                '${spot.y.toInt()} Likes',
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: Colors.black,
                                    ),
                              ),
                            )
                            .toList();
                      },
                    ),
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
                  minX: 0,
                  maxX: 7,
                  minY: 0,
                  maxY: 10,
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 2),
                        FlSpot(1, 4),
                        FlSpot(3, 4),
                        FlSpot(5, 8),
                        FlSpot(7, 8),
                      ],
                      isCurved: false,
                      colors: gradientColors,
                      barWidth: 3,
                      isStrokeCapRound: true,
                      dotData: FlDotData(
                        show: false,
                      ),
                      belowBarData: BarAreaData(
                        show: true,
                        gradientColorStops: [0.5, 1.0],
                        gradientFrom: Offset(0, 0),
                        gradientTo: Offset(0, 1),
                        colors: [
                          Color(0xffA6FB19).withOpacity(0.3),
                          Color(0xffA6FB19).withOpacity(0),
                        ],
                      ),
                    ),
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
