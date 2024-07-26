import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lask_app/features/article/screen/article.dart';
import 'package:lask_app/features/welcome_home/controller/home_cubit.dart';
import 'package:lask_app/features/welcome_home/widgets/home_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var homeBloc = BlocProvider.of<HomeCubit>(context);

    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      return Scaffold(
          body: Column(children: [
        // Home App Bar
        customAppBar(),
        // Home Page Body Scroller
        Expanded(
            child: SingleChildScrollView(
                child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Column(children: [
            // Main Newes
            SizedBox(
                height: 330,
                child: state is GetNewsLoading
                    ? const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [CircularProgressIndicator()])
                    : ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => GestureDetector(
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => ArticlesPage(
                                        articleData:
                                            homeBloc.homeData[index]))),
                            child: card(
                                image: homeBloc.homeData[index]['urlToImage'] ??
                                    'No Image',
                                title: homeBloc.homeData[index]['title'] ??
                                    'No Title',
                                subtitle: homeBloc.homeData[index]['author'] ??
                                    'No Author')),
                        itemCount: homeBloc.homeData.length,
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(width: 10);
                        })),
            // Just For You Title & See More Button
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(' Just For You',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  const Spacer(),
                  TextButton(
                      onPressed: () {
                        homeBloc.seeMoreFun();
                      },
                      child: const Text('See More '))
                ]),
            // Just For You List
            SizedBox(
                height: 330,
                child: state is GetNewsLoading
                    ? const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [CircularProgressIndicator()])
                    : ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => GestureDetector(
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => ArticlesPage(
                                        articleData:
                                            homeBloc.homeData[index]))),
                            child: card(
                                image: homeBloc.homeData[index]['urlToImage'] ??
                                    'No Image',
                                title: homeBloc.homeData[index]['title'] ??
                                    'No Title',
                                subtitle: homeBloc.homeData[index]['author'] ??
                                    'No Author')),
                        itemCount:
                            homeBloc.seeMore ? homeBloc.homeData.length : 10,
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(width: 10);
                        },
                      ))
          ]),
        )))
      ]));
    });
  }
}
