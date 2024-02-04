import 'package:flutter/material.dart';

class arkaPlan extends StatelessWidget {
  const arkaPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          height: 748,
          width: 420,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.green,
                Color(0xFF66BB6A),
                Color(0xFF81c784),
                Color(0xFFA5D6A7),
                Color(0xFFC8E6C9),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
