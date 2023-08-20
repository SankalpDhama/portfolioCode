import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? mobileLarge;
  final Widget? desktop;
  final Widget tablet;
  const Responsive({Key? key,required this.mobile,this.desktop,this.mobileLarge,required this.tablet}) : super(key: key);
  static bool isMobile(BuildContext context)=>
      MediaQuery.of(context).size.width<=500;
  static bool isMobileLarge(BuildContext context)=>
      MediaQuery.of(context).size.width<=800;
  static bool isTablet(BuildContext context)=>
      MediaQuery.of(context).size.width<1060;
  static bool isDesktop(BuildContext context)=>
      MediaQuery.of(context).size.width>=1060;
  @override
  Widget build(BuildContext context) {
    final Size _size=MediaQuery.of(context).size;
    if(_size.width>=1060){
      return desktop!;
    }else if(_size.width>=800 && tablet!=null){
      return tablet;
    }else if(_size.width>=600 && mobileLarge!=null){
      return mobileLarge!;
    }else{
      return mobile;
    }
  }
}
