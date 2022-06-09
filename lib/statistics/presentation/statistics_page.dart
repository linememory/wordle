import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wordle/statistics/presentation/bars.dart';
import 'package:wordle/statistics/shared/providers.dart';

class StatisticsPage extends ConsumerWidget {
  const StatisticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statistics = ref.watch(statisticsProvider);
    const List<Color> colors = [
      Colors.green,
      Colors.lightGreen,
      Colors.yellow,
      Colors.amber,
      Colors.orange,
      Colors.red
    ];

    const VisualDensity density = VisualDensity(
      horizontal: VisualDensity.minimumDensity,
      vertical: VisualDensity.minimumDensity,
    );
    return Scaffold(
      appBar: AppBar(title: const Text('Statistics')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                child: Column(
                  children: [
                    ListTile(
                      visualDensity: density,
                      leading: const Text("Games played: "),
                      title: Text(statistics.games.toString()),
                    ),
                    ListTile(
                      visualDensity: density,
                      leading: const Text("Games won: "),
                      title: Text(
                        '${((statistics.games - statistics.results[statistics.results.length - 1]) * 100 / (statistics.games + 0.00001)).ceil()}%',
                      ),
                    ),
                    ListTile(
                      visualDensity: density,
                      leading: const Text("Current streak: "),
                      title: Text(
                        statistics.streak.toString(),
                      ),
                    ),
                    ListTile(
                      visualDensity: density,
                      leading: const Text("Longes streak: "),
                      title: Text(
                        statistics.longestStreak.toString(),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                child: Center(
                  child: Bars(
                    bars: statistics.results
                        .sublist(0, statistics.results.length - 1)
                        .asMap()
                        .entries
                        .map(
                          (e) => BarData(
                            (e.key + 1).toString(),
                            e.value,
                            colors[e.key],
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
