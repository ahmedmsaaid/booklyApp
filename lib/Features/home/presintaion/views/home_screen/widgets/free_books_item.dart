import 'package:bookly_app/Features/home/presintaion/views/book_details_screen/book_deatils_screen.dart';
import 'package:bookly_app/core/utilis/app_router.dart';
import 'package:bookly_app/core/utilis/assets.dart';
import 'package:bookly_app/core/utilis/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetails);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            SizedBox(
              height: 150,
              child: AspectRatio(
                  aspectRatio: 2.8 / 4,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            image: AssetImage(AssetsData.test),
                            fit: BoxFit.fill)),
                  )),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      "Harry Potter and the Goblet of Fire",
                      style: Styles.bodyStyle.copyWith(fontSize: 20),
                    ),
                  ),
                  Text(
                    "J.K. Rowling",
                    style: Styles.bodyStyle
                        .copyWith(fontSize: 12, color: Colors.grey),
                  ),
                  Row(children: [
                    Text(
                      "19.99 \€",
                      style: Styles.bodyStyle.copyWith(fontSize: 20),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          "(1500)",
                          style: Styles.bodyStyle
                              .copyWith(fontSize: 18, color: Colors.grey),
                        ),
                      ],
                    ),
                  ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
