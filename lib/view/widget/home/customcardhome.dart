import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:flutter/material.dart';

class CustomCardHome extends StatelessWidget {
  final String titlecard;
  final String subtitlecard;
  const CustomCardHome({super.key, required this.titlecard, required this.subtitlecard});

  @override
  Widget build(BuildContext context) {
    return Container(
                      height: 180,
                      margin: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 25,
                              ),
                              title: Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                  titlecard,
                                  style: TextStyle(
                                    color: AppColor.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              subtitle: Container(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  subtitlecard,
                                  style: TextStyle(
                                    color: AppColor.darkBlue,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "PlayfairDisplay",
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Positioned(
                            top: -20,
                            right: -15,
                            child: Container(
                              width: 160,
                              height: 160,
                              decoration: BoxDecoration(
                                color: AppColor.secondaryColor,
                                borderRadius: BorderRadius.circular(120),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
  }
}