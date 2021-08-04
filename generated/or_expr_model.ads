-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with And_Expr_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Or_Expr_model is
   type Or_Expr_nonterminal is abstract new Parseable with null record;
   type Or_Expr_nonterminal1 is new Or_Expr_nonterminal with record
      And_Expr_part : access And_Expr_model.And_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Or_Expr_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Or_Expr_nonterminal2 is new Or_Expr_nonterminal with record
      Or_Expr_part : access Or_Expr_model.Or_Expr_nonterminal'Class;
      OR_part : Parseable_Token_Ptr;
      And_Expr_part : access And_Expr_model.And_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Or_Expr_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Or_Expr_model;
