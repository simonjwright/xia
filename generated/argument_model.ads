-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Expr_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Argument_model is
   type Argument_nonterminal is new Parseable with record
      Expr_part : access Expr_model.Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Argument_nonterminal;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Argument_model;
