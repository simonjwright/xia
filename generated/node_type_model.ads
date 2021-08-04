-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Node_Type_model is
   type Node_Type_nonterminal is abstract new Parseable with null record;
   type Node_Type_nonterminal1 is new Node_Type_nonterminal with record
      COMMENT_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Node_Type_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Node_Type_nonterminal2 is new Node_Type_nonterminal with record
      TEXT_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Node_Type_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Node_Type_nonterminal3 is new Node_Type_nonterminal with record
      PROCESSING_INSTRUCTION_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Node_Type_nonterminal3;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Node_Type_nonterminal4 is new Node_Type_nonterminal with record
      NODE_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Node_Type_nonterminal4;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Node_Type_model;
