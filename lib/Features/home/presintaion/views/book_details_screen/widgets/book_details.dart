import 'package:bookly_app/core/utilis/styles.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "The Jungle Book",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "The Jungle Book",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.normal, color: Colors.grey),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
              ),
              Text(
                "4.5",
                style: Styles.bodyStyle.copyWith(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "(2500)",
                style:
                    Styles.bodyStyle.copyWith(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        )
      ],
    );
  }
}
