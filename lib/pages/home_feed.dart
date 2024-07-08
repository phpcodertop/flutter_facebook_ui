import 'package:flutter/material.dart';
import 'package:flutter_facebook_ui/datasource/data_source.dart';
import 'package:flutter_facebook_ui/widgets/app_feed_post.dart';
import 'package:flutter_facebook_ui/widgets/home_story.dart';

class HomeFeed extends StatelessWidget {
  const HomeFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/profile_picture.jpg'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.grey,
                        )),
                    child: const Text('What\'s on your mind?'),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.image,
                  color: Colors.green,
                ),
              ],
            ),
          ),
      
          const Divider(
            color: Colors.grey,
            thickness: 3,
          ),
      
          // Story Block
          Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...DataSource.stories.map(
                    (e) => HomeStory(
                        authorName: e['author'],
                        authorImage: e['authorImg'],
                        storyImage: e['imagePath']),
                  ),
                ],
              ),
            ),
          ),
      
          const Divider(
            color: Colors.grey,
            thickness: 3,
          ),
      
          // home feed
          ...DataSource.posts.map(
            (post) => AppFeedPost(
              content: post.content,
              author: post.author,
              createdAt: post.createdAt,
              authorImg: post.authorImg,
              imagePath: post.imagePath,
              comments: post.comments,
              isLiked: post.isLiked,
            ),
          ),
      
          // const SizedBox(height: 50,),
      
        ],
      ),
    );
  }
}
