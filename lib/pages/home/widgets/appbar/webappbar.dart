import 'package:flutter/material.dart';

import 'web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          Text('Flutter'),
          const SizedBox(width: 32),
          WebAppBarResponsiveContent(),
          const SizedBox(width: 8),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
          const SizedBox(width: 24),
          SizedBox(
            height: 38,
            child: OutlinedButton(
              child: Text('Fazer Login'),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                side: BorderSide(
                  width: 2,
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            height: 38,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Cadastre-se'),
              style: ElevatedButton.styleFrom(
                primary: Colors.white, // background
                onPrimary: Colors.black, // foreground
              ),
            ),
          )
        ],
      ),
    );
  }
}
