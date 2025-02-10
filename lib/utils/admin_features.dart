import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AdminFeatures {
  AdminFeatures._();

  static List<Map<String, dynamic>> adminFeatures = [
    {
      'name': "Add Blog",
      'description': 'You dan add blog over here.',
      'icon': FontAwesomeIcons.plus,
    },
    {
      'name': "Delete Blog",
      'description': 'You can delete blog over here.',
      'icon': FontAwesomeIcons.cross,
    },
    {
      'name': 'View Blog',
      'description': 'You can view your blog and comments over here',
      'icon': FontAwesomeIcons.eye,
    },
  ];
}
