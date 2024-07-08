import 'package:auto_direction/auto_direction.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart' as Intl;
import 'package:readmore/readmore.dart';

import '../models/post.dart';

class AppFeedPost extends StatelessWidget {
  final String content;
  final String author;
  final String createdAt;
  final String authorImg;
  final String? imagePath;
  final bool? isLiked;
  final List<Comment>? comments;

  const AppFeedPost({
    super.key,
    required this.content,
    required this.author,
    required this.createdAt,
    required this.authorImg,
    this.imagePath,
    this.isLiked,
    this.comments,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(authorImg),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(author),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text('$createdAt . '),
                          const FaIcon(
                            FontAwesomeIcons.earthAfrica,
                            size: 15,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.ellipsis,
                    size: 15,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FaIcon(
                    FontAwesomeIcons.xmark,
                    size: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
        // text
        Padding(
          padding: const EdgeInsets.all(10),
          child: Align(
            alignment: Intl.Bidi.hasAnyRtl(content) ? Alignment.topRight : Alignment.topLeft,
            child: ReadMoreText(
              content,
              textAlign: Intl.Bidi.hasAnyRtl(content) ? TextAlign.right : TextAlign.left,
            ),
          ),
        ),
        // image
        imagePath != null
            ? Image.asset(
                imagePath!,
                fit: BoxFit.cover,
                height: 300,
                width: MediaQuery.of(context).size.width,
              )
            : Container(),
        // stats
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('${comments?.length ?? '0'} comments'),
              const SizedBox(
                width: 5,
              ),
              const Text('5 Shares'),
            ],
          ),
        ),
        // action buttons
        Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.thumbsUp,
                        color: Colors.grey.shade800,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Like',
                        style: TextStyle(
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ],
                  )),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.comment,
                        color: Colors.grey.shade800,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Comment',
                        style: TextStyle(
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ],
                  )),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.grey.shade800,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Send',
                        style: TextStyle(
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ],
                  )),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.share,
                        color: Colors.grey.shade800,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Share',
                        style: TextStyle(
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),

        const Divider(
          color: Colors.grey,
          thickness: 3,
        ),
      ],
    );
  }
}
