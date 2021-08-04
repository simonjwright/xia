-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Abbreviated_Step_model is
   type Abbreviated_Step_nonterminal is abstract new Parseable with null record;
   type Abbreviated_Step_nonterminal1 is new Abbreviated_Step_nonterminal with record
      DOT_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Abbreviated_Step_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Abbreviated_Step_nonterminal2 is new Abbreviated_Step_nonterminal with record
      DOUBLE_DOT_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Abbreviated_Step_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Abbreviated_Step_model;
