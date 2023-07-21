import 'package:flutter_manga_reader/app.dart';
import 'package:flutter_manga_reader/bootstrap.dart';
import 'package:flutter_manga_reader/env.dart';

void main() {
  BuildEnvironment.init(
    flavor: BuildFlavor.dev,
    title: 'Flutter Manga Reader [DEV]',
  );

  bootstrap(App.new);
}
