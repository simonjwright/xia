-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Abbreviated_Step_model;
limited with Predicates_model;
limited with Step_Base_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Step_model is
   type Step_nonterminal is abstract new Parseable with null record;
   type Step_nonterminal1 is new Step_nonterminal with record
      Step_Base_part : access Step_Base_model.Step_Base_nonterminal'Class;
      Predicates_part : access Predicates_model.Predicates_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Step_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Step_nonterminal2 is new Step_nonterminal with record
      Abbreviated_Step_part : access Abbreviated_Step_model.Abbreviated_Step_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Step_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Step_model;
