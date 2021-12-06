import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.network(
          'data:image/jpeg;base64,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',
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
