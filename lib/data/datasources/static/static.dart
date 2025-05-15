import 'package:ecommerce/core/constants/appimageassest.dart';
import 'package:ecommerce/data/model/onboardingmodel.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    imageTop: Appimageassest.onBoardingTopOne,
    imageIcon: Appimageassest.onBoardingIconOne,
    title: 'eCommerce Shop',
    titleTop: 'Your one-stop destination \n for seamless online shopping',
    image: Appimageassest.onboardingone,
    titleBottom: 'Purchase Online',
    description: 'Browse and buy your favorite products\n with just a few taps quick, easy, and secure',
  ),
  OnBoardingModel(
    imageTop: Appimageassest.onBoardingTopTwo,
    imageIcon: Appimageassest.onBoardingIconTwo,
    title: "Order Tracking",
    titleTop: 'Follow your order every\nstep of the way',
     image: Appimageassest.onboardingtwo,
    titleBottom: 'Track Your Order',
    description: 'Stay informed with live updates on your \nshipment from warehouse to doorstep',
   
  ),
  OnBoardingModel(
    imageTop: Appimageassest.onBoardingTopThree,
    imageIcon: Appimageassest.onBoardingIconThree,
    title: 'Delivered with Care',
    titleTop: 'Your satisfaction is in every box',
     image: Appimageassest.onboardingthree,
    titleBottom: 'Fast & Safe Delivery',
    description:
        'Receive your order quickly and securely \n right where you need it, when you need it',
   
  ),
];
