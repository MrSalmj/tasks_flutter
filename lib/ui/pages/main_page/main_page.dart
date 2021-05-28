import 'package:dailytasks_flutter/config/constants.dart';
import 'package:dailytasks_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        _buildTopBar(),
        _buildMyTasks(),
        Positioned(
            top: 410,
            left: 0,
            right: 0,
            bottom: 0,
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTodayTasksTitle(),
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: Container(
                      // decoration: BoxDecoration(
                      //     color: kTextBlue3.withAlpha(150),
                      //     borderRadius: BorderRadius.only(
                      //         topLeft: Radius.circular(100),
                      //         topRight: Radius.circular(100))),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: _buildTask(),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )),
        Align(
            // bottom: 20,
            // // left: 0,
            // right: getSize(context).width * 0.4,
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FloatingActionButton(
                autofocus: false,
                isExtended: false,
                onPressed: () {},
                child: Icon(
                  Icons.add,
                  size: 30,
                ),
                backgroundColor: kMainBlue.withAlpha(150),
              ),
            ))
      ],
    );
  }

  Container _buildTask() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(child: _buildVerticalDivider()),
          Flexible(flex: 8, child: _buildTaskNameTime()),
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: kLightBlue),
    );
  }

  Padding _buildTaskNameTime() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 14),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: "Reading Books",
            maxLines: 1,
            overFlow: TextOverflow.ellipsis,
            size: 15.0,
            color: kTextBlue3,
          ),
          SizedBox(
            height: 5,
          ),
          CustomText(
            text: "7:00 - 8:00",
            size: 15.0,
            color: Colors.grey,
          ),
          Row(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    color: kTextBlue2,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: CustomText(
                        text: "Urgent",
                        color: kTextBlue3,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Padding _buildVerticalDivider() {
    return Padding(
      padding: const EdgeInsets.only(left: 8, bottom: 40, top: 10),
      child: Container(
          height: 60,
          child: VerticalDivider(
            color: kMainBlue,
            thickness: 2,
          )),
    );
  }

  Row _buildTodayTasksTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 35,
          ),
          child: CustomText(
            text: "Today's Tasks",
            size: 24.0,
            fontWeight: FontWeight.bold,
            color: kTextBlue3,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: CustomText(
            text: "View All",
            size: 14.0,
            fontWeight: FontWeight.normal,
            color: kTextBlue3,
          ),
        ),
      ],
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
              padding: const EdgeInsets.only(left: 30, top: 15, right: 30),
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
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
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
