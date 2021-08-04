-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body L_Bracket_model is
   procedure Acceptor(This : access L_Bracket_nonterminal;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_L_Bracket_nonterminal(This);
   end Acceptor;

end L_Bracket_model;
