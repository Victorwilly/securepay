import 'package:flutter/material.dart';
import 'package:secure_pay/main.dart';
import 'package:secure_pay/utils/textstyle.dart';
import 'package:simple_grid/simple_grid.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    double maxWidth = ScreenSize(context).maxWidth;
    return Container(
      width: maxWidth - 20,
      height: 220,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/images/Rectangle 14.png"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(13),
        color: Colors.black12,
      ),
      padding: const EdgeInsets.only(top: 10, left: 15),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "securepay",
              style: securePay,
            ),
          ),
          const SizedBox(height: 30),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "SHOPPING \nMADE EASY",
              style: shopping,
            ),
          ),
        ],
      ),
    );
  }
}

class GridBlock extends StatelessWidget {
  const GridBlock({super.key});

  @override
  Widget build(BuildContext context) {
    double maxWidth = ScreenSize(context).maxWidth;
    return SpGrid(
      padding: const EdgeInsets.all(10),
      children: [
        SpGridItem(
          xs: 6,
          sm: 4,
          lg: 3,
          md: 4,
          child: Container(
            alignment: Alignment.center,
            width: maxWidth / 2.3,
            height: 220,
            margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green[100],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.account_balance_wallet_outlined,
                  color: Colors.green[700],
                  size: 100,
                ),
                // SizedBox(height: 20),
                Text(
                  "Make \nPayments",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.green[700],
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        SpGridItem(
          xs: 6,
          sm: 4,
          lg: 3,
          md: 4,
          child: Container(
            alignment: Alignment.center,
            width: maxWidth / 2.3,
            height: 220,
            margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.purple[100],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.fact_check_outlined,
                  color: Colors.purple[700],
                  size: 100,
                ),
                // SizedBox(height: 20),
                Text(
                  "Confirm \nPayments",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.purple[700],
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        SpGridItem(
          xs: 6,
          sm: 4,
          lg: 3,
          md: 4,
          child: Container(
            alignment: Alignment.center,
            width: maxWidth / 2.3,
            height: 220,
            margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red[100],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.perm_device_info_outlined,
                  color: Colors.red[700],
                  size: 100,
                ),
                // SizedBox(height: 20),
                Text(
                  "Track \nOrder",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.red[700],
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        SpGridItem(
          xs: 6,
          sm: 4,
          lg: 3,
          md: 4,
          child: Container(
            alignment: Alignment.center,
            width: maxWidth / 2.3,
            height: 220,
            margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue[100],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.message_rounded,
                  color: Colors.blue[700],
                  size: 100,
                ),
                // SizedBox(height: 20),
                Text(
                  "Chat \nSeller",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.blue[700],
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class SelectBank extends StatefulWidget {
  const SelectBank({super.key});

  @override
  State<SelectBank> createState() => _SelectBankState();
}

class _SelectBankState extends State<SelectBank> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SpGrid(
            children: [
              SpGridItem(
                xs: 4,
                sm: 4,
                lg: 3,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/firstbank.png"),
                      ),
                    ),
                  ),
                ),
              ),
              SpGridItem(
                xs: 4,
                sm: 4,
                lg: 3,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/access.png"),
                      ),
                    ),
                  ),
                ),
              ),
              SpGridItem(
                xs: 4,
                sm: 4,
                lg: 3,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/wema.png"),
                      ),
                    ),
                  ),
                ),
              ),
              SpGridItem(
                xs: 4,
                sm: 4,
                lg: 3,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/fcmb.png"),
                      ),
                    ),
                  ),
                ),
              ),
              SpGridItem(
                xs: 4,
                sm: 4,
                lg: 3,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/opay.png"),
                      ),
                    ),
                  ),
                ),
              ),
              SpGridItem(
                xs: 4,
                sm: 4,
                lg: 3,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/confirm.png",
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Other Banks",
              style: normal,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/nirsal.png"),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/fidelity.png"),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/uba.png"),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/gtbank.png"),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Dialogs extends StatefulWidget {
  const Dialogs({super.key});

  @override
  State<Dialogs> createState() => _DialogsState();
}

class _DialogsState extends State<Dialogs> {
  void openDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('What is a dialog?'),
        content: const Text(
            'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.'),
        actions: <Widget>[
          TextButton(
            child: const Text('Dismiss'),
            onPressed: () => Navigator.of(context).pop(),
          ),
          FilledButton(
            child: const Text('Okay'),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

  void openFullscreenDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) => Dialog.fullscreen(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Scaffold(
            // appBar: AppBar(
            //   title: const Text('Full-screen dialog'),
            //   centerTitle: false,
            //   leading: IconButton(
            //     icon: const Icon(Icons.close),
            //     onPressed: () => Navigator.of(context).pop(),
            //   ),
            //   actions: [
            //     TextButton(
            //       child: const Text('Close'),
            //       onPressed: () => Navigator.of(context).pop(),
            //     ),
            //   ],
            // ),
            bottomNavigationBar: Container(
              height: 300,
              width: double.maxFinite,
              color: Colors.blueGrey,
              // child: ,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      children: [
        TextButton(
          child: const Text(
            'Show dialog',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onPressed: () => openDialog(context),
        ),
        TextButton(
          child: const Text(
            'Show full-screen dialog',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onPressed: () => openFullscreenDialog(context),
        ),
      ],
    );
  }
}
