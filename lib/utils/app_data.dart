import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app_concept/models/post.dart';

const String profilePic =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGXQhzDWoMT6LkazghVFsluXu0Vfa_eLMxDTMH8R79fxzrW01_J8xP_VTHzZdEsykojkE&usqp=CAU';
const List<String> categories = [
  'All',
  'Illustration',
  'Animation',
  'Mobile',
  'Graphic Design',
  'Typography',
  'Print',
];

List<List> settingsItems = [
  [
    'Notifications',
    'Turn on/off notifications',
    FontAwesomeIcons.bell,
    Colors.red[400]
  ],
  ['Privacy', 'Privacy settings', FontAwesomeIcons.userShield, Colors.green[400]],
  ['Data', 'Data usage',FontAwesomeIcons.database, Colors.orange[400]],
  ['Help', 'Help and feedback', FontAwesomeIcons.question, Colors.blue[400]],
  ['Logout', 'Logout', FontAwesomeIcons.signOutAlt, Colors.black],
];

const List<Post> posts = [
  Post(
    url:
        'https://cdn.dribbble.com/users/1998175/screenshots/16503601/media/cd2b899e0857b5cb16561ab2d712b3cd.jpg?compress=1&resize=1200x900',
    user_image:
        'https://cdn.dribbble.com/users/441606/avatars/small/ba69492df70471e2fcc7409a5f9e2be0.jpg?1570587185',
  ),
  Post(
    url:
        'https://cdn.dribbble.com/users/1192538/screenshots/16507884/media/27aa37c97cf336391a72dc8bf24b140e.png?compress=1&resize=1200x900',
    user_image:
        'https://cdn.dribbble.com/users/419681/avatars/mini/b03e9aaf379ff5733042925747af6453.jpg?1613998881',
  ),
  Post(
    url:
        'https://cdn.dribbble.com/users/5077358/screenshots/16506324/media/a7479dfe69287d6122368a0a89418aa0.png?compress=1&resize=1200x900',
    user_image:
        'https://cdn.dribbble.com/users/174531/avatars/mini/15aa8b82e7c45563c3300038f5e18c5b.jpg?1575308145',
  ),
  Post(
    url:
        'https://cdn.dribbble.com/users/2192909/screenshots/14566174/media/2d39b80d299771b8acf10340f46db08a.png?compress=1&resize=1200x900',
    user_image:
        'https://cdn.dribbble.com/users/702789/avatars/mini/e66ce3992038d4efadb8c329f25aea78.png?1508747241',
  ),
  Post(
    url:
        'https://cdn.dribbble.com/users/1464151/screenshots/15801980/media/ea2c110283ac5238336de4a3706e1406.png?compress=1&resize=1200x900',
    user_image:
        'https://cdn.dribbble.com/users/441606/avatars/small/ba69492df70471e2fcc7409a5f9e2be0.jpg?1570587185',
  ),
  Post(
    url:
        'https://cdn.dribbble.com/users/33073/screenshots/15839965/media/89dc4aa7b8c2ba290803ca8699357ec3.png?compress=1&resize=1200x900',
    user_image:
        'https://cdn.dribbble.com/users/441606/avatars/small/ba69492df70471e2fcc7409a5f9e2be0.jpg?1570587185',
  ),
  Post(
    url:
        'https://cdn.dribbble.com/users/2146089/screenshots/14453774/media/216077317e3576f8edbff846a358df5a.png?compress=1&resize=1200x900',
    user_image:
        'https://cdn.dribbble.com/users/441606/avatars/small/ba69492df70471e2fcc7409a5f9e2be0.jpg?1570587185',
  ),
];

List<String> my_posts = [
  'https://cdn.dribbble.com/users/6047818/screenshots/16425364/media/a855b66a9d41c79ef04ba5dd258516ef.png?compress=1&resize=1200x900',
  'https://cdn.dribbble.com/users/6228692/screenshots/16452651/media/f0c5644c6686695f873f94294d6e2872.png?compress=1&resize=1200x900',
  'https://cdn.dribbble.com/users/1187002/screenshots/16387491/media/15a6b53012791aeabe8debc092dbab5f.jpg?compress=1&resize=1200x900',
  'https://cdn.dribbble.com/users/1962534/screenshots/16431541/media/7324634fc6300cff2ef93023f04b44c2.jpg?compress=1&resize=1200x900',
  'https://cdn.dribbble.com/users/1615584/screenshots/16364085/media/f7a6bb29101ab59b53c72aba06f890dc.jpg?compress=1&resize=1200x900',
  'https://cdn.dribbble.com/users/427857/screenshots/16434886/media/ae5f9ae8ef9dd88d9b51221d04e9b368.png?compress=1&resize=1200x900',
  'https://cdn.dribbble.com/users/2564256/screenshots/16375491/media/895c28ea1efd9423393a85c291c94ae6.png?compress=1&resize=1200x900',
  'https://cdn.dribbble.com/users/2564256/screenshots/16421629/media/fa97071b5dd84f924d6cda859e758648.png?compress=1&resize=1200x900',
  'https://cdn.dribbble.com/users/1126935/screenshots/16438160/media/02e1bfa43512c40bd19be76fe53391f6.png?compress=1&resize=1200x900',
  'https://cdn.dribbble.com/users/2019344/screenshots/16425765/media/4ae7436b13d722ae28741508788ca425.png?compress=1&resize=1200x900'
];
