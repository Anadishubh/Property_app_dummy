import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:nestsuche2/Constant/color_constant.dart';
import 'package:nestsuche2/Controller/language_controller.dart';
import 'package:nestsuche2/Controller/region_controller.dart';
import 'package:nestsuche2/Localization/locales.dart';

class RegionSelection extends StatefulWidget {
  const RegionSelection({super.key});

  @override
  RegionSelectionState createState() => RegionSelectionState();
}

class RegionSelectionState extends State<RegionSelection> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 28, top: 20),
          child: Text(
            LocaleData.region.getString(context),
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 10,),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 90),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: regions.length,
              itemBuilder: (context, index) {
                String language = regions[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 28),
                    child: Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: selectedIndex == index
                            ? Colors.grey.shade300
                            : Colors.white,
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 10),
                          Text(
                            language,
                            style: const TextStyle(fontSize: 16),
                          ),
                          const Spacer(),
                          if (selectedIndex == index)
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(Icons.check, color: AppColors.buttonColor),
                            ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}