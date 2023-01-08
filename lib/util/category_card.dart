import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final iconImagePath;
  final String categoryName;

  CategoryCard({required this.iconImagePath, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        child: Row(
          children: [
            Image.asset(
              iconImagePath,
              height: 20,
            ),
            SizedBox(width: 10,),
            Text(categoryName)
          ],
        ),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
