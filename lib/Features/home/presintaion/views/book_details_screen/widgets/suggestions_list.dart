import 'package:bookly_app/Features/home/presintaion/views/book_details_screen/widgets/Suggestions_item.dart';
import 'package:flutter/cupertino.dart';

class CostumeListView extends StatelessWidget {
  const CostumeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.15,
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
            width: 10,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => const SuggestionsItems(),
        ),
      ),
    );
  }
}
