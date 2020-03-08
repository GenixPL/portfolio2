import 'package:flutter/material.dart';

class ArticleTile extends StatelessWidget {
	final Widget child;
	final Function() onTap;
	
	ArticleTile({
		@required this.child,
		this.onTap,
	});
	
	Widget build(BuildContext context) {
		return GestureDetector(
			onTap: onTap,
			child: ClipPath(
				clipper: ArticleTileClip(),
				child: Container(
					width: 200,
					height: 300,
					color: Colors.amber,
					child: Center(child: child),
				),
			),
		);
	}
}

class ArticleTileClip extends CustomClipper<Path> {
	@override
	Path getClip(Size size) {
		Path path = Path();
		
		final w = size.width;
		final h = size.height;
		
		final double cutSize = 16;
		
		path.moveTo(cutSize, 0);
		path.lineTo(w - cutSize, 0);
		path.lineTo(w, cutSize);
		path.lineTo(w, h - cutSize);
		path.lineTo(w - cutSize, h);
		path.lineTo(cutSize, h);
		path.lineTo(0, h - cutSize);
		path.lineTo(0, cutSize);
		path.close();
		
		return path;
	}
	
	@override
	bool shouldReclip(CustomClipper<Path> oldClipper) {
		return true;
	}
}