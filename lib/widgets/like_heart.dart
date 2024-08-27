import 'package:flutter/material.dart';

class LikeHeartButton extends StatefulWidget {
  const LikeHeartButton({super.key, required this.onPressed});

  @override
  State<LikeHeartButton> createState() => _LikeHeartButtonState();
  final void Function() onPressed;
}

class _LikeHeartButtonState extends State<LikeHeartButton> {
  static const IconData heart = IconData(0xf442);
  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {

    void _onPressed() {
      setState(() {
        _isLiked = !_isLiked;
      });
      widget.onPressed();
    };

    if (_isLiked == true) {
      return IconButton(
        icon: const Icon(Icons.favorite),
        tooltip: 'add this to favourite',
        onPressed: _onPressed,
      );
    } else {
      return IconButton(
        icon: const Icon(Icons.favorite_border),
        tooltip: 'remove this to favourite',
        onPressed: _onPressed,
      );
    }
  }
}
