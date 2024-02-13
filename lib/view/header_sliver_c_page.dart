import 'package:flutter/material.dart';
import 'package:sliver/my_assets/colors.dart';
import 'package:sliver/widget/search_field.dart';
import 'package:sliver/widget/slivers/sliver_header.dart';

class HeaderSliverThirdPage extends StatelessWidget {
  const HeaderSliverThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.mainColor,
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              const SliverAppBar(
                backgroundColor: AppColors.mainColor,
                floating: false,
                pinned: true,
                snap: false,
                title: SearchField(),
                flexibleSpace: Placeholder(),
              ),
              const SliverHeader(
                title: 'Firs Header', 
                backgroundColor: Colors.red,
                floating: true,
                pinned: false,
              ),
              const SliverHeader(
                title: 'Second Header', 
                backgroundColor: Colors.brown,
                floating: false,
                pinned: true,
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => Container(
                    width: double.infinity,
                    height: 80,
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: const BoxDecoration(
                      color: Colors.green,
                    ),
                  ),
                  childCount: 50
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}


