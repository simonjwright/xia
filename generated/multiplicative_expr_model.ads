-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Unary_Expr_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Multiplicative_Expr_model is
   type Multiplicative_Expr_nonterminal is abstract new Parseable with null record;
   type Multiplicative_Expr_nonterminal1 is new Multiplicative_Expr_nonterminal with record
      Unary_Expr_part : access Unary_Expr_model.Unary_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Multiplicative_Expr_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Multiplicative_Expr_nonterminal2 is new Multiplicative_Expr_nonterminal with record
      Multiplicative_Expr_part : access Multiplicative_Expr_model.Multiplicative_Expr_nonterminal'Class;
      STAR_part : Parseable_Token_Ptr;
      Unary_Expr_part : access Unary_Expr_model.Unary_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Multiplicative_Expr_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Multiplicative_Expr_nonterminal3 is new Multiplicative_Expr_nonterminal with record
      Multiplicative_Expr_part : access Multiplicative_Expr_model.Multiplicative_Expr_nonterminal'Class;
      DIV_part : Parseable_Token_Ptr;
      Unary_Expr_part : access Unary_Expr_model.Unary_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Multiplicative_Expr_nonterminal3;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Multiplicative_Expr_nonterminal4 is new Multiplicative_Expr_nonterminal with record
      Multiplicative_Expr_part : access Multiplicative_Expr_model.Multiplicative_Expr_nonterminal'Class;
      MOD_part : Parseable_Token_Ptr;
      Unary_Expr_part : access Unary_Expr_model.Unary_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Multiplicative_Expr_nonterminal4;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Multiplicative_Expr_model;
