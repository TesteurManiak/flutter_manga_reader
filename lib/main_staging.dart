import 'package:flutter_manga_reader/app.dart';
import 'package:flutter_manga_reader/bootstrap.dart';
import 'package:flutter_manga_reader/env.dart';

void main() {
  BuildEnvironment.init(
    flavor: BuildFlavor.staging,
    title: 'Flutter Manga Reader [STG]',
  );

  bootstrap(App.new);
}
