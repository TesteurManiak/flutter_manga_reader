# xpath_selector

[![Pub](https://img.shields.io/pub/v/xpath_selector.svg?style=flat-square)](https://pub.dartlang.org/packages/xpath_selector)

一款用于定位Html和Xml元素的XPath选择器

[English](https://github.com/simonkimi/xpath_selector/blob/master/README.md) | 简体中文

## 解析器

本库仅用于xpath选择, 您必须定义一个解析器, 下面是我预先构建的解析器:

- [xpath_selector_html_parser](https://pub.flutter-io.cn/packages/xpath_selector_html_parser)
  使用[html](https://pub.flutter-io.cn/packages/html)库

- [xpath_selector_xml_parser](https://pub.flutter-io.cn/packages/xpath_selector_xml_parser)
  使用[xml](https://pub.flutter-io.cn/packages/xml)库

如果您想使用其他解析器, 请参照这两个库定义您自己的解析器, 实现XPathNode<T>接口

## 扩展语法

在属性选择器中, 本解析器以css风格扩展了如下属性选择器

| 表达式              | css             | 描述                             |
|------------------|-----------------|--------------------------------|
| [@attr='value']  | [attr="value"]  | 选择带有 attr="value" 属性的所有元素。     |
| [@attr~='value'] | [attr~="value"] | 选择 attr 属性包含单词 "value" 的所有元素。  |
| [@attr^='value'] | [attr^="value"] | 选择其 attr 属性值以 "value" 开头的元素。   |
| [@attr$='value'] | [attr$="value"] | 选择其 attr 属性值以 "value" 结尾的元素。   |
| [@attr*='value'] | [attr*="value"] | 选择其 attr 属性值中包含 "value" 子串的元素。 |

## 破坏性改动

### 1.x => 2.0

1. 移除类`XPathElement`, 与`XPathNode`类合并
2. `XPathResult`中`elements`改为`nodes`, `elements`改为`element`

### 2.0 => 3.0

1. 移除内置的html与xml解析器, 并将其独立到[xpath_selector_html_parser](https://pub.flutter-io.cn/packages/xpath_selector_html_parser)
   和[xpath_selector_xml_parser](https://pub.flutter-io.cn/packages/xpath_selector_xml_parser)中, 具体用法请参照库Readme

## 提示

- 在解析html时, 一些不标准的的结构可能发生改变, 例如缺少`tbody`的`table`会被补上`tbody`, 这可能导致查询问题.