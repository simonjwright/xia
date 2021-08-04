-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body Predicate_Expr_model is
   procedure Acceptor(This : access Predicate_Expr_nonterminal;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Predicate_Expr_nonterminal(This);
   end Acceptor;

end Predicate_Expr_model;
