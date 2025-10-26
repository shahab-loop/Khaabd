import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomListWidget extends StatelessWidget {
  const CustomListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {
        "color": Colors.blueAccent,
        "height": 150.0,
        "width": double.infinity,
        "image": "https://picsum.photos/200",
        "text": "Beautiful Blue Box",
        "svg": "assets/icons/star.svg",
      },
      {
        "color": Colors.orangeAccent,
        "height": 130.0,
        "width": double.infinity,
        "image": "https://picsum.photos/250",
        "text": "Vibrant Orange Box",
        "svg": "assets/icons/heart.svg",
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Container(
          margin: const EdgeInsets.only(bottom: 16),
          height: item["height"],
          width: item["width"],
          decoration: BoxDecoration(
            color: item["color"],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                child: Image.network(
                  item["image"],
                  width: 100,
                  height: item["height"],
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item["text"],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    SvgPicture.asset(
                      item["svg"],
                      width: 24,
                      height: 24,
                      colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
