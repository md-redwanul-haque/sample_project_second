import 'package:flutter/material.dart';



class TextDesignR extends StatelessWidget {
  String title;
  String descript;
  final Color valueColor;

  TextDesignR({
    required this.title,
    this.valueColor = Colors.grey,
    required this.descript,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
            alignment:Alignment.topLeft,
            child:  Text.rich(
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,

              TextSpan(
                children: [
                  TextSpan(
                    text: title,
                    style: TextStyle(color: Colors.grey,fontSize: 16)
                  ),
                  TextSpan(
                    text: descript,
                    style: TextStyle(color: Colors.grey,fontSize: 16)
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}