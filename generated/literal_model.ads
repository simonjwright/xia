-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Literal_model is
   type Literal_nonterminal is abstract new Parseable with null record;
   type Literal_nonterminal1 is new Literal_nonterminal with record
      DQ_LITERAL_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Literal_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Literal_nonterminal2 is new Literal_nonterminal with record
      SQ_LITERAL_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Literal_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Literal_model;
