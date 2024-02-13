import 'package:flutter/material.dart';
import 'package:sliver/widget/search_field.dart';

class HeaderSliverFirstPage extends StatelessWidget {
  const HeaderSliverFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar.large(
            floating: false,
            pinned: true,
            snap: false,
            title: Text("Home page"),
            // actions: [
            //   IconButton(
            //     onPressed: () {}, 
            //     icon: const Icon(Icons.search)
            //   )
            // ],
            elevation: 0,
            surfaceTintColor: Colors.transparent,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(70), 
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

