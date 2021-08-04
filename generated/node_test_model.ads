-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with LITERAL_model;
limited with Node_Type_model;
limited with Name_Test_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Node_Test_model is
   type Node_Test_nonterminal is abstract new Parseable with null record;
   type Node_Test_nonterminal1 is new Node_Test_nonterminal with record
      Name_Test_part : access Name_Test_model.Name_Test_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Node_Test_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Node_Test_nonterminal2 is new Node_Test_nonterminal with record
      Node_Type_part : access Node_Type_model.Node_Type_nonterminal'Class;
      L_PAREN_part : Parseable_Token_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Node_Test_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Node_Test_nonterminal3 is new Node_Test_nonterminal with record
      PROCESSING_INSTRUCTION_part : Parseable_Token_Ptr;
      L_PAREN_part : Parseable_Token_Ptr;
      LITERAL_part : access LITERAL_model.LITERAL_nonterminal'Class;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Node_Test_nonterminal3;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Node_Test_model;
