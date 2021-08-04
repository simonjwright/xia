-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Or_Expr_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Expr_model is
   type Expr_nonterminal is new Parseable with record
      Or_Expr_part : access Or_Expr_model.Or_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Expr_nonterminal;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Expr_model;
