-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Multiplicative_Expr_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Additive_Expr_model is
   type Additive_Expr_nonterminal is abstract new Parseable with null record;
   type Additive_Expr_nonterminal1 is new Additive_Expr_nonterminal with record
      Multiplicative_Expr_part : access Multiplicative_Expr_model.Multiplicative_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Additive_Expr_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Additive_Expr_nonterminal2 is new Additive_Expr_nonterminal with record
      Additive_Expr_part : access Additive_Expr_model.Additive_Expr_nonterminal'Class;
      PLUS_part : Parseable_Token_Ptr;
      Multiplicative_Expr_part : access Multiplicative_Expr_model.Multiplicative_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Additive_Expr_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Additive_Expr_nonterminal3 is new Additive_Expr_nonterminal with record
      Additive_Expr_part : access Additive_Expr_model.Additive_Expr_nonterminal'Class;
      MINUS_part : Parseable_Token_Ptr;
      Multiplicative_Expr_part : access Multiplicative_Expr_model.Multiplicative_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Additive_Expr_nonterminal3;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Additive_Expr_model;
