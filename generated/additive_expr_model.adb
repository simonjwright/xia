-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body Additive_Expr_model is
   procedure Acceptor(This : access Additive_Expr_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Additive_Expr_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access Additive_Expr_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Additive_Expr_nonterminal2(This);
   end Acceptor;

   procedure Acceptor(This : access Additive_Expr_nonterminal3;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Additive_Expr_nonterminal3(This);
   end Acceptor;

end Additive_Expr_model;
