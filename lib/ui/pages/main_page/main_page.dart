import 'package:dailytasks_flutter/config/constants.dart';
import 'package:dailytasks_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [_buildTopBar(), _buildMyTasks()],
    );
  }

  Positioned _buildMyTasks() {
    return Positioned(
        top: 120,
        left: 0,
        right: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: CustomText(
                text: "My Tasks",
                size: 24.0,
                fontWeight: FontWeight.bold,
                color: kTextBlue3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 15),
              child: Wrap(
                direction: Axis.horizontal,
                spacing: 16,
                runSpacing: 12,
                children: [
                  _buildCompletedTasks(),
                  _buildPendingTasks(),
                  _buildCancelledTasks(),
                  _buildOngoingTasks(),
                ],
              ),
            )
          ],
        ));
  }

  Wrap _buildOngoingTasks() {
    return Wrap(
      direction: Axis.vertical,
      children: [
        Container(
          // height: 60,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        'assets/svg/ongoing.svg',
                        color: Colors.white,
                        height: 15,
                      ),
                    ),
                    CustomText(
                      text: "On Going",
                      color: Colors.white,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CustomText(
                    text: "4 Tasks",
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 5,
                    color: Colors.black.withAlpha(30))
              ],
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors: [kBlue, kBlue.withAlpha(200)])),
        ),
      ],
    );
  }

  Wrap _buildCancelledTasks() {
    return Wrap(
      direction: Axis.vertical,
      children: [
        Container(
          // height: 60,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        'assets/svg/cancelled.svg',
                        color: Colors.white,
                        height: 15,
                      ),
                    ),
                    CustomText(
                      text: "Cancelled",
                      color: Colors.white,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CustomText(
                    text: "15 Tasks",
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 5,
                    color: Colors.black.withAlpha(30))
              ],
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors: [kRed, kRed.withAlpha(200)])),
        ),
      ],
    );
  }

  Wrap _buildPendingTasks() {
    return Wrap(
      direction: Axis.vertical,
      children: [
        Container(
          // height: 60,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        'assets/svg/pending.svg',
                        color: Colors.white,
                        height: 15,
                      ),
                    ),
                    CustomText(
                      text: "Pending",
                      color: Colors.white,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CustomText(
                    text: "6 Tasks",
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 5,
                    color: Colors.black.withAlpha(30))
              ],
              borderRadius: BorderRadius.circular(20),
              gradient:
                  LinearGradient(colors: [kOrange, kOrange.withAlpha(200)])),
        ),
      ],
    );
  }

  Wrap _buildCompletedTasks() {
    return Wrap(
      direction: Axis.vertical,
      children: [
        Container(
          // height: 60,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        'assets/svg/completed.svg',
                        color: Colors.white,
                        height: 15,
                      ),
                    ),
                    CustomText(
                      text: "Completed",
                      color: Colors.white,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CustomText(
                    text: "12 Tasks",
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 5,
                    color: Colors.black.withAlpha(30))
              ],
              borderRadius: BorderRadius.circular(20),
              gradient:
                  LinearGradient(colors: [kGreen, kGreen.withAlpha(200)])),
        ),
      ],
    );
  }

  Positioned _buildTopBar() {
    return Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Hi, Jack",
                    size: 35.0,
                    fontWeight: FontWeight.bold,
                    color: kMainBlue,
                  ),
                  CustomText(
                    text: "Let's make this day productive",
                    size: 14.0,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Image.asset(
                      'assets/icons/google.png',
                      height: 30,
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
