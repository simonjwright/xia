-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with DOUBLE_SLASH_model;
limited with Relative_Location_Path_model;
limited with Filter_Expr_model;
limited with Location_Path_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Path_Expr_model is
   type Path_Expr_nonterminal is abstract new Parseable with null record;
   type Path_Expr_nonterminal1 is new Path_Expr_nonterminal with record
      Location_Path_part : access Location_Path_model.Location_Path_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Path_Expr_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Path_Expr_nonterminal2 is new Path_Expr_nonterminal with record
      Filter_Expr_part : access Filter_Expr_model.Filter_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Path_Expr_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Path_Expr_nonterminal3 is new Path_Expr_nonterminal with record
      Filter_Expr_part : access Filter_Expr_model.Filter_Expr_nonterminal'Class;
      SLASH_part : Parseable_Token_Ptr;
      Relative_Location_Path_part : access Relative_Location_Path_model.Relative_Location_Path_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Path_Expr_nonterminal3;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Path_Expr_nonterminal4 is new Path_Expr_nonterminal with record
      Filter_Expr_part : access Filter_Expr_model.Filter_Expr_nonterminal'Class;
      DOUBLE_SLASH_part : access DOUBLE_SLASH_model.DOUBLE_SLASH_nonterminal'Class;
      Relative_Location_Path_part : access Relative_Location_Path_model.Relative_Location_Path_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Path_Expr_nonterminal4;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Path_Expr_model;
