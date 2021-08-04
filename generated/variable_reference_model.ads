-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with QName_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Variable_Reference_model is
   type Variable_Reference_nonterminal is new Parseable with record
      DOLLAR_part : Parseable_Token_Ptr;
      QName_part : access QName_model.QName_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Variable_Reference_nonterminal;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Variable_Reference_model;
