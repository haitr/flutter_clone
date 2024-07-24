import 'package:flutter/material.dart';
import 'package:riverpod_widget/riverpod_widgets.dart';
import 'package:riverpod_widget/wrapper.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '[riverpod_widget] Counter example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '[riverpod_widget] Counter example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// -------------->> create provider
final counterProvider = StateProvider((ref) => 0);

// I believe there are many ways to implement this reactive TextStyle
// but in demontrated approach for simplicity, I'd like to use static property as the default
class IncreasingTextSize extends AutoDisposeNotifier<TextStyle> {
  static var defaultStyle = const TextStyle(fontSize: 10);

  @override
  TextStyle build() {
    final _ = ref.watch(counterProvider);
    defaultStyle = defaultStyle.copyWith(fontSize: defaultStyle.fontSize! + 3);
    return defaultStyle;
  }
}

final textStyleProvider = AutoDisposeNotifierProvider<IncreasingTextSize, TextStyle>(
    IncreasingTextSize.new,
    dependencies: [counterProvider]);

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            $Text(
              $.all,
              "0".bind(#data, (ref) => ref.watch(counterProvider).toString()),
              style: IncreasingTextSize.defaultStyle
                  .bind(#style, (ref) => ref.watch(textStyleProvider)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.providerScope.read(counterProvider.notifier).state++,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
