import 'package:flutter/material.dart';

class AppFaderEffect extends StatelessWidget {
  const AppFaderEffect({
    super.key,
    required bool atBottom,
  }) : _atBottom = atBottom;

  final bool _atBottom;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: AnimatedOpacity(
        opacity: _atBottom ? 1 : 0,
        duration: const Duration(milliseconds: 400),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter,
              colors: Theme.of(context).brightness == Brightness.dark
                  ? [
                      Colors.indigo.withOpacity(0.8),
                      Colors.indigo.withOpacity(0.6),
                      Colors.indigo.withOpacity(0.4),
                      Colors.indigo.withOpacity(0.2),
                      Colors.transparent,
                    ]
                  : [
                      Colors.red.withOpacity(0.8),
                      Colors.red.withOpacity(0.6),
                      Colors.red.withOpacity(0.4),
                      Colors.red.withOpacity(0.2),
                      Colors.transparent,
                    ],
              stops: const [0.1, 0.3, 0.5, 0.7, 1.0],
            ),
          ),
        ),
      ),
    );
  }
}
