import 'package:flutter/material.dart';

import 'package:portafolio/services/download_service.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).colorScheme.secondary,
            title: Row(
              children: [
                Text(
                  'Johcode',
                  style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),

                const Spacer(),

                const NavOptionButton(label: 'Home'),
                const NavOptionButton(label: 'About'),
                const NavOptionButton(label: 'Services'),
                const NavOptionButton(label: 'Portfolio'),
                const NavOptionButton(label: 'Contact'),

                const SizedBox(width: 20),

                OutlinedButton(
                  onPressed: () => DownloadService.downloadCV(),
                  child: Row(
                    children: [
                      const Icon(Icons.download_rounded, size: 20, color: Colors.white),
                      Text(
                        'Download CV',
                        style: Theme.of(context).textTheme.labelLarge,
                      )
                    ],
                  )
                )
              ],
            ),
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
    return TextButton(
      onPressed: () {

      },
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelLarge,
      )
    );
  }
}
