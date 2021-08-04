-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body Variable_Reference_model is
   procedure Acceptor(This : access Variable_Reference_nonterminal;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Variable_Reference_nonterminal(This);
   end Acceptor;

end Variable_Reference_model;
