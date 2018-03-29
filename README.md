XIA (XPath In Ada) is a native Ada implementation of the XPath 1.0
specification.  XIA is built atop the DOM component of AdaCore's
XML/Ada implementation.

Submitting XPath queries is done via the `XPath_Query` function in
package `McKae.XML.XPath.XIA`. The function returns a Node_List, as
defined in `DOM.Core`, whose contents can be accessed with the `Item`
function in `DOM.Core.Nodes`;

A BASH script, `txia`, and an input file of XPath queries,
`txia_tests.txt`, are provided in the `test/` directory to jam a bunch
of queries through the test program (if more test queries are added,
be sure to leave an empty line after all the queries - text after an
empty line is ignored). `txia_tests.txt` also exhibits a wide variety
of XPath queries, although the majority of these are nonsense queries
as far as realistic usage is concerned, they're tailored to exercise
and test various aspects of XIA's implementation.

To generate the test program, cd to the test directory and invoke
gprbuild as follows:

    gprbuild -p -P test.gpr test_xpath

AdaBrowse generated source code documentation resides in the doc
subdirectory.

Version history up to 1.00 is [here](HISTORY.md).

Please let me know if you have any questions or find bugs with the
current functionality.

- Github maintainer: Simon Wright <simon@pushface.org>
- Original author: Marc A. Criley <mc@mckae.com>
