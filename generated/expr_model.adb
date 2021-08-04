-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body Expr_model is
   procedure Acceptor(This : access Expr_nonterminal;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Expr_nonterminal(This);
   end Acceptor;

end Expr_model;
