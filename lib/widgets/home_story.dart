import 'package:flutter/material.dart';
import 'package:flutter_facebook_ui/styles.dart';

class HomeStory extends StatelessWidget {
  final String authorName;
  final String authorImage;
  final String storyImage;
  final Function()? onPress;

  const HomeStory({
    super.key,
    required this.authorName,
    required this.authorImage,
    required this.storyImage,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        height: 200,
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(
                    storyImage,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    authorName,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 5,
              left: 5,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Styles.blueColor, width: 2),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage(authorImage),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
