import 'package:html/parser.dart' show parse;
import 'package:manga_reader_core/src/extensions/dom_extensions.dart';
import 'package:xpath_selector_html_parser/xpath_selector_html_parser.dart';

HtmlXPath xpathSelector(String html) {
  final element = parse(html).documentElement;
  if (element == null) throw Exception('Invalid HTML: $html');
  return HtmlXPath.node(element);
}

List<String> xpath(String htmlString, String xpath) {
  final document = parse(htmlString);
  return document.xpath(xpath);
}
