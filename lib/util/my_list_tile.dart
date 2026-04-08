import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String iconImagePath;
  final String tileTitle;
  final String tileSubtitle;

  const MyListTile({
    Key? key,
    required this.iconImagePath,
    required this.tileTitle,
    required this.tileSubtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: [
          Container(
            height: 80,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(iconImagePath),
          ),

          SizedBox(width: 20),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tileTitle,
                  style: TextStyle(color: Colors.grey[300], fontWeight:  FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 8),
                Text(
                  tileSubtitle,
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
