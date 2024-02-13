import 'package:flutter/material.dart';
import 'package:sliver/widget/search_field.dart';

class HeaderSliverSecondPage extends StatelessWidget {
  const HeaderSliverSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            floating: true,
            pinned: false,
            snap: true,
            title: SearchField(),
          ),
          SliverList.builder(
            itemBuilder: (context, index) => Container(
              width: double.infinity,
              height: 80,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
            )
          )
        ],
      ),
    );
  }
}