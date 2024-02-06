import 'package:flutter/material.dart';
import 'package:primer_progress_bar/primer_progress_bar.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 16,
      ),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('Anna Petrovna'), Text('City name')],
                ),
                CircleAvatar()
              ],
            ),
            const Text('April'),
            const PrimerProgressBar(segments: [
              Segment(value: 80, color: Colors.purple, label: Text("Done")),
              Segment(
                  value: 14,
                  color: Colors.deepOrange,
                  label: Text("In progress")),
              Segment(value: 20, color: Colors.green, label: Text("Open")),
            ]),
            GestureDetector(
                onTap: () {},
                child: Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(color: Colors.green),
                ))
          ],
        ),
      ),
    );
  }
}
