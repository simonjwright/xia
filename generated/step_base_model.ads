-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Abbreviated_Step_Base_model;
limited with Node_Test_model;
limited with Axis_Specifier_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Step_Base_model is
   type Step_Base_nonterminal is abstract new Parseable with null record;
   type Step_Base_nonterminal1 is new Step_Base_nonterminal with record
      Axis_Specifier_part : access Axis_Specifier_model.Axis_Specifier_nonterminal'Class;
      Node_Test_part : access Node_Test_model.Node_Test_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Step_Base_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Step_Base_nonterminal2 is new Step_Base_nonterminal with record
      Abbreviated_Step_Base_part : access Abbreviated_Step_Base_model.Abbreviated_Step_Base_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Step_Base_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Step_Base_model;
