import 'package:flutter/material.dart';

class ProgressTracker extends StatelessWidget {
  final int currentStep;

  ProgressTracker({required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buildStep('Pemesanan', 1, currentStep),
            _buildConnector(),
            _buildStep('Administrasi', 2, currentStep),
            _buildConnector(),
            _buildStep('Pembangunan', 3, currentStep),
            _buildConnector(),
            _buildStep('Serah Terima', 4, currentStep),
          ],
        ),
      ),
    );
  }

  Widget _buildStep(String title, int step, int currentStep) {
    bool isCompleted = step < currentStep;
    bool isActive = step == currentStep;

    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 10.0,
          backgroundColor:
              isCompleted || isActive ? Colors.green : Colors.grey,
          child: isCompleted
              ? Icon(Icons.check, color: Colors.white, size: 12.0)
              : isActive
                  ? Icon(Icons.hourglass_empty, color: Colors.white, size: 12.0)
                  : Container(),
        ),
        SizedBox(height: 2.0),
        Text(
          title,
          style: TextStyle(
            fontSize: 9.0,
            fontWeight: FontWeight.bold,
            color: isCompleted || isActive ? Colors.green : Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildConnector() {
    return Expanded(
      child: Divider(
        color: Colors.grey,
        thickness: 0.5,
      ),
    );
  }
}
