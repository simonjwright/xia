-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body Primary_Expr_model is
   procedure Acceptor(This : access Primary_Expr_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Primary_Expr_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access Primary_Expr_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Primary_Expr_nonterminal2(This);
   end Acceptor;

   procedure Acceptor(This : access Primary_Expr_nonterminal3;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Primary_Expr_nonterminal3(This);
   end Acceptor;

   procedure Acceptor(This : access Primary_Expr_nonterminal4;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Primary_Expr_nonterminal4(This);
   end Acceptor;

   procedure Acceptor(This : access Primary_Expr_nonterminal5;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Primary_Expr_nonterminal5(This);
   end Acceptor;

end Primary_Expr_model;
