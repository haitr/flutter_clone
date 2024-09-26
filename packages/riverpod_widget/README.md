# riverpod_widget

[![pub package](https://img.shields.io/pub/v/riverpod_widget.svg?label=riverpod_widget&color=blue)](https://pub.dartlang.org/packages/riverpod_widget)

A library built on top of Flutter that allows all widgets to automatically rebuild when corresponding providers notified, making state management easier and more efficient.

## Motivations

As app developers, we often gather requirements from customers, which include various scenarios and designs. Our job is to bring these visions to life through code. The typical workflow involves:

1. **Analyzing Scenarios**: Understanding the requirements and how the application should behave.
2. **Sketching Components with Dummy Data**: Creating initial UI components using placeholder data to visualize the layout and functionality.
3. **Binding Data to Fit Scenarios**: Connecting our UI components to real data sources to make them dynamic.

### Simplifying Data Binding with Providers

With `riverpod_widget`, the data binding process becomes significantly easier and more time-saving by leveraging providers. By simply adding a `$` in front of your Flutter widgets, you can effortlessly bind them to providers, allowing for automatic updates whenever new data is emitted.

***Disclaimer**: this package is a part of my [flutter_clone](https://github.com/haitr/flutter_clone) project. Feel free to explore it if you're interested in creating exceptional packages on top of Flutter.*

Here's a quick example:

Assume that we had a Text widget in the sketch,
```dart
Text('A string');
```
Change it into `$Text` widget
```dart
// Assume that we had a provider called stringProvider as an instance of ProviderBase<String>;
$Text($.all, 'A string'.bind(#data, stringProvider));
```

More detail in [*Usage*](#usage) section.

## Features

- Automatic widget rebuilding based on provider's state
- Seamless integration with `riverpod`
- Simplified state management compared to traditional Flutter approaches
- Supports both stateful and stateless widgets
- Lightweight and easy to integrate into existing Flutter projects

## Installation

1. Add the package to your `pubspec.yaml` file:

```yaml
dependencies:
  riverpod_widget: ^0.0.1+1
```

If the latest version of this package is incompatible with your Flutter version, please refer to the *Version Mapping* section below. There, you'll find instructions on how to use a specific version that matches your Flutter environment.

You can specify a compatible version using the `ref` parameter in your `pubspec.yaml` file. For example:

```yaml
dependencies:
  riverpod_widget:
    git:
      url: https://github.com/haitr/flutter_clone.git
      path: packages/riverpod_widget
      ref: riverpod_widget/v0.0.1
```

### Version Compatibility

| pub | ref (verison) | ref (Flutter version) | Flutter version |
| -- | -- | -- | -- |
| 0.0.1+1 | riverpod_widget/v0.0.1 | riverpod_widget/flutter/v3.22 | 3.22.x |
| 0.0.2 | riverpod_widget/v0.0.2 | riverpod_widget/flutter/v3.24 | 3.24.x |

## Usage

The `riverpod_widget` package simplifies the process of binding Providers to Flutter Widgets. By calling the `bind` method to bind any argument to a `Provider`, you can easily make them reactive.

### Quick start

In order to make a Widget reactive:

1. Add a `$` prefix to the Widget name.

2. Add the react-type parameter as the first argument.

| react-type | description |
| -- | -- |
| `$.all` | react on every emitted event |
| `$.none` | skip all events |

Currently, only `$.all` and `$.none` is supported; additional types will be added later.

3. Bind arguments with corresponding `Provider`:
To bind any argument to a Provider, utilize the bind method, where the first parameter is a Symbol that represents the name of the corresponding parameter.
For example:

```dart
Text('a string'.bind(#data, (ref) => ref.watch(stringProvider)));
```

```dart
Container(color: Colors.blue.bind(#color, (ref) => ref.watch(stateProvider.select((state) => state.color))));
```

*Note*: `bind` method only run while declaring widget, not in `build` phase.

Assuming that there was a Text or a Column in your sketch:

```dart
Text(
  'Hello, World!',
  style: TextStyle(fontSize: 20),
)
```

```dart
Column(
  children: [/* ... */],
  mainAxisAlignment: MainAxisAlignment.center,
)
```

As reactive:

```dart
$Text(
  $.all,
  'Hello, World!'.bind(#data, (ref) => ref.watch(greetingProvider)), 
  style: TextStyle(fontSize: 20).bind(
    #style,
    (ref) => ref.watch(stateProvider.select((state) => state.style))),
)
```
In the Text widget, there is a positional String parameter called `data`, so we need to use #data for the state getter.

```dart
$Column(
  $.all,
  mainAxisAlignment: MainAxisAlignment.center.bind(
    #mainAxisAlignment,
    (ref) => ref.watch(stateProvider.select((state) => state.alignment))),
  ),
  children: [/* ... */],
)
```

### Custom Widget

To make a custom widget reactive, enclose it within a Wrapper and ensure proper argument mapping.
Be sure to place an instance of $ as the first parameter of the constructor.

For example:

```dart
class MyWidget extends StatelessWidget {
  final String? field1;
  final int field2;
  MyWidget({
    super.key,
    this.field1,
    required this.field2,
  });
  // ...
}
```

```dart
class $MyWidget extends MyWidget {
  const $MyWidget(
    $ $config, {
    super.key,
    super.field1,
    required super.field2,
  });

  @override
  Widget build(BuildContext context) {
    return Wrapper(
        Argument({
          #field1: field1,
          #field2: field2,
        }),
        builder: (args) => MyWidget(
              field1: args(#field1),
              field2: args(#field2),
            ));
  }
}
```

More detail in [custom widget](./example/cart/lib/widget.dart).

## Example

Find more examples in the [examples](./example) directory.

## License

This project is licensed under the MIT License.

```
This README provides an overview of your reactive widgets framework, including its key features, installation instructions, usage examples, and contribution guidelines. Feel free to customize it further to suit your specific project requirements.
```
