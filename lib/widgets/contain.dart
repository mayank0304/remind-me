import 'package:flutter/material.dart';

class Contain extends StatelessWidget {
  final IconData icon;
  final String title;
  final int? count;
  final Color color;
  const Contain(
      {super.key,
      required this.icon,
      required this.title,
      this.count,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.withOpacity(0.25)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  color: color,
                ),
                const Spacer(),
                Text(
                  title,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const Spacer(),
            (count != null)
                ? Text(
                    "$count",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                    ),
                  )
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
