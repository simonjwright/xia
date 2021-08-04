-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body R_Bracket_model is
   procedure Acceptor(This : access R_Bracket_nonterminal;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_R_Bracket_nonterminal(This);
   end Acceptor;

end R_Bracket_model;
