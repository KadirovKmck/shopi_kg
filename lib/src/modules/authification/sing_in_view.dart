import 'package:flutter/material.dart';
import 'package:shopi_kg/src/modules/modules.dart';

class SingInView extends StatefulWidget {
  const SingInView({Key? key}) : super(key: key);

  @override
  State<SingInView> createState() => _SingInViewState();
}

class _SingInViewState extends State<SingInView> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Scaffold(
      body: SafeArea(
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
                      'Привет, с возвращением! 👋',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    const Text(
                      'Еще раз здравствуйте, вас не хватало!',
                      style: TextStyle(
                        color: Color(0xFF999EA1),
                        fontSize: 12,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    const Text(
                      'Email',
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
                        icons: Icons.email,
                        hintText: 'Email address',
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
                    Container(
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
                          'Log in',
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
    );
  }
}
