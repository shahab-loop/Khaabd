import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:khaabd/core/generated/assets.gen.dart';


  void _showImageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Stack(
          children: [  ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              Assets.images.delicious.path,
              fit: BoxFit.fill,
            ),
          ),

            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: SvgPicture.asset(Assets.svgs.cross),
            ),],
        ),
      ),
    );
  }
