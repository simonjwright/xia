-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body Axis_Specifier_model is
   procedure Acceptor(This : access Axis_Specifier_nonterminal;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Axis_Specifier_nonterminal(This);
   end Acceptor;

end Axis_Specifier_model;
