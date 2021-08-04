-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Relational_Expr_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Equality_Expr_model is
   type Equality_Expr_nonterminal is abstract new Parseable with null record;
   type Equality_Expr_nonterminal1 is new Equality_Expr_nonterminal with record
      Relational_Expr_part : access Relational_Expr_model.Relational_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Equality_Expr_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Equality_Expr_nonterminal2 is new Equality_Expr_nonterminal with record
      Equality_Expr_part : access Equality_Expr_model.Equality_Expr_nonterminal'Class;
      EQ_part : Parseable_Token_Ptr;
      Relational_Expr_part : access Relational_Expr_model.Relational_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Equality_Expr_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Equality_Expr_nonterminal3 is new Equality_Expr_nonterminal with record
      Equality_Expr_part : access Equality_Expr_model.Equality_Expr_nonterminal'Class;
      NE_part : Parseable_Token_Ptr;
      Relational_Expr_part : access Relational_Expr_model.Relational_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Equality_Expr_nonterminal3;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Equality_Expr_model;
