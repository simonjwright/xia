-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Union_Expr_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Unary_Expr_model is
   type Unary_Expr_nonterminal is abstract new Parseable with null record;
   type Unary_Expr_nonterminal1 is new Unary_Expr_nonterminal with record
      Union_Expr_part : access Union_Expr_model.Union_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Unary_Expr_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Unary_Expr_nonterminal2 is new Unary_Expr_nonterminal with record
      MINUS_part : Parseable_Token_Ptr;
      Unary_Expr_part : access Unary_Expr_model.Unary_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Unary_Expr_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Unary_Expr_model;
