-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body Argument_model is
   procedure Acceptor(This : access Argument_nonterminal;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Argument_nonterminal(This);
   end Acceptor;

end Argument_model;
