-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Equality_Expr_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package And_Expr_model is
   type And_Expr_nonterminal is abstract new Parseable with null record;
   type And_Expr_nonterminal1 is new And_Expr_nonterminal with record
      Equality_Expr_part : access Equality_Expr_model.Equality_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access And_Expr_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type And_Expr_nonterminal2 is new And_Expr_nonterminal with record
      And_Expr_part : access And_Expr_model.And_Expr_nonterminal'Class;
      AND_part : Parseable_Token_Ptr;
      Equality_Expr_part : access Equality_Expr_model.Equality_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access And_Expr_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end And_Expr_model;
