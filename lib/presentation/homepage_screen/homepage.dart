import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:secure_pay/widgets/custom_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  bool selected = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomBarBackground(
          items: const [
            TabItem(
              icon: Icons.home,
              title: 'Home',
            ),
            TabItem(
              icon: Icons.chat,
              title: 'Chat',
            ),
            TabItem(
              icon: Icons.settings,
              title: 'Settings',
            ),
            TabItem(
              icon: Icons.person_2,
              title: 'Account',
            ),
          ],
          iconSize: 25,
          backgroundColor: Colors.white,
          color: Colors.grey,
          colorSelected: Colors.blue,
          indexSelected: currentPage,
          backgroundSelected: Colors.white,
          onTap: (int index) {
            setState(() {
              currentPage = index;
            });
          },
        ),
        body: Stack(
          children: [
            SafeArea(
              child: IndexedStack(
                index: currentPage,
                children: const <Widget>[
                  Home(),
                  HomeBanner(),
                  GridBlock(),
                  Home(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        child: Column(
          children: [
            Card(
              color: Colors.white,
              margin: EdgeInsets.zero,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              elevation: 0,
              child: ListTile(
                leading: Container(
                  width: 50,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                title: const Text(
                  "Hi, Davis",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: const Text(
                  "Let's get your Finances secured",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_outlined,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const HomeBanner(),
            const GridBlock()
          ],
        ),
      ),
    );
  }
}
