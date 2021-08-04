-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body Number_model is
   procedure Acceptor(This : access Number_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Number_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access Number_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Number_nonterminal2(This);
   end Acceptor;

end Number_model;
