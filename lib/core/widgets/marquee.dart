import 'dart:async';

import 'package:flutter/material.dart';

class ImageMarquee extends StatefulWidget {
  final List<String> imagePaths;
  final double height;
  final double speed;
  final double spacing;
  final double fadeWidth;

  const ImageMarquee({
    super.key,
    required this.imagePaths,
    this.height = 22.0,
    this.speed = 1.3,
    this.spacing = 45.0,
    this.fadeWidth = 0.15,
  });

  @override
  State<ImageMarquee> createState() => _ImageMarqueeState();
}

class _ImageMarqueeState extends State<ImageMarquee> {
  late ScrollController _scrollController;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startAutoScroll();
    });
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(milliseconds: 16), (timer) {
      if (_scrollController.hasClients) {
        double currentScroll = _scrollController.offset;
        _scrollController.jumpTo(currentScroll + (widget.speed / 2));
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: const [
              Colors.transparent,
              Colors.black,
              Colors.black,
              Colors.transparent,
            ],
            stops: [0.0, widget.fadeWidth, 1.0 - widget.fadeWidth, 1.0],
          ).createShader(bounds);
        },
        blendMode: BlendMode.dstIn,
        child: ListView.builder(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final imagePath =
                widget.imagePaths[index % widget.imagePaths.length];

            return Padding(
              padding: EdgeInsets.symmetric(horizontal: widget.spacing / 2),
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
                height: widget.height,
              ),
            );
          },
        ),
      ),
    );
  }
}
