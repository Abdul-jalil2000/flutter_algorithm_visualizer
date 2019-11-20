import 'package:algorithms_visualizer/providers/search/search_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchSpeed<T extends SearchProvider> extends StatelessWidget {
  const SearchSpeed({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Consumer<T>(
          builder: (context, provider, child) {
            return Container(
              child: Slider(
                value: provider.sortSpeed,
                onChanged: (value) => provider.sortSpeed = value,
              ),
            );
          },
        ),
        Text('Sort Speed', style: Theme.of(context).textTheme.caption),
      ],
    );
  }
}