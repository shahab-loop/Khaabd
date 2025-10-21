import 'package:flutter/material.dart';
import 'package:khaabd/core/generated/assets.gen.dart';

class BaseScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final bool showBlurGlow;

  const BaseScaffold({
    super.key,
    this.appBar,
    required this.body,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.showBlurGlow = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF323B40),
      appBar: appBar,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            /// ✅ Show blur glow image centered in the stack
            if (showBlurGlow)
              Center(
                child: Image.asset(
                  Assets.images.ellipse.path,
                  opacity: const AlwaysStoppedAnimation(0.9),
                  fit: BoxFit.cover,
                ),
              ),

            /// ✅ Actual page body content
            body,
          ],
        ),
      ),
    );
  }
}
