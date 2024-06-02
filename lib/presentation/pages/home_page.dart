import 'package:flutter/material.dart';
import 'package:portafolio/services/download_service.dart';

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey<ScaffoldState>();

    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      endDrawer: Drawer(
        child: Column(
          children: [
            const SizedBox(height: 30),
            ...getNavBarOptions(context)
          ]
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: colorScheme.tertiary,
            titleSpacing: 0,
            toolbarHeight: 80,
            title: JohcodeAppBar(scaffoldKey: scaffoldKey),
            actions: [Container()],
          ),
          SliverToBoxAdapter(
            child: Container(
              height: height-57,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xfff0f5fe),
                    Colors.white
                  ],
                  stops: [0.5, 0.5]
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 17),
                    child: Image.asset(
                      fit: BoxFit.fitHeight,
                      height: height*0.4,
                      'assets/coming_soon.gif'
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


class JohcodeAppBar extends StatelessWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;

  const JohcodeAppBar({
    super.key,
    required this.scaffoldKey
  });

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: 80,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Johcode',
              style: textTheme.displayMedium?.copyWith(fontWeight: FontWeight.bold),
            ),

            const Spacer(),

            FloatingActionButton(
              child: const Icon(Icons.menu_rounded),
              onPressed: () {
                if(!scaffoldKey.currentState!.isEndDrawerOpen) {
                  scaffoldKey.currentState?.openEndDrawer();
                } else {
                  scaffoldKey.currentState?.closeEndDrawer();
                }
              }
            )
          ],
        ),
      ),
    );
  }
}


List<Widget> getNavBarOptions(BuildContext context) {
  return <Widget>[
    const NavOptionButton(label: 'Home'),
    const SizedBox(height: 10),
    const NavOptionButton(label: 'About'),
    const SizedBox(height: 10),
    const NavOptionButton(label: 'Services'),
    const SizedBox(height: 10),
    const NavOptionButton(label: 'Portfolio'),
    const SizedBox(height: 10),
    const NavOptionButton(label: 'Contact'),

    const SizedBox(width: 10, height: 14),

    OutlinedButton(
        onPressed: () => DownloadService.downloadCV(),
        child: FittedBox(
          child: Row(
            children: [
              const Icon(Icons.download_rounded, size: 20, color: Colors.white),
              const SizedBox(width: 5),
              Text(
                'Download CV',
                style: Theme.of(context).textTheme.titleLarge,
              )
            ],
          ),
        )
    )
  ];
}


class NavOptionButton extends StatelessWidget {

  final String label;
  final void Function()? onTap;

  const NavOptionButton({
    super.key,
    required this.label,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return TextButton(
        onPressed: () {

        },
        child: Text(
          label,
          style: textTheme.titleLarge,
        )
    );
  }
}
