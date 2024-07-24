# Flutter Clone

A Dart console application to analyze Flutter files and cache analyzed results for faster future access.

## Features

- **Analyze Flutter Files:** Parse and analyze Flutter project files to extract useful information.
- **Caching:** Store analysis results to speed up subsequent analyses.
- **Command Line Interface:** Simple CLI for easy use and integration.

## Installation

### Prerequisites

- Dart SDK (tested on 3.4.3)
- Flutter (tested on 3.22.0)

### Usage

#### Clone

##### Using release package

The easiest method is using the pre-packed in [release page](https://github.com/haitr/flutter_clone/releases). Simply download the (`latest.tar.gz`)[https://github.com/haitr/flutter_clone/releases/download/clone_latest/latest.tar.gz] and unpack in your repo.

```bash
curl -L -o latest.tar.gz https://github.com/haitr/flutter_clone/releases/download/clone_latest/latest.tar.gz
tar -xvzf latest.tar.gz
```

##### Using git

Clone only necessart parts of this repository via sparse checkout feature.

The desired directory should be under Git control. The target can be your own flutter project or created via `flutter create`.

```bash
git remote add origin https://github.com/haitr/flutter_clone.git
git config core.sparseCheckout true
echo "clone" >> .git/info/sparse-checkout
git pull origin main
```

Then use `pub get` to fetch required packages.

```bash
cd clone
dart pub get
```

#### Copy `flutter` and `sky_engine`

Simply run the following command line with default arguments. See `--help` for more information.

```bash
cd clone
dart run prepare
```

#### Implement

Make your own implementation `generateWrapper` (and `afterGenerated` is optional) for generating from Flutter analyzed results. See the example [rxflutter wrapper implementation](../packages/rxflutter/clone/bin/generate.wrapper.dart) for more details.

Note: 
- If `flutter` cannot be found, try to remove `.dart_tool` directory and `dart pub run` again to re-address the `flutter` package.

#### Generate
```bash
dart run clone -o ../lib
```
See `--help` for more information.

#### Clean-up

After generated, modify `.gitignore` in order to exclude clone codes (if needed). See the example [.gitignore](../packages/rxflutter/.gitignore) for more details.