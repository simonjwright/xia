-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with R_Bracket_model;
limited with Predicate_Expr_model;
limited with L_Bracket_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Predicate_model is
   type Predicate_nonterminal is new Parseable with record
      L_Bracket_part : access L_Bracket_model.L_Bracket_nonterminal'Class;
      Predicate_Expr_part : access Predicate_Expr_model.Predicate_Expr_nonterminal'Class;
      R_Bracket_part : access R_Bracket_model.R_Bracket_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Predicate_nonterminal;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Predicate_model;
