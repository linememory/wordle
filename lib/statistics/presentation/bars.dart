import 'package:flutter/material.dart';

class Bars extends StatelessWidget {
  const Bars({Key? key, required this.bars}) : super(key: key);

  final List<BarData> bars;

  @override
  Widget build(BuildContext context) {
    num maxValue = 0;
    for (final barData in bars) {
      if (barData.value > maxValue) maxValue = barData.value;
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: bars.map<Widget>(
          (barData) {
            final int percent =
                maxValue == 0 ? 0 : ((barData.value / maxValue) * 100).toInt();
            const double barHeight = 24;
            return Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 40,
                      child: Text(
                        '${barData.text}: ',
                      ),
                    ),
                    Expanded(
                      child: _Bar(
                        percent: percent,
                        barHeight: barHeight,
                        color: barData.color,
                        value: barData.value.toInt(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            );
          },
        ).toList(),
      ),
    );
  }
}

class _Bar extends StatelessWidget {
  const _Bar({
    Key? key,
    required this.percent,
    required this.barHeight,
    required this.color,
    required this.value,
  }) : super(key: key);

  final int percent;
  final double barHeight;

  final Color color;

  final int value;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Flexible(
              flex: percent,
              child: Container(
                color: color,
                height: barHeight,
              ),
            ),
            Flexible(
              flex: 100 - percent,
              child: Container(
                color: color.withOpacity(0.1),
                height: barHeight,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Container(
            height: barHeight,
            alignment: Alignment.centerLeft,
            child: Text(
              value.toString(),
            ),
          ),
        ),
      ],
    );
  }
}

class BarData {
  final String text;
  final num value;
  final Color color;

  BarData(this.text, this.value, this.color);
}
