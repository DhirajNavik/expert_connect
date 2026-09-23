import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
    this.child,
    this.text,
    this.onPressed,
    this.style,
    this.isLoading = false,
  });

  final Widget? child;
  final VoidCallback? onPressed;
  final ButtonStyle? style;
  final String? text;
  final bool isLoading;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  double _scale = 1;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(
          vsync: this,
          duration: const Duration(milliseconds: 80),
          lowerBound: 0,
          upperBound: .08,
        )..addListener(() {
          _scale = 1 - _controller.value;
        });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _down(PointerDownEvent _) {
    _controller.forward();
  }

  void _up(PointerEvent _) {
    _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: _down,
      onPointerUp: _up,
      onPointerCancel: _up,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (_, _) {
          return Transform.scale(
            scale: widget.isLoading ? 1 : _scale,
            child: ElevatedButton(
              onPressed: widget.onPressed,
              style: widget.style,
              child: FittedBox(
                fit: .scaleDown,
                child: widget.isLoading
                    ? CircularProgressIndicator(
                        padding: .symmetric(vertical: 12),
                      )
                    : widget.child ?? Text(widget.text ?? "TEXT"),
              ),
            ),
          );
        },
      ),
    );
  }
}
