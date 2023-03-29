import 'package:flutter/material.dart';
import 'package:flutter_architecture/business/block_factory.dart';
import 'package:flutter_architecture/ui/home_page.dart';
import 'package:provider/provider.dart';
import 'business/main_block.dart';

void main() {
  BlockFactory.instance.initialize();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final MainBloc _mainBloc;

  @override
  void initState() {
    super.initState();
    _mainBloc = BlockFactory.instance.get<MainBloc>();
    _mainBloc.add(const MainBlocEvent.init());
  }

  @override
  void dispose() {
    _mainBloc.dispose();
    super.dispose();
  }


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider<MainBloc>(
      create: (_) => _mainBloc,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      )
    );
  }
}
