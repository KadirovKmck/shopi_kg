import 'package:flutter/material.dart';
import 'package:shopi_kg/src/modules/home/home_view.dart';

class SingUpView extends StatefulWidget {
  const SingUpView({Key? key}) : super(key: key);

  @override
  State<SingUpView> createState() => _SingUpViewState();
}

class _SingUpViewState extends State<SingUpView> {
  bool isChecked = false;
  double widDivider = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Image(
                    image: AssetImage('assets/images/logo1.png'),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Создать аккаунт',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      const Text(
                        'Желаем вам успешной покупки!',
                        style: TextStyle(
                          color: Color(0xFF999EA1),
                          fontSize: 14,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      const Text(
                        'Номер Телефона',
                        style: TextStyle(
                          color: Color(0xFF00004D),
                          fontSize: 14,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      const TetxFildWidget(
                          icons: Icons.phone,
                          hintText: 'Номер телефона',
                          prefixText: ''),
                      const SizedBox(
                        height: 32,
                      ),
                      const Text(
                        'Выведите ваш пароль',
                        style: TextStyle(
                          color: Color(0xFF00004D),
                          fontSize: 14,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      const TetxFildWidget(
                        icons: Icons.lock,
                        hintText: 'Пароль',
                        prefixText: '',
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked,
                            activeColor: Colors.black,
                            onChanged: (value) {
                              setState(
                                () {
                                  isChecked = value!;
                                },
                              );
                            },
                          ),
                          const Text(
                            'Запомнить меня',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          const SizedBox(
                            width: 75,
                          ),
                          const Text(
                            'Забыл пароль',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeView(),
                            ),
                          );
                        },
                        child: Container(
                          width: 359,
                          height: 45,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF351995),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Sign Up',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 33,
                      ),
                      const Center(
                        child: Text(
                          '-----------------------     Or With     -----------------------',
                          style: TextStyle(
                            color: Color(0xFF242A31),
                            fontSize: 14,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 33,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 163,
                            height: 45,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFCDD1E0)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  foregroundImage:
                                      AssetImage('assets/images/google.png'),
                                ),
                                Text(
                                  'Google',
                                  style: TextStyle(
                                    color: Color(0xFF242A31),
                                    fontSize: 14,
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 163,
                            height: 45,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFCDD1E0)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  foregroundImage:
                                      AssetImage('assets/images/facebook.png'),
                                ),
                                Text(
                                  'FaceBook',
                                  style: TextStyle(
                                    color: Color(0xFF242A31),
                                    fontSize: 14,
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TetxFildWidget extends StatefulWidget {
  const TetxFildWidget(
      {super.key,
      required this.icons,
      required this.hintText,
      required this.prefixText});
  final IconData? icons;
  final String hintText;
  final String prefixText;

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
        hintText: widget.hintText,
        hintStyle: const TextStyle(
            color: Color(0xff677294),
            fontSize: 15,
            fontFamily: 'Rubik',
            fontWeight: FontWeight.bold),
        fillColor: Colors.white,
        filled: true,
        prefixText: widget.prefixText,
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
