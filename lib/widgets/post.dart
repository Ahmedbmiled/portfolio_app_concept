import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app_concept/animations/fade_animation.dart';
import 'package:portfolio_app_concept/models/post.dart';

class PostCard extends StatelessWidget {
  const PostCard(
      {Key? key, required this.delay, required this.post, this.type = 'list'})
      : super(key: key);
  final double delay;
  final Post post;
  final String type;

  @override
  Widget build(BuildContext context) {
    bool isMe = post.user_image.isEmpty;
    return FadeAnimation(
      delay: delay,
      child: Container(
        margin: type == 'grid' ? EdgeInsets.all(0) : EdgeInsets.only(top: 20),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(children: [
                CachedNetworkImage(
                  imageUrl: post.url,
                  errorWidget: (context, errorText, error) {
                    return FaIcon(FontAwesomeIcons.bug);
                  },
                ),
                isMe
                    ? const SizedBox()
                    : Positioned(
                        right: 10,
                        top: 10,
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(post.user_image),
                          ),
                        ),
                      )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
