-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body Predicates_model is
   procedure Acceptor(This : access Predicates_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Predicates_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access Predicates_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Predicates_nonterminal2(This);
   end Acceptor;

end Predicates_model;
