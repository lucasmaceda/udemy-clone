import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  const WebAppBarResponsiveContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraint) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: Color(0xFF757575)),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 4),
                      IconButton(
                        icon: Icon(Icons.search),
                        color: Colors.grey[500],
                        onPressed: () {},
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Pesquise alguma coisa aqui',
                            isCollapsed: true,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              if (constraint.maxWidth >= 400) ...[
                SizedBox(width: 32),
                TextButton(
                  onPressed: () {},
                  child: Text('Aprender'),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                ),
              ],
              if (constraint.maxWidth >= 500) ...[
                SizedBox(width: 32),
                TextButton(
                  onPressed: () {},
                  child: Text('Flutter'),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}
