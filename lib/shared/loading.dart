import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Center(
          child: SpinKitFoldingCube(
            color: Color(0xFF31BFAF),
            size: 50.0,
          ),
        )
    );
  }
}