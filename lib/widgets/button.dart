import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, right: 16, left: 16, bottom: 8),
      child: SizedBox(
        width: double.infinity,
        child: MaterialButton(
          height: 100.0,
          color: const Color.fromRGBO(255, 62, 62, 1),
          textColor: Colors.white,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0))),
          onPressed: () => {},
          splashColor: Colors.redAccent,
          child: Column(
            children: const [
              Text(
                "Summer Sale",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "Up to 50% off",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
