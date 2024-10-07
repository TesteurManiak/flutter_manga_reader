import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:xpath_selector/xpath_selector.dart';
import 'package:xpath_selector_html_parser/xpath_selector_html_parser.dart';

extension HtmlElementHelper on Element {
  /// Html XPath query
  XPathResult<Node> queryXPath(String xpath) =>
      HtmlXPath.node(this).query(xpath);
}

class HtmlXPath extends XPath<Node> {
  HtmlXPath(XPathNode<Node> root) : super(root);

  /// Create query by html string
  static HtmlXPath html(String html) {
    final dom = parse(html).documentElement;
    if (dom == null) throw UnsupportedError('No html');
    return HtmlXPath(HtmlNodeTree(dom));
  }

  /// Create query by html node
  static HtmlXPath node(Node node) => HtmlXPath(HtmlNodeTree(node));
}
