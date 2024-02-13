import 'package:flutter/material.dart';
import 'package:sliver/widget/search_field.dart';

class HeaderSliverSecondPage extends StatelessWidget {
  const HeaderSliverSecondPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: true,
            toolbarHeight: 0,
            title: Container(
              height: 10,
              color: Colors.cyan,
            ),
            expandedHeight: 400,
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: SearchField(),
            ),
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