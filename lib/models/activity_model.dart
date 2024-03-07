import 'package:contact_app/models/user.dart';
import 'package:flutter/material.dart';

enum Activity { call, metting, congratulate, missing, notiCard, showMore, none }

class ActivityModel {
  final Activity activity;
  final User? user;
  final DateTime dateTime;
  final AboutCard? aboutCard;
  final String? eventName;
  final IconData icon;

  const ActivityModel(
      {required this.activity,
      this.user,
      required this.dateTime,
      required this.icon,
      this.eventName,
      this.aboutCard})
      : assert(activity == Activity.metting && aboutCard != null);
}

class AboutCard {
  final String title;
  final String description;
  const AboutCard({required this.title, required this.description});
}
