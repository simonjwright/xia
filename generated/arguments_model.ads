-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Argument_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Arguments_model is
   type Arguments_nonterminal is abstract new Parseable with null record;
   type Arguments_nonterminal1 is new Arguments_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access Arguments_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Arguments_nonterminal2 is new Arguments_nonterminal with record
      Argument_part : access Argument_model.Argument_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Arguments_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Arguments_nonterminal3 is new Arguments_nonterminal with record
      Arguments_part : access Arguments_model.Arguments_nonterminal'Class;
      COMMA_part : Parseable_Token_Ptr;
      Argument_part : access Argument_model.Argument_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Arguments_nonterminal3;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Arguments_model;
