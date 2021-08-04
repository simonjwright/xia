-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body Function_Call_model is
   procedure Acceptor(This : access Function_Call_nonterminal;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Function_Call_nonterminal(This);
   end Acceptor;

end Function_Call_model;
