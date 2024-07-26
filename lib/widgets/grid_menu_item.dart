import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class GridMenuItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final double progress;

  const GridMenuItem({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.progress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Expanded(child: Container()),
                CircularPercentIndicator(
                  radius: 20.0,
                  lineWidth: 4.0,
                  percent: progress,
                  center: Text(
                    "${(progress * 100).toInt()}%",
                    style: TextStyle(fontSize: 10),
                  ),
                  progressColor: Colors.red,
                ),
              ],
            ),
          ),
          Positioned(
            right: -84,
            bottom: -60,
            child: Image.asset(
              imagePath,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
