import 'package:api_search/viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:rxflutterify_binding/rx_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '[rxflutterify_binding] Pub.dev example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '[rxflutterify_binding] Pub.dev example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final SearchPageViewModel viewModel;
  late final TextEditingController textController;

  @override
  void initState() {
    super.initState();
    //
    viewModel = SearchPageViewModel();
    textController = TextEditingController();
    textController.bindMap(
      viewModel.input.text,
      from: (from) => from.text,
      to: (to) => TextEditingValue(text: to),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Column(
          children: [
            Text(widget.title),
            const SizedBox(height: 8),
            SearchBar(
              controller: textController,
              leading: const Icon(Icons.search),
              trailing: [
                $Builder(
                  $.all,
                  builder: ((context) => const SizedBox.shrink() as Widget).bind(
                    #builder,
                    viewModel.input.text.map((event) => event.isEmpty
                        ? (_) => const SizedBox.shrink()
                        : (_) => TextButton(
                              onPressed: () => viewModel.clearInputText(),
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(Colors.deepPurple),
                                foregroundColor: WidgetStateProperty.all(Colors.white),
                              ),
                              child: const Text('Clear'),
                            )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: $ListView.separated(
          $.all,
          separatorBuilder: (context, index) => Container(color: Colors.grey, height: 1),
          itemCount: 0.bind(#itemCount, viewModel.output.packages.map((event) => event.length)),
          itemBuilder: (context, index) {
            final package = viewModel.output.packages.value[index];
            final packageName = package.package;
            final packageInfo = viewModel.getPackage(packageName);
            return Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(packageName),
                  const SizedBox(height: 4),
                  $Text($.all, '...'.bind(#data, packageInfo.map((event) => event.latest.version))),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
