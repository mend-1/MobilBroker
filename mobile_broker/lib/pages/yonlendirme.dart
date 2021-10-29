import 'package:flutter/material.dart';
import 'package:mobile_broker/model/constants.dart';
import 'package:mobile_broker/model/context_extensions.dart';
import 'package:mobile_broker/pages/detay.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon customIcon = const Icon(
    Icons.search,
    size: 30,
  );
  Widget customSearchBar = const Text('YÖNLENDİRMELER');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavMenu(),
      backgroundColor: Colors.blueGrey.shade100,
      appBar: buildAppBar(context),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: context.dynamicHeight(0.02),
              horizontal: context.dynamicWidth(0.03),
            ),
            child: Column(
              children: [
                buildContainerScrool(context),
                SizedBox(
                  height: context.dynamicHeight(0.03),
                ),
                buildPaddingYonlendirme(context),
                SizedBox(
                  height: context.dynamicHeight(0.03),
                ),
                buildPaddingDivider(context),
                SizedBox(
                  height: context.dynamicHeight(0.02),
                ),
                buildPaddingButton(context),
                SizedBox(
                  height: context.dynamicHeight(0.02),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 150,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[Color(0xFF562f7e), Colors.deepPurpleAccent],
          ),
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: customSearchBar,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 80),
          child: IconButton(
            onPressed: () {
              setState(() {
                if (customIcon.icon == Icons.search) {
                  customIcon = const Icon(Icons.cancel);
                  customSearchBar = const ListTile(
                    leading: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 28,
                    ),
                    title: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: 'Ara...',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        ),
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide: BorderSide(color: Colors.white)),
                        filled: true,
                        contentPadding: EdgeInsets.only(
                            bottom: 10.0, left: 5.0, right: 5.0),
                      ),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  );
                } else {
                  customIcon = const Icon(Icons.search);
                  customSearchBar = const Text(
                    'YÖNLENDİRMELER',
                    style: kWhiteBold,
                  );
                }
              });
            },
            icon: customIcon,
          ),
        ),
      ],
    );
  }

  Container buildContainerScrool(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      child: ListView(
        padding: const EdgeInsets.all(8.0),
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            height: 45,
            width: 80,
            child: OutlineButton(
              borderSide: const BorderSide(color: Colors.blue, width: 1.0),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Colors.blue,
              child: Builder(builder: (context) {
                return const Text(
                  "Yeni",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontFamily: 'Poppins-Regular',
                  ),
                );
              }),
            ),
          ),
          SizedBox(
            width: context.dynamicWidth(0.03),
          ),
          SizedBox(
            height: 45,
            width: 150,
            child: OutlineButton(
              borderSide: BorderSide(color: Colors.green.shade600, width: 1.0),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Colors.green.shade600,
              child: Builder(builder: (context) {
                return const Text(
                  "İletişime geçildi",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontFamily: 'Poppins-Regular',
                  ),
                );
              }),
            ),
          ),
          SizedBox(
            width: context.dynamicWidth(0.03),
          ),
          SizedBox(
            height: 45,
            width: 180,
            child: OutlineButton(
              borderSide: BorderSide(color: Colors.green.shade600, width: 1.0),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Colors.green.shade600,
              child: Builder(builder: (context) {
                return const Text(
                  "Süreç devam ediyor",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontFamily: 'Poppins-Regular',
                  ),
                );
              }),
            ),
          ),
          SizedBox(
            width: context.dynamicWidth(0.03),
          ),
          SizedBox(
            height: 45,
            width: 180,
            child: OutlineButton(
              borderSide: BorderSide(color: Colors.green.shade600, width: 1.0),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Colors.green.shade600,
              child: Builder(builder: (context) {
                return const Text(
                  "Yetki belgesi alındı",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontFamily: 'Poppins-Regular',
                  ),
                );
              }),
            ),
          ),
          SizedBox(
            width: context.dynamicWidth(0.03),
          ),
          SizedBox(
            height: 45,
            width: 120,
            child: OutlineButton(
              borderSide: const BorderSide(color: Colors.red, width: 1.0),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: const Color(0xFFEF3C4C),
              child: Builder(builder: (context) {
                return const Text(
                  "Satın aldı",
                  style: TextStyle(
                    color: Color(0xFFEF3C4C),
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontFamily: 'Poppins-Regular',
                  ),
                );
              }),
            ),
          ),
          SizedBox(
            width: context.dynamicWidth(0.03),
          ),
          SizedBox(
            height: 45,
            width: 100,
            child: OutlineButton(
              borderSide: const BorderSide(color: Colors.red, width: 1.0),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: const Color(0xFFEF3C4C),
              child: Builder(builder: (context) {
                return const Text(
                  "Sattı",
                  style: TextStyle(
                    color: Color(0xFFEF3C4C),
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontFamily: 'Poppins-Regular',
                  ),
                );
              }),
            ),
          ),
          SizedBox(
            width: context.dynamicWidth(0.03),
          ),
          SizedBox(
            height: 45,
            width: 100,
            child: OutlineButton(
              borderSide: const BorderSide(color: Colors.red, width: 1.0),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: const Color(0xFFEF3C4C),
              child: Builder(builder: (context) {
                return const Text(
                  "Kiraladı",
                  style: TextStyle(
                    color: Color(0xFFEF3C4C),
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontFamily: 'Poppins-Regular',
                  ),
                );
              }),
            ),
          ),
          SizedBox(
            width: context.dynamicWidth(0.03),
          ),
          SizedBox(
            height: 45,
            width: 120,
            child: OutlineButton(
              borderSide: const BorderSide(color: Colors.red, width: 1.0),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: const Color(0xFFEF3C4C),
              child: Builder(builder: (context) {
                return const Text(
                  "Kiraya verdi",
                  style: TextStyle(
                    color: Color(0xFFEF3C4C),
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontFamily: 'Poppins-Regular',
                  ),
                );
              }),
            ),
          ),
          SizedBox(
            width: context.dynamicWidth(0.03),
          ),
          SizedBox(
            height: 45,
            width: 100,
            child: OutlineButton(
              borderSide: const BorderSide(color: Colors.red, width: 1.0),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: const Color(0xFFEF3C4C),
              child: Builder(builder: (context) {
                return const Text(
                  "Olumsuz",
                  style: TextStyle(
                    color: Color(0xFFEF3C4C),
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontFamily: 'Poppins-Regular',
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildPaddingYonlendirme(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: context.dynamicHeight(0.02),
        right: context.dynamicHeight(0.02),
      ),
      child: const Align(
        alignment: Alignment.topLeft,
        child: Text(
          "0 Yönlendirme",
          style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 18,
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins-Bold',
          ),
        ),
      ),
    );
  }

  Padding buildPaddingDivider(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: context.dynamicHeight(0.43),
        left: context.dynamicHeight(0.02),
      ),
      child: const Divider(
        thickness: 3,
        color: Colors.deepPurple,
      ),
    );
  }

  Padding buildPaddingButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(context.dynamicHeight(0.02)),
      child: Align(
        heightFactor: 4.2,
        alignment: Alignment.bottomRight,
        child: SizedBox(
          height: 55,
          width: context.dynamicWidth(0.55),
          child: RaisedButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.deepPurple.shade500,
            child: Row(
              children: [
                const Icon(
                  Icons.done,
                  color: Colors.white,
                ),
                SizedBox(
                  width: context.dynamicWidth(0.03),
                ),
                const Text(
                  "Yönlendirme Yap",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontFamily: 'OpenSans-Regular',
                    letterSpacing: 2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Theme bottomNavMenu() {
    return Theme(
      data: ThemeData(),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/images/home.png"),
            ),
            title: Text(
              "Anasayfa",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                  fontSize: 13),
            ),
          ),
          const BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/images/yon.png"),
              color: Colors.deepPurple,
            ),
            title: Text("Yönlendirme",
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 13)),
          ),
          const BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/images/arsalar.png"),
              color: Colors.blueGrey,
            ),
            title: Text("Arsalar",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: 13)),
          ),
          const BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/images/projeler.png"),
              color: Colors.blueGrey,
            ),
            title: Text("Topluluk",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: 13)),
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Detay()));
              },
              child: const Icon(
                Icons.menu,
                color: Colors.blueGrey,
                size: 30,
              ),
            ),
            title: const Text(
              "Diğer",
              style: TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins-Regular",
                fontSize: 13,
              ),
            ),
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
