XIA (**X**Path **I**n **A**da) is a native Ada implementation of the XPath 1.0 specification.  XIA is built using the DOM component of AdaCore's XML/Ada implementation and [AdaGOOP](https://adagoop.martincarlisle.com).

Submitting XPath queries is done via the `XPath_Query` function in package `XIA`. The function returns a Node_List, as defined in `DOM.Core`, whose contents can be accessed with the `Item` function in `DOM.Core.Nodes`.

## Example ##

The test program [test\_xpath](test/test\_xpath.adb) opens an XML file into the `DOM.Readers.Tree_Reader` (`XML_Source_Readera`) and then executes queries, producing results in a `DOM.Core.Node_List` (`Queried_Nodes`):
```
Queried_Nodes :=
  Xpath_Query (Dom.Readers.Get_Tree (XML_Source_Reader), Query);
```
For each query, it prints out the number of matching nodes and an image of the contents of each.

For this XML file, modelled loosely on a [Wikipedia example](https://en.wikipedia.org/wiki/XPath#Abbreviated_syntax),
```
<a name="a1">
  <b name="b1">
    <c name="c1"/>
    <d name="d1"/>
  </b>
  <b name="b2">
    <e name="e1"/>
  </b>
  <x name="x1">
    <b name="b3">
      <f name="f1"/>
    </b>
  </x>
</a>
```
the query
``` xpath
a//b/*[1]/@name
```
finds 3 nodes, the first child of each `<b/>` node in the document:
``` text
Number of nodes: 3
name="c1"
name="e1"
name="f1"
```
whereas the query
``` xpath
(a//b/*)[1]/@name
```
finds one node, the child node of the first `<b/>` node:
``` text
Number of nodes: 1
name="c1"
```

## Testing ##

A BASH script, `txia`, and an input file of XPath queries, `txia_tests.txt`, are provided in the `test/` directory to jam a bunch of queries through the test program (if more test queries are added, be sure to leave an empty line after all the queries - text after an empty line is ignored). `txia_tests.txt` also exhibits a wide variety of XPath queries, although the majority of these are nonsense queries as far as realistic usage is concerned, they're tailored to exercise and test various aspects of XIA's implementation.

To generate the test program, `cd` to the test directory and invoke `gprbuild` as follows:

    gprbuild -P test.gpr test_xpath

Version history up to 1.00 is [here](HISTORY.md).

Please report issues at Github.

- Github maintainer: Simon Wright <simon@pushface.org>
- Original author: Marc A. Criley <mc@mckae.com>
