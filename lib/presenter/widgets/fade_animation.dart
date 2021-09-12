import 'package:flutter/material.dart';

class FadeAnimation extends StatefulWidget {
  final Widget? child;

  const FadeAnimation({Key? key, this.child}) : super(key: key);
  @override
  _FadeAnimationState createState() => _FadeAnimationState();
}

class _FadeAnimationState extends State<FadeAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 1,
      ),
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      child: widget.child,
      builder: (context, child) {
        return Opacity(
          opacity: _controller.value,
          child: Transform.translate(
            offset:
                Offset(Offset.zero.dx, ((_controller.value * 30) * -1) + 30),
            child: child,
          ),
        );
      },
    );
  }
}
