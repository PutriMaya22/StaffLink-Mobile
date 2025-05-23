import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:StaffLink/generated/assets.dart';
import 'package:StaffLink/json/shortcut_list.dart';
import 'package:StaffLink/repo/repository.dart';
import 'package:StaffLink/widgets/custom_list_tile.dart';
import 'package:StaffLink/utils/iconly/iconly_bold.dart';
import 'package:StaffLink/utils/styles.dart';
import 'package:StaffLink/view_models/view_models.dart';
import 'package:StaffLink/widgets/my_app_bar.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Repository.bgColor(context),
      appBar: myAppBar(title: 'Profile', implyLeading: false, context: context),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          const Gap(40),
          Stack(
            children: [
              Container(
                height: 280,
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Repository.accentColor(context),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Gap(60),
                      Center(
                          child: Text('YOUNESS MOUATASSIM',
                              style: TextStyle(
                                  color: Repository.textColor(context), fontSize: 20, fontWeight: FontWeight.bold))),
                      const Gap(10),
                      Text('younes@gmail.com',
                          style:
                              TextStyle(color: Repository.subTextColor(context))),
                      const Gap(25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: profilesShortcutList.map<Widget>((e) {
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 15),
                            padding: const EdgeInsets.all(13),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Icon(e['icon'], color: e['color']),
                          );
                        }).toList(),
                      ),
                      const Gap(25)
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 30,
                right: 30,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFE486DD),
                  ),
                  child: Transform.scale(
                    scale: 0.55,
                    child: Image.asset(Assets.dash),
                  ),
                ),
              )
            ],
          ),
          const Gap(35),
          CustomListTile(
              icon: IconlyBold.Profile,
              color: const Color(0xFFC76CD9),
              title: 'Information', context: context),
          CustomListTile(
              icon: IconlyBold.Shield_Done,
              color: const Color(0xFF229e76),
              title: 'Security', context: context),
          CustomListTile(
              icon: IconlyBold.Message,
              color: const Color(0xFFe17a0a),
              title: 'Contact us', context: context),
          CustomListTile(
              icon: IconlyBold.Document,
              color: const Color(0xFF064c6d),
              title: 'Support', context: context),
          CustomListTile(
              icon: Icons.dark_mode,
              color: const Color(0xFF0536e8),
              title: 'Dark Mode',
              isDarkMode: true, context: context),
        ],
      ),
    );
  }
}

