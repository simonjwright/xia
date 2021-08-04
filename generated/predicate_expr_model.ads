-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Expr_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Predicate_Expr_model is
   type Predicate_Expr_nonterminal is new Parseable with record
      Expr_part : access Expr_model.Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Predicate_Expr_nonterminal;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Predicate_Expr_model;
