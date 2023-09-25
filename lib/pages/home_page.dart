import 'package:assistant_gpt/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Assistant GPT')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 88.0),
        children: const [
          Align(
            alignment: Alignment.center,
            child: FlutterLogo(size: 128.0),
          ),
          _Recomendations(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.mic_rounded),
      ),
    );
  }
}

class _Recomendations extends StatelessWidget {
  const _Recomendations();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Here are a few features'),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: CustomListTile(
            color: Theme.of(context).colorScheme.primaryContainer,
            title: 'ChatGPT',
            subtitle:
                'A smarter way to stay organized and informed with ChatGPT',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: CustomListTile(
            color: Theme.of(context).colorScheme.secondaryContainer,
            title: 'Dall-E',
            subtitle:
                'Get inspiredand stay creative with your personal assistant powered by Dall-E',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: CustomListTile(
            color: Theme.of(context).colorScheme.tertiaryContainer,
            title: 'Smart Voice Assisstant',
            subtitle:
                'Get the best of both worlds with a voice assistant powered by Dall-E and ChatGPT',
          ),
        ),
      ],
    );
  }
}
