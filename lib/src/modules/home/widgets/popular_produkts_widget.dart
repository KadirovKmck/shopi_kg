import 'package:flutter/material.dart';

class PopularProduktsWidget extends StatefulWidget {
  const PopularProduktsWidget({Key? key}) : super(key: key);

  @override
  State<PopularProduktsWidget> createState() => _PopularProduktsWidgetState();
}

class _PopularProduktsWidgetState extends State<PopularProduktsWidget> {
  List<String> images = [
    'assets/images/python.png',
    'assets/images/matem.png',
    'assets/images/degin.png',
    'assets/images/my_courses_flutter.png',
    'assets/images/my_courses_flutter.png',
    'assets/images/my_courses_flutter.png',
    'assets/images/my_courses_flutter.png',
    'assets/images/my_courses_flutter.png',
    'assets/images/my_courses_flutter.png',
  ];
  List<String> text = [
    'HTML5 жана \nCSS3 негиздери',
    'Python жаңы \nүйрөнүүчүлөр үчүн',
    'Графикалык \nдизайн',
    'Веб-дизайн',
    'Праграммалоонун\nнегиздери',
    'HTML5 жана \nCSS3 негиздери',
    'Веб-дизайн',
    'Праграммалоонун\nнегиздери',
    'HTML5 жана \nCSS3 негиздери',
  ];
  final List<String> _results = [];
  void _handleSearch(String input) {
    _results.clear();
    for (final str in text) {
      if (str.toLowerCase().contains(input.toLowerCase())) {
        setState(() {
          _results.add(str);
        });
      }
    }
  }

  List<Map<String, dynamic>> items = [
    {
      'title': 'Жаңы курстар',
      'isSelect': true,
    },
    {
      'title': 'Популярдуу курстар',
      'isSelect': false,
    },
    {
      'title': 'Акциялар',
      'isSelect': false,
    },
    {
      'title': 'Кыска мөөнөттүү курстар',
      'isSelect': false,
    }
  ];
  String currentItem = '';

  @override
  Widget build(BuildContext context) {
    final stars = Expanded(child: Image.asset('images/star.png'));
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SizedBox(
          width: 400,
          height: 250,
          child: GridViewMethod(images.length),
        );
      },
    );
  }

  GridView GridViewMethod(int itemCountGrid) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 45,
        mainAxisSpacing: 45,
      ),
      itemCount: itemCountGrid,
      itemBuilder: (BuildContext context, int index) {
        final width = MediaQuery.of(context).size.width;
        final height = MediaQuery.of(context).size.height;

        return Container(
          height: width * 0.600,
          width: height * 0.900,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 8,
                offset: Offset(2, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text[index],
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: width * 0.021,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '10 000 c ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: width * 0.025,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.access_time_rounded,
                            ),
                            Text(
                              '60 c.',
                              style: TextStyle(
                                color: const Color(
                                  0xFF868686,
                                ),
                                fontSize: width * 0.02,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            const Icon(Icons.person),
                            Text(
                              '20',
                              style: TextStyle(
                                color: const Color(
                                  0xFF868686,
                                ),
                                fontSize: width * 0.02,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: width * 0.014),
                    Expanded(
                      child: Image.asset(
                        'assets/images/logo.png',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
