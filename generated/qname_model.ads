-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with NCNAME_Or_ID_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package QName_model is
   type QName_nonterminal is abstract new Parseable with null record;
   type QName_nonterminal1 is new QName_nonterminal with record
      NCNAME_Or_ID_part : access NCNAME_Or_ID_model.NCNAME_Or_ID_nonterminal'Class;
   end record;
   procedure Acceptor(This : access QName_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type QName_nonterminal2 is new QName_nonterminal with record
      NCNAME_Or_ID_part1 : access NCNAME_Or_ID_model.NCNAME_Or_ID_nonterminal'Class;
      COLON_part : Parseable_Token_Ptr;
      NCNAME_Or_ID_part2 : access NCNAME_Or_ID_model.NCNAME_Or_ID_nonterminal'Class;
   end record;
   procedure Acceptor(This : access QName_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end QName_model;
