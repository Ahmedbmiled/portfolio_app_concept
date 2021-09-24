import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app_concept/animations/fade_animation.dart';
import 'package:portfolio_app_concept/pages/profile.dart';
import 'package:portfolio_app_concept/utils/app_data.dart';
import 'package:portfolio_app_concept/widgets/header.dart';
import 'package:portfolio_app_concept/widgets/menu_item.dart';
import 'package:portfolio_app_concept/widgets/post.dart';
import 'package:portfolio_app_concept/widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeTab = 0;
  late Size screenSize;

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(profilePic,errorListener:(){
                     FaIcon(FontAwesomeIcons.user);
                  }),
                )),
          ),
        ],
        title: const SearchBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: FadeAnimation(
            delay: 1,
            child: Column(
              children: [
                Header(screenSize),
                const SizedBox(
                  height: 30,
                ),
                FadeAnimation(
                    delay: 1.2,
                    child: Container(
                      height: 40,
                      width: screenSize.width,
                      child: ListView.builder(
                          itemCount: categories.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final title = categories[index];
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  activeTab = index;
                                });
                              },
                              child: MenuItem(
                                title: title,
                                activeTab: activeTab,
                                index: index,
                              ),
                            );
                          }),
                    )),
                const SizedBox(
                  height: 10,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      return PostCard(
                          delay: 1.5 + (index / 10),
                          post: posts[index],
                          type: 'list');
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
