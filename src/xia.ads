with Dom.Core;

package XIA is

   function XPath_Query
     (N     : Dom.Core.Node;
      XPath : String)
     return Dom.Core.Node_List;
   --  Apply the XPath query 'XPath', starting with the node 'N', in
   --  the case of a relative XPath query, or the document that
   --  contains the node N, otherwise.
   --
   --  Returns a list of nodes, which may be empty, that meet the
   --  XPath specification.
   --
   --  If the query does not follow XPath syntax, the Malformed_XPath
   --  exception is raised.

   Malformed_XPath : exception;
   -- Raised when the XPath query does not conform to XPath syntax.

   Inappropriate_Node : exception;
   -- Raised when the starting node does not correspond to the type of query.

end XIA;
