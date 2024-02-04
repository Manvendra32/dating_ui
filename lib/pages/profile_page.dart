import 'package:dating_ui/commons/my_info.dart';
import 'package:dating_ui/commons/profile_info_big_card.dart';
import 'package:dating_ui/pages/super_likes_me_pages.dart';
import 'package:dating_ui/styleguide/colors.dart';
import 'package:dating_ui/styleguide/text_style.dart';
import 'package:flutter/material.dart';

import '../commons/opaque_image.dart';
import '../commons/profile_info_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 4,
                child: Stack(
                  children: [
                    OpaqueImage(
                      imageUrl: "assets/images/hayat.jpg",
                    ),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'My Profile',
                                textAlign: TextAlign.left,
                                style: headingTextStyle,
                              )),
                          MyInfo(),
                        ]),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.only(top: 40),
                  color: Colors.white70,
                  child: Table(
                    children: [
                      TableRow(children: [
                        ProfileInfoBigCard(
                          icon: Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.blue,
                          ),
                          firstText: '13',
                          secondText: "New matches",
                        ),
                        ProfileInfoBigCard(
                          firstText: '21',
                          secondText: "Unmatched me",
                          icon: Image.asset(
                            "assets/icons/sad_smiley.png",
                            width: 20,
                            color: blueColor,
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        ProfileInfoBigCard(
                          icon: Image.asset(
                            "assets/icons/checklist.png",
                            width: 20,
                            color: blueColor,
                          ),
                          firstText: '264',
                          secondText: "All matches",
                        ),
                        ProfileInfoBigCard(
                          firstText: '42',
                          secondText: "Rematches",
                          icon: Icon(
                            Icons.refresh,
                            size: 20,
                            color: blueColor,
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        ProfileInfoBigCard(
                          icon: Icon(
                            Icons.remove_red_eye,
                            size: 20,
                            color: Colors.blue,
                          ),
                          firstText: '404',
                          secondText: "Profile Visitors",
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SuperLikesMePage()));
                          },
                          child: ProfileInfoBigCard(
                            firstText: '42',
                            secondText: "Super Likes",
                            icon: Icon(
                              Icons.favorite,
                              size: 20,
                              color: Colors.pink,
                            ),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: screenHeight * (4.1 / 9) - 80 / 2,
            left: 16,
            right: 16,
            child: Container(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ProfileInfoCard(
                    firstText: "54%",
                    secondText: "Progress",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ProfileInfoCard(
                    hasImage: true,
                    imagePath: "assets/icons/pulse.png",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ProfileInfoCard(
                    firstText: "152",
                    secondText: "Level",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
