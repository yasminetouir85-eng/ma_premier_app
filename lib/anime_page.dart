import 'package:flutter/material.dart';

class AnimePage extends StatefulWidget {
  const AnimePage({super.key});

  @override
  State<AnimePage> createState() => _AnimePageState();
}

class _AnimePageState extends State<AnimePage> {
  int vus = 0;
  final int total = 37;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animé')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Death Note',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const Text('Épisodes vus', style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 16),
            Text(
              '$vus / $total',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 24),
            LinearProgressIndicator(value: vus / total),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (vus > 0) {
                        vus--;
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  child: const Text('-1'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      vus = 0;
                    });
                  },

                  child: const Text('zero'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (vus < total) {
                        vus++;
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                  ),
                  child: const Text('+1'),
                ),
              ],
            
              
            ),
          ],
        ),
      ),
    );
  }
}
