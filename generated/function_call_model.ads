-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Arguments_model;
limited with Function_Name_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Function_Call_model is
   type Function_Call_nonterminal is new Parseable with record
      Function_Name_part : access Function_Name_model.Function_Name_nonterminal'Class;
      L_PAREN_part : Parseable_Token_Ptr;
      Arguments_part : access Arguments_model.Arguments_nonterminal'Class;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Function_Call_nonterminal;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Function_Call_model;
