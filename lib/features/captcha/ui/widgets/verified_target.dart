import 'package:rive/rive.dart';
import 'package:flutter/material.dart';

class VerifiedTarget extends StatefulWidget {
  const VerifiedTarget({super.key});

  @override
  State<VerifiedTarget> createState() => _VerifiedTargetState();
}

class _VerifiedTargetState extends State<VerifiedTarget> {
  final _loadingNotifier = ValueNotifier(true);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        await Future.delayed(const Duration(milliseconds: 1500));
        _loadingNotifier.value = false;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: ValueListenableBuilder(
        valueListenable: _loadingNotifier,
        builder: (_, bool isLoading, __) {
          if (isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.green,
              ),
            );
          }

          return const RiveAnimation.asset(
            'assets/rive/check_mark_icon2.riv',
            fit: BoxFit.cover,
            animations: ['show'],
          );
        },
      ),
    );
  }
}
