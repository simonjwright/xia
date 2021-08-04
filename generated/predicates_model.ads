-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Predicate_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Predicates_model is
   type Predicates_nonterminal is abstract new Parseable with null record;
   type Predicates_nonterminal1 is new Predicates_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access Predicates_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Predicates_nonterminal2 is new Predicates_nonterminal with record
      Predicates_part : access Predicates_model.Predicates_nonterminal'Class;
      Predicate_part : access Predicate_model.Predicate_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Predicates_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Predicates_model;
