-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Node_Test_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Abbreviated_Step_Base_model is
   type Abbreviated_Step_Base_nonterminal is abstract new Parseable with null record;
   type Abbreviated_Step_Base_nonterminal1 is new Abbreviated_Step_Base_nonterminal with record
      Node_Test_part : access Node_Test_model.Node_Test_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Abbreviated_Step_Base_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Abbreviated_Step_Base_nonterminal2 is new Abbreviated_Step_Base_nonterminal with record
      AT_SIGN_part : Parseable_Token_Ptr;
      Node_Test_part : access Node_Test_model.Node_Test_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Abbreviated_Step_Base_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Abbreviated_Step_Base_model;
