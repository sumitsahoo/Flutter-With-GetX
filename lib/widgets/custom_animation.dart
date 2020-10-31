import 'package:flutter/cupertino.dart';

class CustomAnimation extends StatefulWidget {
  Widget child;

  CustomAnimation({Widget child}) {
    this.child = child;
  }

  @override
  _CustomAnimationState createState() => _CustomAnimationState();
}

class _CustomAnimationState extends State<CustomAnimation> {
  bool _visible = false;

  @override
  void initState() {
    simulateDelay().then((value) {
      _visible = true;
      setState(() {
        _visible = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _visible ? 1.0 : 0.0,
      duration: Duration(milliseconds: 200),
      child: widget.child,
    );
  }

  Future simulateDelay() async {
    await Future.delayed(Duration(milliseconds: 500));
  }
}
