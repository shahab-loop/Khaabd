import 'package:flutter/material.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';

class CustomSmallContainer extends StatefulWidget {
  final String text;
  final double height;
  final double width;
  final Color backgroundColor;
  final String? backgroundImagePath; // optional background image
  final Color textColor;
  final Color tappedTextColor;
  final VoidCallback? onTap;
  final String imagePath; // avatar image

  const CustomSmallContainer({
    super.key,
    required this.text,
    this.height = 40,
    this.width = 108,
    required this.backgroundColor,
    this.backgroundImagePath,
    this.textColor = Colors.black,
    required this.tappedTextColor ,
    this.onTap,
    required this.imagePath,
  });

  @override
  _CustomSmallContainerState createState() => _CustomSmallContainerState();
}

class _CustomSmallContainerState extends State<CustomSmallContainer> {
  bool _isTapped = false;

  void _handleTap() {
    setState(() {
      _isTapped = !_isTapped;
    });
    widget.onTap?.call();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        height: widget.height,
        width: widget.width,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: widget.backgroundColor,
          image: widget.backgroundImagePath != null
              ? DecorationImage(
            image: AssetImage(widget.backgroundImagePath!),
            fit: BoxFit.cover,
          )
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: widget.height / 2 - 4,
              backgroundImage: AssetImage(widget.imagePath),
            ),
            const SizedBox(width: 5),
            Flexible(
              child: Text(
                widget.text,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: _isTapped ? widget.tappedTextColor : widget.textColor,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
