import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

extension ChapterExtensions on Chapter {
  Future<String> getLocalPath() async {
    final documentsDir = await getApplicationDocumentsDirectory();
    return path.join(
      documentsDir.path,
      'MangaReader',
      mangaId.toString(),
      id.toString(),
    );
  }
}
