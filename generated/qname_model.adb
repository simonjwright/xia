-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body QName_model is
   procedure Acceptor(This : access QName_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_QName_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access QName_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_QName_nonterminal2(This);
   end Acceptor;

end QName_model;
