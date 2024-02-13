import 'package:flutter/material.dart';
import 'package:sliver/my_assets/colors.dart';
import 'package:sliver/widget/search_field.dart';
import 'package:sliver/widget/slivers/sliver_header.dart';

class HeaderSliverFivesPage extends StatelessWidget {
  const HeaderSliverFivesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
        title: const SearchField(),
      ),
      
      body: 
    Container(
      color: AppColors.mainColor,
      child: SafeArea(
        child: CustomScrollView(
            slivers: [
              // SliverToBoxAdapter(
              //   child: Container(
              //     height: 100,
              //     color: Colors.white,
              //    ),
              // ),

              


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
        ),
      ),
    );
  }
}

