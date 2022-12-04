// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:storeapp/widgets/animated-input.widget.dart';

class SearchBox extends StatefulWidget {
  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  bool menuOpened = false;


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 1,
      ),
    );
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AnimatedInput(
          controller: _controller,
        ),
        TextButton(
          onPressed: () {
            !menuOpened ? _controller!.forward() : _controller!.reverse();
            menuOpened = !menuOpened;
          },
          child: AnimatedIcon(
            color: Theme.of(context).primaryColor,
            icon: AnimatedIcons.menu_close,
            progress: _controller!,
            semanticLabel: 'Open Menu',
          ),
        ),
      ],
    );
  }
}
