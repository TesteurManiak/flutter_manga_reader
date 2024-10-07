# xpath_selector

[![Pub](https://img.shields.io/pub/v/xpath_selector.svg?style=flat-square)](https://pub.dartlang.org/packages/xpath_selector)

An XPath selector for locating Html and Xml elements

English | [简体中文](https://github.com/simonkimi/xpath_selector/blob/master/xpath_selector/README-zh_CN.MD)

## Parser

This library is for xpath selection only, you must define a parser, and here is my prebuilt parser:

- [xpath_selector_html_parser](https://pub.flutter-io.cn/packages/xpath_selector_html_parser)
  by [html](https://pub.flutter-io.cn/packages/html)

- [xpath_selector_xml_parser](https://pub.flutter-io.cn/packages/xpath_selector_xml_parser)
  by [xml](https://pub.flutter-io.cn/packages/xml)

If you want to use another parser, refer to these two libraries to define your own parser that implements
the `XPathNode<T>` interface

## Extended syntax

In the attribute selector, the parser extends the following attribute selector in CSS style

| Expression       | Css             | Description                                                                    |
|------------------|-----------------|--------------------------------------------------------------------------------|
| [@attr='value']  | [attr="value"]  | Selects all elements with attr="value"                                         |
| [@attr~='value'] | [attr~="value"] | Selects all elements attribute containing the word "value"                     |
| [@attr^='value'] | [attr^="value"] | Selects all elements whose attr attribute value begins with "value"            |
| [@attr$='value'] | [attr$="value"] | Selects all elements whose attr attribute value ends with "value"              |
| [@attr*='value'] | [attr*="value"] | Selects all elements whose attr attribute value contains the substring "value" |

## Breaking changes

### 1.x => 2.0

1. Remove class`XPathElement`, which merge to`XPathNode`
2. In `XPathResult`, `elements`=>`nodes`, `elements`=>`element`

### 2.0 => 3.0

1. Remove the built-in html and xlm parsers, and make it independent
   to [xpath_selector_html_parser](https://pub.flutter-io.cn/packages/xpath_selector_html_parser)
   and [xpath_selector_xml_parser](https://pub.flutter-io.cn/packages/xpath_selector_xml_parser)

