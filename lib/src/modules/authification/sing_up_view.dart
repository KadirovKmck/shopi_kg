import 'package:flutter/material.dart';

class SingUpView extends StatelessWidget {
  const SingUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image(
                  image: AssetImage('assets/images/logo1.png'),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  right: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Создать аккаунт',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    Text(
                      'Желаем вам успешной покупки!',
                      style: TextStyle(
                        color: Color(0xFF999EA1),
                        fontSize: 14,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      'Номер Телефона',
                      style: TextStyle(
                        color: Color(0xFF00004D),
                        fontSize: 14,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    TetxFildWidget(icons: Icons.phone),
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      'Выведите ваш пароль',
                      style: TextStyle(
                        color: Color(0xFF00004D),
                        fontSize: 14,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    TetxFildWidget(
                      icons: Icons.lock,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TetxFildWidget extends StatefulWidget {
  const TetxFildWidget({super.key, required this.icons});
  final IconData? icons;

  @override
  State<TetxFildWidget> createState() => _TetxFildWidgetState();
}

class _TetxFildWidgetState extends State<TetxFildWidget> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (query) {
        setState(() {});
      },
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.black)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.black)),
        hintText: 'Номер телефона',
        hintStyle: const TextStyle(
            color: Color(0xff677294),
            fontSize: 15,
            fontFamily: 'Rubik',
            fontWeight: FontWeight.bold),
        fillColor: Colors.white,
        filled: true,
        prefixText: '+996 ',
        prefixStyle: const TextStyle(color: Colors.black, fontSize: 15),
        prefixIcon: Icon(
          widget.icons,
          color: const Color(0xFf677294),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
