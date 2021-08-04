-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body Double_Slash_model is
   procedure Acceptor(This : access Double_Slash_nonterminal;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Double_Slash_nonterminal(This);
   end Acceptor;

end Double_Slash_model;
