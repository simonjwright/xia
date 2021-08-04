-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Function_Call_model;
limited with Number_model;
limited with LITERAL_model;
limited with Expr_model;
limited with Variable_Reference_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Primary_Expr_model is
   type Primary_Expr_nonterminal is abstract new Parseable with null record;
   type Primary_Expr_nonterminal1 is new Primary_Expr_nonterminal with record
      Variable_Reference_part : access Variable_Reference_model.Variable_Reference_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Primary_Expr_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Primary_Expr_nonterminal2 is new Primary_Expr_nonterminal with record
      L_PAREN_part : Parseable_Token_Ptr;
      Expr_part : access Expr_model.Expr_nonterminal'Class;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Primary_Expr_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Primary_Expr_nonterminal3 is new Primary_Expr_nonterminal with record
      LITERAL_part : access LITERAL_model.LITERAL_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Primary_Expr_nonterminal3;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Primary_Expr_nonterminal4 is new Primary_Expr_nonterminal with record
      Number_part : access Number_model.Number_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Primary_Expr_nonterminal4;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Primary_Expr_nonterminal5 is new Primary_Expr_nonterminal with record
      Function_Call_part : access Function_Call_model.Function_Call_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Primary_Expr_nonterminal5;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Primary_Expr_model;
