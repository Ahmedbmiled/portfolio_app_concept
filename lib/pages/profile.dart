import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app_concept/animations/fade_animation.dart';
import 'package:portfolio_app_concept/models/post.dart';
import 'package:portfolio_app_concept/pages/settings.dart';
import 'package:portfolio_app_concept/utils/app_data.dart';
import 'package:portfolio_app_concept/widgets/post.dart';
import 'package:portfolio_app_concept/widgets/profile_card.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        leading: BackButton(
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
            icon: FaIcon(
              FontAwesomeIcons.cog,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            SliverToBoxAdapter(
              child: const ProfileCard(),
            )
          ];
        },
        body: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              FadeAnimation(
                  delay: 1.4,
                  child: Container(
                      child: TabBar(
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey.shade600,
                          indicatorColor: Colors.black,
                          tabs: [
                        Tab(
                          icon: FaIcon(FontAwesomeIcons.thList),
                        ),
                        Tab(
                          icon: FaIcon(FontAwesomeIcons.thLarge),
                        ),
                      ]))),
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: TabBarView(children: [
                        ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: my_posts.length,
                            itemBuilder: (context, index) {
                              var post = Post(
                                url: my_posts[index],
                                user_image: '',
                              );
                              return PostCard(
                                  delay: 1.6 + (index / 10),
                                  post: post,
                                  type: 'list');
                            }),
                        GridView.builder(
                            itemCount: my_posts.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    mainAxisSpacing: 0,
                                    crossAxisSpacing: 10,
                                    childAspectRatio: 1.2),
                            itemBuilder: (context, index) {
                              var post = Post(
                                url: my_posts[index],
                                user_image: '',
                              );
                              return PostCard(
                                  delay: 1.6 + (index / 10),
                                  post: post,
                                  type: 'grid');
                            })
                      ])))
            ],
          ),
        ),
      ),
    );
  }
}
