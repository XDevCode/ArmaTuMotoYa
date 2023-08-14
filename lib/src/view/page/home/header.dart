// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Header extends StatelessWidget {
  const Header({super.key});

  Widget headerStrut() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isotipo(),
                const Material(
                  color: Colors.transparent,
                  child: Align(
                      alignment: AlignmentDirectional.topEnd, child: TabHome()),
                ),
              ],
            ),
            const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  'Compra tu \nMoto Ya',
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                )),
            const Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                  '¡Conquista tus metas!\n de a poquito en poquito, en una moto propia\n gracias a nuestros grandiosos planes de financiamiento.'),
            )
          ],
        )),
        splassHeader()
      ],
    );
  }

  Widget isotipo() {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          Icon(Icons.sports_motorsports),
          Text('Motos',
              style: TextStyle(
                  fontFamily: "baloo", fontSize: 30, color: Color(0xFF292E32))),
          Text('Ya',
              style: TextStyle(
                  fontFamily: "baloo", fontSize: 30, color: Color(0xFFFBC817))),
        ],
      ),
    );
  }

  Widget splassHeader() {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Align(
            alignment: AlignmentDirectional.topEnd,
            child: Container(
              height: 320,
              width: 380,
              color: Colors.transparent,
              child: const CustomPaint(painter: _Background()),
            )),
        Padding(
          padding: const EdgeInsets.only(top: 30, right: 5),
          child: Align(
            alignment: AlignmentDirectional.topEnd,
            child: Container(
              width: 250,
              height: 250,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/moto-bel.png'))),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return headerStrut();

    /* const Positioned(
            top: 40,
            left: 20,
            child: Text(
              'Compra tu \nMoto Ya',
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            )) */
  }
}

class _Background extends CustomPainter {
  const _Background();
  @override
  void paint(Canvas canvas, Size size) async {
    final Paint paint = Paint();

    paint.color = const Color(0xFF34D87F);
    paint.shader = ui.Gradient.linear(
      Offset(size.width, 0),
      Offset(size.width * .50, size.height * .50),
      const [
        Color(0xFF609376),
        Color(0xFF34D87F),
      ],
    );

    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final Path path = Path();

    path.moveTo(size.width, 0);
    path.lineTo(size.width, size.height * .55);

    path.quadraticBezierTo(size.width * .85, size.height * .80,
        size.width * .70, size.height * .76);

    path.quadraticBezierTo(size.width * .65, size.height * .74,
        size.width * .60, size.height * .65);

    path.quadraticBezierTo(size.width * .52, size.height * .50,
        size.width * .30, size.height * .60);

    path.quadraticBezierTo(size.width * .15, size.height * .70,
        size.width * .05, size.height * .50);

    path.quadraticBezierTo(size.width * .00, size.height * .40,
        size.width * .04, size.height * .35);

    path.quadraticBezierTo(size.width * .15, size.height * .25,
        size.width * .09, size.height * .15);

    path.quadraticBezierTo(
        size.width * .05, size.height * .02, size.width * .20, 0);
    path.close();
    //path.lineTo(size.width * .30, 0);
    canvas.drawPath(path, paint);

    path.moveTo(0, 60);

    canvas.drawCircle(Offset(size.width * .05, size.height * .22), 15, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class TabHome extends StatefulWidget {
  const TabHome({super.key});

  @override
  State<TabHome> createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buttonItem('Inicio', Icons.home),
        buttonItem('Planes', Icons.payment),
        buttonItem('Motos', Icons.two_wheeler),
        buttonItem('¿Como  Comprar?', Icons.request_quote),
        buttonItem('Nosotros', Icons.apartment),
      ],
    );
  }

  Widget buttonItem(String text, IconData icon) {
    return InkWell(
        onTap: () {
          print('Hola');
        },
        borderRadius: BorderRadius.circular(15.0),
        splashColor: const Color(0x795E5E5E),
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Icon(
                    icon,
                    color: const Color(0xFF575656),
                  ),
                ),
                Text(
                  text,
                  style: const TextStyle(color: Color(0xFF575656)),
                )
              ],
            )));
  }
}
