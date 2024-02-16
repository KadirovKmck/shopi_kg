import 'package:flutter/material.dart';
import 'package:shopi_kg/src/modules/home/widgets/popular_produkts_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> frequency = [
    'Транспорт',
    'Недвижимость',
    'Дом и сад',
    'Недвижимость',
    'Техника и электроника ',
    'Личные вещи ',
  ];
  int frequencyTapsChages = 0;

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Al Kadir',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(
                    Icons.search,
                    size: 35,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Popular products',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              PopularProduktsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
