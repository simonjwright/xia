-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body Node_Test_model is
   procedure Acceptor(This : access Node_Test_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Node_Test_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access Node_Test_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Node_Test_nonterminal2(This);
   end Acceptor;

   procedure Acceptor(This : access Node_Test_nonterminal3;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Node_Test_nonterminal3(This);
   end Acceptor;

end Node_Test_model;
