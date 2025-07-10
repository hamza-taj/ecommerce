import 'package:ecommerce/core/classes/statesrequest.dart';
import 'package:ecommerce/core/constants/appimageassest.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HandlingDataView extends StatelessWidget {
 final StatusRequest statusRequest ;
 final Widget widget ;
  const HandlingDataView ({super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return
    //? Loading      
    statusRequest == StatusRequest.loading ?           Center( child: Lottie.asset(Appimageassest.loading , width: 250 , height: 250 ,) )  : 
    //! OFFLINE Failure
    statusRequest == StatusRequest.offlineFailure ?    Center( child: Lottie.asset(Appimageassest.offline  , repeat: false) ) :
    //! SERVER Failure
    statusRequest == StatusRequest.serverFailure ?     Center( child: Lottie.asset(Appimageassest.server , width: 250 , height: 250) ):
    //! FAILURE 
    statusRequest == StatusRequest.failure ?           Center( child: Lottie.asset(Appimageassest.nodata , width: 250 , height: 250) ) : 

    widget ;

  }
}


//!  Handling Data Request


class HandlingDataRequsest extends StatelessWidget {
 final StatusRequest statusRequest ;
 final Widget widget ;
  const HandlingDataRequsest ({super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return
    //? Loading      
    statusRequest == StatusRequest.loading ?           Center( child: Lottie.asset(Appimageassest.loading , width: 250 , height: 250 ,) )  : 
    //! OFFLINE Failure
    statusRequest == StatusRequest.offlineFailure ?    Center( child: Lottie.asset(Appimageassest.offline  ) ) :
    //! SERVER Failure
    statusRequest == StatusRequest.serverFailure ?     Center( child: Lottie.asset(Appimageassest.server , width: 250 , height: 250) ):
  
    widget ;

  }
}