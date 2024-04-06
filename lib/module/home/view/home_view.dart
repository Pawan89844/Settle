import 'package:flutter/material.dart';
import 'package:settle/style/fonts/app_heading.dart';
import 'package:settle/style/fonts/app_text.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static MaterialPageRoute page() {
    return MaterialPageRoute(
      builder: (context) => const HomeView(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            child: Icon(Icons.person),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset('assets/icons/qr_code.png', height: 22.0)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          const SizedBox(width: 10.0)
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * .5,
        child: FloatingActionButton(
            onPressed: () {},
            child: TextButton(
                onPressed: () {}, child: const AppText('Scan to Pay'))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Card(
            child: ListTile(
                leading: Container(
                  height: 40.0,
                  width: 40.0,
                  alignment: Alignment.topCenter,
                  child: const Icon(Icons.wallet),
                ),
                title: const AppHeading('₹ 670', fontSize: 20.0),
                subtitle:
                    const AppText('Balance', alignment: Alignment.centerLeft),
                trailing:
                    TextButton(onPressed: () {}, child: const AppText('Show'))),
          ),
          Card(
            child: ListTile(
              leading: Container(
                height: 40.0,
                width: 40.0,
                alignment: Alignment.topCenter,
              ),
              title: const AppHeading('UPI ID', fontSize: 20.0),
              subtitle: const AppText('9810253997@ybl',
                  alignment: Alignment.centerLeft),
              trailing: Image.asset('assets/icons/qr_code.png', height: 35.0),
            ),
          ),
        ]),
      ),
    );
  }
}
