import 'package:flutter/material.dart';



class ProductAnimationPage extends StatefulWidget {
  const ProductAnimationPage({super.key});

  @override
  _ProductAnimationPageState createState() => _ProductAnimationPageState();
}

class _ProductAnimationPageState extends State<ProductAnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  bool _isAnimating = false;
  Offset _startPosition = Offset(100, 500); // Posisi awal produk
  Offset _endPosition = Offset(300, 50); // Posisi ikon keranjang

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 700),
    );

    _animation = Tween<Offset>(
      begin: _startPosition,
      end: _endPosition,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  void _startAnimation() {
    if (!_isAnimating) {
      setState(() {
        _isAnimating = true;
      });

      _controller.forward().then((_) {
        setState(() {
          _isAnimating = false; // Reset animasi setelah selesai
          _controller.reset();
        });
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Animation"),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.shopping_cart, size: 32), // Ikon keranjang
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: 500,
            left: 100,
            child: ElevatedButton(
              onPressed: _startAnimation,
              child: Text("Add to Cart"),
            ),
          ),

          // Animasi produk melayang ke keranjang
          AnimatedBuilder(
            animation: _controller,
            builder: (_, child) {
              final offset = Offset(
                _animation.value.dx - 25,
                _animation.value.dy - 25,
              );
              return Positioned(
                top: offset.dy,
                left: offset.dx,
                child: _isAnimating
                    ? Icon(Icons.shopping_bag, size: 50, color: Colors.orange)
                    : SizedBox(),
              );
            },
          ),
        ],
      ),
    );
  }
}
