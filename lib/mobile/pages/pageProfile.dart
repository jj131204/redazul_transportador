import 'package:flutter/material.dart';

import '../widgets/generalConfiguration.dart';

class PageProfile extends StatefulWidget {
  const PageProfile({super.key});

  @override
  State<PageProfile> createState() => _PageProfileState();
}

class _PageProfileState extends State<PageProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool validForm = false;

  @override
  Widget build(BuildContext context) {
    return GeneralConfiguration(
      content: Form(
        key: _formKey,
        child: Text(""),
      )
    );
  }
}