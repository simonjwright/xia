-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Additive_Expr_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Relational_Expr_model is
   type Relational_Expr_nonterminal is abstract new Parseable with null record;
   type Relational_Expr_nonterminal1 is new Relational_Expr_nonterminal with record
      Additive_Expr_part : access Additive_Expr_model.Additive_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Relational_Expr_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Relational_Expr_nonterminal2 is new Relational_Expr_nonterminal with record
      Relational_Expr_part : access Relational_Expr_model.Relational_Expr_nonterminal'Class;
      LT_part : Parseable_Token_Ptr;
      Additive_Expr_part : access Additive_Expr_model.Additive_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Relational_Expr_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Relational_Expr_nonterminal3 is new Relational_Expr_nonterminal with record
      Relational_Expr_part : access Relational_Expr_model.Relational_Expr_nonterminal'Class;
      GT_part : Parseable_Token_Ptr;
      Additive_Expr_part : access Additive_Expr_model.Additive_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Relational_Expr_nonterminal3;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Relational_Expr_nonterminal4 is new Relational_Expr_nonterminal with record
      Relational_Expr_part : access Relational_Expr_model.Relational_Expr_nonterminal'Class;
      LE_part : Parseable_Token_Ptr;
      Additive_Expr_part : access Additive_Expr_model.Additive_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Relational_Expr_nonterminal4;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Relational_Expr_nonterminal5 is new Relational_Expr_nonterminal with record
      Relational_Expr_part : access Relational_Expr_model.Relational_Expr_nonterminal'Class;
      GE_part : Parseable_Token_Ptr;
      Additive_Expr_part : access Additive_Expr_model.Additive_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Relational_Expr_nonterminal5;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Relational_Expr_model;
