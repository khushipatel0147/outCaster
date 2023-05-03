import 'package:flutter/cupertino.dart';
import 'package:photo_ui/provider/setting_provider.dart';
import 'package:provider/provider.dart';

class Setting_ios extends StatefulWidget {
  const Setting_ios({Key? key}) : super(key: key);

  @override
  State<Setting_ios> createState() => _Setting_iosState();
}

class _Setting_iosState extends State<Setting_ios> {
  SettinsgProvider? providerF;
  SettinsgProvider? providerT;
  @override
  Widget build(BuildContext context) {
    providerF=Provider.of<SettinsgProvider>(context,listen: false);
    providerT=Provider.of<SettinsgProvider>(context,listen: true);
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor: Color(0xffD93600),
          middle: Text(
            "Settings UI",
            style: TextStyle(
              letterSpacing: 1,
              fontSize: 20,
              fontFamily: 'Lily',
            ),
          ),
        ),
        backgroundColor: CupertinoColors.extraLightBackgroundGray,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,bottom: 2,top: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Common", style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 15,
                  fontFamily: 'Lily',
                  color:Color(0xff908B90)
                ),),
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              color: CupertinoColors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.globe,
                      size: 25,
                      color: CupertinoColors.inactiveGray,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Language",
                      style: TextStyle(
                          letterSpacing: 1, fontSize: 15, fontFamily: 'Lily',color: Color(
                          0xff4b424b),),
                    ),
                    Spacer(),
                    Text(
                      "English",
                      style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 15,
                          fontFamily: 'Lily',
                          color:CupertinoColors.opaqueSeparator),
                    ),
                    SizedBox(width: 05,),
                    Icon(
                      CupertinoIcons.forward,
                      size: 20,
                      color: CupertinoColors.opaqueSeparator,
                    ),

                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              color: CupertinoColors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.cloud,
                      size: 25,
                      color: CupertinoColors.inactiveGray,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Environment",
                      style: TextStyle(
                          letterSpacing: 1, fontSize: 15, fontFamily: 'Lily',color: Color(
                          0xff4b424b),),
                    ),
                    Spacer(),
                    Text(
                      "Production",
                      style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 15,
                          fontFamily: 'Lily',
                          color:CupertinoColors.opaqueSeparator),
                    ),
                    SizedBox(width: 05,),
                    Icon(
                      CupertinoIcons.forward,
                      size: 20,
                      color: CupertinoColors.opaqueSeparator,
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,bottom: 2,top: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Account", style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 15,
                    fontFamily: 'Lily',
                    color:Color(0xff908B90)
                ),),
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              color: CupertinoColors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.phone,
                      size: 25,
                      color: CupertinoColors.inactiveGray,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Phone number",
                      style: TextStyle(
                          letterSpacing: 1, fontSize: 15, fontFamily: 'Lily',color: Color(0xff4b424b),),
                    ),
                    Spacer(),

                    Icon(
                      CupertinoIcons.forward,
                      size: 20,
                      color:CupertinoColors.opaqueSeparator,
                    ),

                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              color: CupertinoColors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.mail,
                      size: 25,
                      color: CupertinoColors.inactiveGray,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Email",
                      style: TextStyle(
                          letterSpacing: 1, fontSize: 15, fontFamily: 'Lily',color: Color(0xff4b424b),),
                    ),
                    Spacer(),

                    Icon(
                      CupertinoIcons.forward,
                      size: 20,
                      color:CupertinoColors.opaqueSeparator,
                    ),

                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              color: CupertinoColors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.square_arrow_right,
                      size: 25,
                      color: CupertinoColors.inactiveGray,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Sing out",
                      style: TextStyle(
                          letterSpacing: 1, fontSize: 15, fontFamily: 'Lily',color: Color(0xff4b424b),),
                    ),
                    Spacer(),

                    Icon(
                      CupertinoIcons.forward,
                      size: 20,
                      color: CupertinoColors.opaqueSeparator,
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,bottom: 2,top: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Sequrity", style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 15,
                    fontFamily: 'Lily',
                    color:Color(0xff908B90)
                ),),
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              color: CupertinoColors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.device_phone_portrait,
                      size: 25,
                      color: CupertinoColors.inactiveGray,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Lock app in background",
                      style: TextStyle(
                          letterSpacing: 1, fontSize: 15, fontFamily: 'Lily',color: Color(0xff4b424b),),
                    ),
                    Spacer(),

                   CupertinoSwitch(
                     value: providerT!.ilock, onChanged: (value) {
                     providerF!.iapp(value);

                   },activeColor: Color(0xffD93600),)

                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              color: CupertinoColors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.hand_raised,
                      size: 25,
                      color: CupertinoColors.inactiveGray,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Use Finger",
                      style: TextStyle(
                          letterSpacing: 1, fontSize: 15, fontFamily: 'Lily',color: Color(0xff4b424b),),
                    ),
                    Spacer(),

                    CupertinoSwitch(value: providerT!.ifinger, onChanged: (value) {
                      providerF!.iuse(value);

                    },activeColor: Color(0xffD93600),)


                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              color: CupertinoColors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.lock,
                      size: 25,
                      color: CupertinoColors.inactiveGray,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Change Password ",
                      style: TextStyle(
                          letterSpacing: 1, fontSize: 15, fontFamily: 'Lily',color: Color(0xff4b424b),),
                    ),
                    Spacer(),

                    CupertinoSwitch(value: providerT!.ipass, onChanged: (value) {
                      providerF!.ichange(value);

                    },activeColor: Color(0xffD93600),),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,bottom: 2,top: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Misc", style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 15,
                    fontFamily: 'Lily',
                    color:Color(0xff908B90)
                ),),
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              color: CupertinoColors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.doc_text_fill,
                      size: 25,
                      color: CupertinoColors.inactiveGray,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Terms of Service",
                      style: TextStyle(
                          letterSpacing: 1, fontSize: 15, fontFamily: 'Lily',color: Color(0xff4b424b)),
                    ),
                    Spacer(),

                    Icon(
                      CupertinoIcons.forward,
                      size: 20,
                      color: CupertinoColors.opaqueSeparator,
                    ),

                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              color: CupertinoColors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.doc_on_doc_fill,
                      size: 25,
                      color: CupertinoColors.inactiveGray,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Open source licence",
                      style: TextStyle(
                          letterSpacing: 1, fontSize: 15, fontFamily: 'Lily',color: Color(0xff4b424b)),
                    ),
                    Spacer(),

                    Icon(
                      CupertinoIcons.forward,
                      size: 20,
                      color:CupertinoColors.opaqueSeparator,
                    ),

                  ],
                ),
              ),
            ),

          ],
        ));
  }
}
