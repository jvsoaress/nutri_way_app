import 'package:flutter/material.dart';

import '../../../models/imc_model.dart';

class IMCDisplay extends StatefulWidget {
  final IMCModel imcModel;

  const IMCDisplay({
    Key key,
    @required this.imcModel,
  }) : super(key: key);

  @override
  _IMCDisplayState createState() => _IMCDisplayState();
}

class _IMCDisplayState extends State<IMCDisplay> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;
  var _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = Tween<double>(begin: 0, end: widget.imcModel.imc).animate(CurvedAnimation(parent: _controller, curve: Curves.ease))
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _opacity = 1.0;
        }
      });
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 3,
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 150,
        width: double.infinity,
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                _animation.value.toStringAsFixed(1),
                style: Theme.of(context).textTheme.headline2.copyWith(fontWeight: FontWeight.w900),
              ),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 600),
                opacity: _opacity,
                child: Column(
                  children: [
                    Spacer(flex: 3),
                    Text(
                      widget.imcModel.result['text'],
                      style: TextStyle(
                        color: widget.imcModel.result['color'],
                      ),
                    ),
                    Spacer(),
                    Text(widget.imcModel.result['ref']),
                    Spacer(flex: 3),
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
