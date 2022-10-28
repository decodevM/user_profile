import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomVideo extends StatelessWidget {
  const CustomVideo({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: AspectRatio(
        aspectRatio: 1.5 / 1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage('assets/images/videos/$image'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.6),
                    Colors.black.withOpacity(.3),
                  ],
                ),
              ),
              alignment: Alignment.center,
              child: CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  child: Icon(
                    CupertinoIcons.play_arrow_solid,
                    size: 70,
                    color: Colors.white.withOpacity(.9),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
