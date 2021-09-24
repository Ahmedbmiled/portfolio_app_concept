import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app_concept/animations/fade_animation.dart';
import 'package:portfolio_app_concept/utils/app_data.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        FadeAnimation(
            delay: 1,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(3),
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.purpleAccent.shade200,
                          Colors.indigoAccent.shade200
                        ])),
                child: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(profilePic),
                ),
              ),
            )),
        const SizedBox(
          height: 20,
        ),
        FadeAnimation(
            delay: 1.1,
            child: Text(
              "Bruno Mars",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            )),
        SizedBox(
          height: 10,
        ),
        FadeAnimation(
            delay: 1.2,
            child: Text(
              "Chicago, California",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            )),
        SizedBox(height: 40),
        Padding(
            padding: const EdgeInsets.fromLTRB(20,0,20,20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FadeAnimation(
                      delay: 1.3,
                      child: Column(
                        children: [
                          Text(
                            "102K",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Following",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      )),
                  FadeAnimation(
                      delay: 1.3,
                      child: Column(
                        children: [
                          Text(
                            "92K",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      )),
                  FadeAnimation(
                      delay: 1.3,
                      child: Column(
                        children: [
                          Text(
                            "11K",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Likes",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      )),
                ])),
      ],
    );
  }
}
