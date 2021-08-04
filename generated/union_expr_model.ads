-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Path_Expr_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Union_Expr_model is
   type Union_Expr_nonterminal is abstract new Parseable with null record;
   type Union_Expr_nonterminal1 is new Union_Expr_nonterminal with record
      Path_Expr_part : access Path_Expr_model.Path_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Union_Expr_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Union_Expr_nonterminal2 is new Union_Expr_nonterminal with record
      Union_Expr_part : access Union_Expr_model.Union_Expr_nonterminal'Class;
      V_BAR_part : Parseable_Token_Ptr;
      Path_Expr_part : access Path_Expr_model.Path_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Union_Expr_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Union_Expr_model;
