import 'package:flutter/material.dart';
import 'package:shopi_kg/src/modules/authification/sing_in_view.dart';
import 'package:shopi_kg/src/modules/modules.dart';
import 'package:shopi_kg/src/theme/colors.dart';

class WelcomView extends StatelessWidget {
  const WelcomView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 140,
              height: 140,
              decoration: ShapeDecoration(
                color: Colors.white,
                image: const DecorationImage(
                    image: AssetImage('assets/images/logo1.png')),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x29000000),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Al Kadir',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF202020),
                fontSize: 52,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: SizedBox(
                width: 450,
                height: 50,
                child: Text(
                  'Красивый пользовательский интерфейс \n          для вашего интернет-магазина',
                  style: TextStyle(
                    color: Color(0xFF202020),
                    fontSize: 19,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 115,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SingUpView()));
              },
              child: Container(
                width: 335,
                height: 61,
                decoration: ShapeDecoration(
                  color: AppColors.orenge,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Давайте начнем',
                    style: TextStyle(
                      color: Color(0xFFF3F3F3),
                      fontSize: 22,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    'У меня уже есть аккаунт',
                    style: TextStyle(
                      color: Color(0xFF202020),
                      fontSize: 15,
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w300,
                      height: 0.12,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SingInView()));
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.orenge,
                    ),
                    child: const Icon(
                      Icons.arrow_right_alt,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 55,
            )
          ],
        ),
      ),
    );
  }
}
