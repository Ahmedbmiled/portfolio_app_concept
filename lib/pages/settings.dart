import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app_concept/animations/fade_animation.dart';
import 'package:portfolio_app_concept/utils/app_data.dart';
import 'package:portfolio_app_concept/widgets/settings_item.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.black),
        ),
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Row(
              children: [
                FadeAnimation(
                    delay: 1.2,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.grey[200],
                      backgroundImage: CachedNetworkImageProvider(profilePic),
                    )),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeAnimation(
                        delay: 1.2,
                        child: const Text(
                          'Bruno Mars',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    FadeAnimation(
                        delay: 1.2,
                        child: const Text(
                          "Chicago, California",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )),
                  ],
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: FadeAnimation(
                          delay: 1.2,
                          child: FaIcon(
                            FontAwesomeIcons.edit,
                            color: Colors.grey,
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: FadeAnimation(
                delay: 1.3,
                child: const Text('Account',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: settingsItems.length,
              itemBuilder: (context, index) {
                return FadeAnimation(
                    delay: 1.4 + (index / 10),
                    child: SettingsItem(
                      title: settingsItems[index][0],
                      subtitle: settingsItems[index][1],
                      icon: settingsItems[index][2],
                      color: settingsItems[index][3],
                    ));
              }),
          Expanded(
              child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ahmed Ben Miled ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  FaIcon(
                    FontAwesomeIcons.copyright,
                    size: 15,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
