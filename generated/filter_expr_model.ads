-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Predicate_model;
limited with Primary_Expr_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Filter_Expr_model is
   type Filter_Expr_nonterminal is abstract new Parseable with null record;
   type Filter_Expr_nonterminal1 is new Filter_Expr_nonterminal with record
      Primary_Expr_part : access Primary_Expr_model.Primary_Expr_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Filter_Expr_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Filter_Expr_nonterminal2 is new Filter_Expr_nonterminal with record
      Filter_Expr_part : access Filter_Expr_model.Filter_Expr_nonterminal'Class;
      Predicate_part : access Predicate_model.Predicate_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Filter_Expr_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Filter_Expr_model;
