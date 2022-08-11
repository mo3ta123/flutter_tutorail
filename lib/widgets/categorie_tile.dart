import 'package:flutter/material.dart';

class CategorieTile extends StatelessWidget {
  const CategorieTile({Key? key, required this.title, required this.imageUrl})
      : super(key: key);
  final String title;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8, right: 16, left: 16),
      child: Container(
        height: 100,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: const Color.fromARGB(255, 42, 44, 54),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 23.0),
                child: Text(
                  title,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
