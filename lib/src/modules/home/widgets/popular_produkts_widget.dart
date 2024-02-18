import 'package:flutter/material.dart';

class PopularProduktsWidget extends StatefulWidget {
  const PopularProduktsWidget({Key? key}) : super(key: key);

  @override
  State<PopularProduktsWidget> createState() => _PopularProduktsWidgetState();
}

class _PopularProduktsWidgetState extends State<PopularProduktsWidget> {
  List<String> cotologs = [
    'Транспорт',
    'Техника и электроника ',
    'Детский мир ',
    'Медтовары',
    'Недвижимость',
    'Дом и сад',
    'Недвижимость',
    'Спорт и хобби  ',
    'Личные вещи ',
    'Оборудование для бизнеса ',
    'Животные ',
  ];
  List<Color> colorsList = [
    Colors.lime,
    Colors.orange,
    Colors.blue,
    Colors.green,
    Colors.teal,
    Colors.red,
    Colors.pink,
    Colors.greenAccent,
    Colors.amber,
    Colors.cyan,
    Colors.yellow,
  ];
  List<String> assetsImages = [
    'assets/images/car.png',
    'assets/images/home.png',
    'assets/images/laptop.png',
    'assets/images/toys.png',
    'assets/images/car.png',
    'assets/images/home.png',
    'assets/images/laptop.png',
    'assets/images/toys.png',
    'assets/images/car.png',
    'assets/images/home.png',
    'assets/images/laptop.png',
  ];
  @override
  Widget build(BuildContext context) {
    final stars = Expanded(child: Image.asset('images/star.png'));
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SizedBox(
          width: 400,
          height: 300,
          child: GridViewMethod(cotologs.length),
        );
      },
    );
  }

  GridView GridViewMethod(int itemCountGrid) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: itemCountGrid,
      itemBuilder: (BuildContext context, int index) {
        final width = MediaQuery.of(context).size.width;
        final height = MediaQuery.of(context).size.height;
        return Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            height: height * 0.600,
            width: width * 1,
            decoration: ShapeDecoration(
              color: colorsList[index],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 1,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 5, top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cotologs[index],
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 30),
                    child: SizedBox(
                      height: 70,
                      width: 150,
                      child: Image.asset(
                        assetsImages[index],
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
