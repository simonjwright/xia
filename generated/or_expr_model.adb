-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body Or_Expr_model is
   procedure Acceptor(This : access Or_Expr_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Or_Expr_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access Or_Expr_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Or_Expr_nonterminal2(This);
   end Acceptor;

end Or_Expr_model;
