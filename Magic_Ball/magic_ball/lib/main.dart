import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[900],
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int variantOfAnswer = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: () {
          setState(() {
            variantOfAnswer = Random().nextInt(5) + 1;
          });
        },
        child: Center(
          child: Image.asset('images/ball$variantOfAnswer.png'),
        ),
      ),
    );
  }
}


// return Container(
//       child: Center(
//         child: FlatButton(
//           onPressed: () {
//             setState(() {
//               variantOfAnswer = Random().nextInt(5) + 1;
//             });
//           },
//           child: Image.asset('images/ball$variantOfAnswer.png'),
//         ),
//       ),
//     );
//   }
// }
