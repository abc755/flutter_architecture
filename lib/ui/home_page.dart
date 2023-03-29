import 'package:flutter/material.dart';
import 'package:flutter_architecture/business/main_block.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _updateTime() {
    context.read<MainBloc>().add(const MainBlocEvent.update());
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<MainBlocState>(
        stream: context.read<MainBloc>().state,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final state = snapshot.data;
            return state!.map<Widget>(
                loading: (_) => Scaffold(
                      appBar: AppBar(
                        title: Text('Demo'),
                      ),
                      body: const Center(
                        child: Text('Initializing'),
                      ),
                    ),
                loaded: (state) => Scaffold(
                      appBar: AppBar(
                        title: Text(widget.title),
                      ),
                      body: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Current DateTime ${state.timeData.date}',
                              style: Theme.of(context).textTheme.headlineMedium,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Text(
                              'Current Timestamp ${state.timeData.timestamp}',
                              style: Theme.of(context).textTheme.headlineMedium,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      floatingActionButton: FloatingActionButton(
                        onPressed: _updateTime,
                        tooltip: 'Update',
                        child: const Icon(Icons.update),
                      ), // This trailing comma makes auto-formatting nicer for build methods.
                    ));
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}
