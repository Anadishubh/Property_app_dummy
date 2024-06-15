import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:nestsuche2/Localization/locales.dart';

class ThanksPage extends StatefulWidget {
  const ThanksPage({super.key});

  @override
  ThanksPageState createState() => ThanksPageState();
}

class ThanksPageState extends State<ThanksPage> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 28, top: 20),
          child: Text(
            LocaleData.thanks.getString(context),
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.only(left: 28.0,right: 20),
          child: Text(LocaleData.thanks2.getString(context),
            style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),
          ),
        )
      ],
    );
  }
}