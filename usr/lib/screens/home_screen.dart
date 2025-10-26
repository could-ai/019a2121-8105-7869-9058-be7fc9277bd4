import 'package:flutter/material.dart';
import '../models/share_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<ShareItem> _items = [
    ShareItem(
      id: '1',
      title: 'Beautiful Sunset',
      description: 'A beautiful sunset over the mountains.',
      imageUrl: 'https://picsum.photos/seed/picsum/400/300',
    ),
    ShareItem(
      id: '2',
      title: 'City Lights',
      description: 'The city lights at night.',
      imageUrl: 'https://picsum.photos/seed/picsum2/400/300',
    ),
    ShareItem(
      id: '3',
      title: 'Forest Path',
      description: 'A quiet path in the middle of the forest.',
      imageUrl: 'https://picsum.photos/seed/picsum3/400/300',
    ),
    ShareItem(
      id: '4',
      title: 'Ocean Waves',
      description: 'Waves crashing on the shore.',
      imageUrl: 'https://picsum.photos/seed/picsum4/400/300',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Online Sharing'),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final item = _items[index];
          return Card(
            margin: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  item.imageUrl,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(item.description),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
