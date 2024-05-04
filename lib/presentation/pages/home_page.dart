import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).colorScheme.secondary,
            title: Row(
              children: [
                const Text('Johcode'),
                const NavOptionButton(label: 'Home'),
                const NavOptionButton(label: 'About'),
                const NavOptionButton(label: 'Services'),
                const NavOptionButton(label: 'Portfolio'),
                const NavOptionButton(label: 'Contact'),

                OutlinedButton(
                  onPressed: () {

                  },
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
