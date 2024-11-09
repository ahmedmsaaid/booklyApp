import 'package:flutter/cupertino.dart';

import 'list_view_item.dart';

class CostumeListView extends StatelessWidget {
  const CostumeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.25,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: 10,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => const ListViewItem(),
      ),
    );
  }
}
