# RxFlutterify

[![pub package](https://img.shields.io/pub/v/rxflutterify.svg?label=rxflutter&color=blue)](https://pub.dartlang.org/packages/rxflutterify)

A library built on top of Flutter that allows all widgets to automatically rebuild when their input streams emit events, making state management easier and more efficient.

## Motivations

As app developers, we often gather requirements from customers, which include various scenarios and designs. Our job is to bring these visions to life through code. The typical workflow involves:

1. **Analyzing Scenarios**: Understanding the requirements and how the application should behave.
2. **Sketching Components with Dummy Data**: Creating initial UI components using placeholder data to visualize the layout and functionality.
3. **Binding Data to Fit Scenarios**: Connecting our UI components to real data sources to make them dynamic.

### Simplifying Data Binding with Streams

With `rxflutterify`, the data binding process becomes significantly easier and more time-saving by leveraging streams. By simply adding a `$` in front of your Flutter widgets, you can effortlessly bind them to streams, allowing for automatic updates whenever new data is emitted.

***Disclaimer**: this package is a part of my [flutter_clone](https://github.com/haitr/flutter_clone) project. Feel free to explore it if you're interested in creating exceptional packages on top of Flutter.*

Here's a quick example:

Assume that we had a Text widget in the sketch,
```dart
Text('A string');
```
Change it into `$Text` widget
```dart
// Assume that we had a variable called stringStream as type Stream<String>;
$Text('A string', $data: stringStream);
```

More detail in [*Usage*](#usage) section.

## Features

- Automatic widget rebuilding based on input stream events
- Seamless integration with RxDart for reactive programming
- Simplified state management compared to traditional Flutter approaches
- Supports both stateful and stateless widgets
- Lightweight and easy to integrate into existing Flutter projects

## Installation

1. Add the package to your `pubspec.yaml` file:

```yaml
dependencies:
  rxflutterify: ^0.0.1
```

If the latest version of this package is incompatible with your Flutter version, please refer to the *Version Mapping* section below. There, you'll find instructions on how to use a specific version that matches your Flutter environment.

You can specify a compatible version using the `ref` parameter in your `pubspec.yaml` file. For example:

```yaml
dependencies:
  rxflutterify:
    git:
      url: https://github.com/haitr/flutter_clone.git
      path: packages/rxflutterify
      ref: rxflutterify/v0.0.1
```

### Version Compatibility

| pub | ref (verison) | ref (Flutter version) | Flutter version |
| -- | -- | -- | -- |
| 0.0.1 | rxflutterify/v0.0.1 | rxflutterify/flutter/v3.22 | 3.22.x |
| 0.0.2 | rxflutterify/v0.0.2 | rxflutterify/flutter/v3.24 | 3.24.x |

## Usage

Find more examples in the [examples](./example) directory.

The `rxflutterify` package simplifies the process of binding Streams to Flutter Widgets. By adding a simple `$` prefix to your existing Widgets, you can easily make them reactive.

### Quick start

In order to make a Widget reactive:

1. Add a `$` prefix to the Widget name.
2. For positional parameters that you want to make reactive, use the parameter name prefixed with `$`.
3. For named parameters, simply add a `$` prefix to the parameter name.

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
  'Hello, World!', 
  style: TextStyle(fontSize: 20),
  $data: greetingStream,
  $style: textStyleStream,
)
```
In Text, positional String parameter named `data` so we have to use `$data` for input stream.

```dart
$Column(
  mainAxisAlignment: MainAxisAlignment.center,
  $mainAxisAlignment: alignmentStream
  children: [/* ... */],
)
```

*Note*: in order to make a stream easier:

```dart
Stream<String> stringStream = 'init text'.react;
```

*Dev Note*: Despite using [rxdart](https://github.com/ReactiveX/rxdart), it is significantly easier to manage `Stream` operations with various `Stream` operators, you also craft your own Dart Stream.

## Example

Find more examples in the [examples](./example) directory.

## License

This project is licensed under the MIT License.

```
This README provides an overview of your reactive widgets framework, including its key features, installation instructions, usage examples, and contribution guidelines. Feel free to customize it further to suit your specific project requirements.
```
