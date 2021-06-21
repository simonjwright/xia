with Ada.Exceptions;
with McKae.XML.XPath.XIA;

package body XIA is

   function XPath_Query
     (N     : Dom.Core.Node;
      XPath : String)
     return Dom.Core.Node_List
   is
   begin
      return McKae.XML.XPath.XIA.XPath_Query (N, XPath);
   exception
      when MXP : McKae.XML.XPath.XIA.Malformed_XPath =>
         raise Malformed_XPath with Ada.Exceptions.Exception_Message (MXP);
      when INN : McKae.XML.XPath.XIA.Inappropriate_Node =>
         raise Malformed_XPath with Ada.Exceptions.Exception_Message (INN);
   end  XPath_Query;

end XIA;
