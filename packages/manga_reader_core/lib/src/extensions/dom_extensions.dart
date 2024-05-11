import 'package:html/dom.dart' as dom;
import 'package:xpath_selector_html_parser/xpath_selector_html_parser.dart';

extension DocumentExtension on dom.Document {
  List<dom.Element>? select(String selector) {
    try {
      return querySelectorAll(selector);
    } catch (e) {
      return null;
    }
  }

  dom.Element? selectFirst(String selector) {
    try {
      return querySelector(selector);
    } catch (e) {
      return null;
    }
  }

  String? xpathFirst(String xpath) {
    if (documentElement case final dom?) {
      final htmlXPath = HtmlXPath.node(dom);
      final query = htmlXPath.query(xpath);
      return query.attr;
    }
    return null;
  }

  List<String> xpath(String xpath) {
    if (documentElement case final dom?) {
      final htmlXPath = HtmlXPath.node(dom);
      final query = htmlXPath.query(xpath);
      if (query.nodes.length > 1) {
        return query.attrs.map((e) => e?.trim()).whereType<String>().toList();
      }
    }
    return [];
  }
}

extension ElementExtension on dom.Element {
  String? xpathFirst(String xpath) {
    final htmlXPath = HtmlXPath.html(outerHtml);
    final query = htmlXPath.query(xpath);
    return query.attr;
  }

  List<String> xpath(String xpath) {
    final htmlXPath = HtmlXPath.html(outerHtml);
    final query = htmlXPath.query(xpath);
    if (query.nodes.length > 1) {
      return query.attrs.map((e) => e?.trim()).whereType<String>().toList();
    }
    return [];
  }
}
