import 'package:flutter/material.dart';
import 'package:flutter_ppkd/project/component/main/buttons.dart';
import 'package:go_router/go_router.dart';
// import 'package:flutter_ppkd/project/home/login-register/before_login_register_page.dart';
// import 'package:flutter_ppkd/project/home/login-register/login_page.dart';
// import 'package:go_router/go_router.dart';

// @RoutePage()
class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('WelcomePage'),
        automaticallyImplyLeading: false,
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(
              Icons.settings,
              color: Colors.black,
            ),
            offset: Offset(-10, 50),
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'settings',
                child: Text('Pengaturan'),
              ),
              const PopupMenuItem<String>(
                value: 'menu',
                child: Text('Menu'),
              ),
              const PopupMenuItem<String>(
                value: 'theme',
                child: Text('Tema'),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              // color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/Image.png',
                      width: 200, height: 200),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Mulai Perjalanan Menuntut Ilmu',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff0E592C),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Komitmen kami memudahkan kaum muslimin untuk belajar agama dan bahasa Arab dimanapun.',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                ButtonMain(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonMain extends StatelessWidget {
  const ButtonMain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: Column(
        children: [
          AppButton(
            text: 'Lanjut',
            onPressed: () {
              context.push('/before_login_register');
            },
            type: ButtonType.primary,
          ),
        ],
      ),
    );
  }
}
