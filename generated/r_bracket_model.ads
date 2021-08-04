-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package R_Bracket_model is
   type R_Bracket_nonterminal is new Parseable with record
      R_BRACKET_T_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access R_Bracket_nonterminal;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end R_Bracket_model;
