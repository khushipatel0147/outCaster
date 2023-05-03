import 'package:flutter/material.dart';
import 'package:photo_ui/provider/setting_provider.dart';
import 'package:provider/provider.dart';

class Setting_android extends StatefulWidget {
  const Setting_android({Key? key}) : super(key: key);

  @override
  State<Setting_android> createState() => _Setting_androidState();
}

class _Setting_androidState extends State<Setting_android> {
  SettinsgProvider? providerF;
  SettinsgProvider? providerT;

  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<SettinsgProvider>(context, listen: true);
    providerF = Provider.of<SettinsgProvider>(context, listen: false);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffD93600),
        title: Text(
          "Settings UI",
          style: TextStyle(
            letterSpacing: 1,
            fontSize: 20,
            fontFamily: 'Lily',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Text(
                "Common",
                style: TextStyle(
                  color: Color(0xffD93600),
                  letterSpacing: 1,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
              child: Row(
                children: [
                  Icon(
                    Icons.language,
                    size: 25,
                  ),
                  SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Language",
                        style: TextStyle(
                            letterSpacing: 1, fontSize: 18, fontFamily: 'Lily'),
                      ),
                      Text(
                        "English",
                        style: TextStyle(
                            letterSpacing: 1,
                            fontSize: 18,
                            fontFamily: 'Lily',
                            color: Colors.black38),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
              child: Divider(color: Colors.black38),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Icon(
                    Icons.cloud_outlined,
                    size: 25,
                  ),
                  SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Environment",
                        style: TextStyle(
                            letterSpacing: 1, fontSize: 18, fontFamily: 'Lily'),
                      ),
                      Text(
                        "Production",
                        style: TextStyle(
                            letterSpacing: 1,
                            fontSize: 18,
                            fontFamily: 'Lily',
                            color: Colors.black38),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              child: Text(
                "Account",
                style: TextStyle(
                  color: Color(0xffD93600),
                  letterSpacing: 1,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    size: 25,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Phone number",
                    style: TextStyle(
                        letterSpacing: 1, fontSize: 18, fontFamily: 'Lily'),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              child: Divider(color: Colors.black38),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    size: 25,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Email",
                    style: TextStyle(
                        letterSpacing: 1, fontSize: 18, fontFamily: 'Lily'),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              child: Divider(color: Colors.black38),
            ),
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              child: Row(
                children: [
                  Icon(
                    Icons.exit_to_app,
                    size: 25,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Sign out",
                    style: TextStyle(
                        letterSpacing: 1, fontSize: 18, fontFamily: 'Lily'),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              child: Text(
                "Security",
                style: TextStyle(
                  color: Color(0xffD93600),
                  letterSpacing: 1,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
              child: Row(
                children: [
                  Icon(
                    Icons.phonelink_lock,
                    size: 25,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Lock app in background",
                    style: TextStyle(
                        letterSpacing: 1, fontSize: 18, fontFamily: 'Lily'),
                  ),
                  Spacer(),
                  Switch(
                    value: providerT!.lock,
                    onChanged: (value) {
                      providerF!.app(value);
                    },
                    activeColor: Color(0xffD93600),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
              child: Divider(color: Colors.black38),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
              child: Row(
                children: [
                  Icon(
                    Icons.fingerprint,
                    size: 25,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Use Fingerprint",
                    style: TextStyle(
                        letterSpacing: 1, fontSize: 18, fontFamily: 'Lily'),
                  ),
                  Spacer(),
                  Switch(
                    value: providerT!.finger,
                    onChanged: (value) {
                      providerF!.use(value);
                    },
                    activeColor: Color(0xffD93600),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
              child: Divider(color: Colors.black38),
            ),
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
              child: Row(
                children: [
                  Icon(
                    Icons.lock,
                    size: 25,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Change Password",
                    style: TextStyle(
                        letterSpacing: 1, fontSize: 18, fontFamily: 'Lily'),
                  ),
                  Spacer(),
                  Switch(
                    value: providerT!.pass,
                    onChanged: (value) {
                      providerF!.change(value);
                    },
                    activeColor: Color(0xffD93600),
                  )
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Text(
                "Misc",
                style: TextStyle(
                  color: Color(0xffD93600),
                  letterSpacing: 1,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              child: Row(
                children: [
                  Icon(
                    Icons.find_in_page_outlined,
                    size: 25,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Terms of Service",
                    style: TextStyle(
                        letterSpacing: 1, fontSize: 18, fontFamily: 'Lily'),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              child: Divider(color: Colors.black38),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              child: Row(
                children: [
                  Icon(
                    Icons.copy,
                    size: 25,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Open source licenses",
                    style: TextStyle(
                        letterSpacing: 1, fontSize: 18, fontFamily: 'Lily'),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    ));
  }
}
