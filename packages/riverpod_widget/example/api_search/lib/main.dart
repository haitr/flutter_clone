import 'package:api_search/provider.dart';
import 'package:api_search/pub_repository.dart';
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
      title: '[riverpod_widget] Pub.dev example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '[riverpod_widget] Pub.dev example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final searchKeywordProvider = StateProvider((ref) => "");

final packageDetailProvider = FutureProvider<Package>((ref) => throw 'Unimplemented!');

class _MyHomePageState extends State<MyHomePage> {
  late final TextEditingController textController;

  @override
  void initState() {
    super.initState();
    //
    textController = TextEditingController();
    textController.addListener(() {
      context.providerScope.read(searchKeywordProvider.notifier).state = textController.text;
    });
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
                  builder: ((BuildContext context) => const SizedBox.shrink() as Widget).bind(
                    #builder,
                    (ref) {
                      final keyword = ref.watch(searchKeywordProvider);
                      if (keyword.isEmpty) return (_) => const SizedBox.shrink();
                      return (_) => TextButton(
                            onPressed: () {
                              context.providerScope.invalidate(searchKeywordProvider);
                              textController.clear();
                            },
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(Colors.deepPurple),
                              foregroundColor: WidgetStateProperty.all(Colors.white),
                            ),
                            child: const Text('Clear'),
                          );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: $ListView.custom(
          $.all,
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            return const Center(child: CircularProgressIndicator());
          }).bind(
            #childrenDelegate,
            (ref) => SliverChildBuilderDelegate((context, index) {
              final keyword = ref.watch(searchKeywordProvider);
              if (keyword.length < 3) return null;
              const pageSize = 10;
              final page = index ~/ pageSize + 1;
              final packageList = ref.watch(fetchPackagesProvider((page, keyword)));
              final indexInPage = index % pageSize;
              return packageList.when(
                  error: (err, stack) => Text('Error $err'),
                  loading: () =>
                      const SizedBox(height: 40, child: Center(child: CircularProgressIndicator())),
                  data: (data) => ProviderScope(
                        overrides: [
                          packageDetailProvider.overrideWith((ref) =>
                              ref.read(fetchPackageDetail(data[indexInPage].package).future)),
                        ],
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              $Text(
                                $.all,
                                '...'.bind(
                                    #data,
                                    (ref) => ref.watch(packageDetailProvider).when(
                                          data: (data) => data.name,
                                          error: (err, stack) => 'Error $err',
                                          loading: () => '...',
                                        )),
                              ),
                              const SizedBox(height: 4),
                              $Text(
                                $.all,
                                '...'.bind(
                                    #data,
                                    (ref) => ref.watch(packageDetailProvider).when(
                                          data: (data) => data.latest.version,
                                          error: (err, stack) => 'Error $err',
                                          loading: () => '...',
                                        )),
                              ),
                              Container(color: Colors.grey, height: 1)
                            ],
                          ),
                        ),
                      ));
            }),
          ),
        ),
      ),
    );
  }
}
