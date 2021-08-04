-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Number_model is
   type Number_nonterminal is abstract new Parseable with null record;
   type Number_nonterminal1 is new Number_nonterminal with record
      INTEGER_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Number_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Number_nonterminal2 is new Number_nonterminal with record
      DECIMAL_LITERAL_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Number_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Number_model;
