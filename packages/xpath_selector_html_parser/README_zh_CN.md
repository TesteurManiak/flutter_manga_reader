# xpath_selector_html_parser

## 使用方法

有三种方法使用改库进行查询

1. 对Html的`node`节点直接使用`queryXPath`方法
2. 使用`HtmlXPath.node([HtmlNode])`创建查询, 然后使用`query`方法进行查询
3. 使用`HtmlXPath.html([HtmlString])`对html进行解析, 然后使用`query`方法进行查询

## Example

```dart
import 'package:html/parser.dart';
import 'package:xpath_selector_html_parser/xpath_selector_html_parser.dart';

final String htmlString = '''
<html lang="en">
<body>
<div><a href='https://github.com/simonkimi'>author</a></div>
<div class="head">div head</div>
<div class="container">
    <table>
        <tbody>
          <tr>
              <td id="td1" class="first1">1</td>
              <td id="td2" class="first1">2</td>
              <td id="td3" class="first2">3</td>
              <td id="td4" class="first2 form">4</td>

              <td id="td5" class="second1">one</td>
              <td id="td6" class="second1">two</td>
              <td id="td7" class="second2">three</td>
              <td id="td8" class="second2">four</td>
          </tr>
        </tbody>
    </table>
</div>
<div class="end">end</div>
</body>
</html>
''';

void main() {
  final html1 = parse(htmlString).documentElement!;
  final html2 = HtmlXPath.node(html1);
  final html3 = HtmlXPath.html(htmlString);

  print(html1.queryXPath('//div/a'));
  print(html2
      .query('//div/a/@href')
      .attrs);
  print(html3.query('//tr/td[@class^="fir" and not(text()="4")]'));
}

```

## 提示

- 由于Html库在解析的时候会重新格式化, 导致dom的结构产生变化, 例如缺少`tbody`的`table`会被补上. 这可能导致查询问题.