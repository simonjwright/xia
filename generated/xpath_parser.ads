
with XPath_Model;
use XPath_Model;
package XPath_Parser is
   procedure Run(Filename : in String);
   function Get_Parse_Tree return Parseable_Ptr;
   Syntax_Error : exception;
end XPath_Parser;
