-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Double_Slash_model is
   type Double_Slash_nonterminal is new Parseable with record
      DOUBLE_SLASH_T_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Double_Slash_nonterminal;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Double_Slash_model;
