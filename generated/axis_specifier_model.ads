-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Axis_Name_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Axis_Specifier_model is
   type Axis_Specifier_nonterminal is new Parseable with record
      Axis_Name_part : access Axis_Name_model.Axis_Name_nonterminal'Class;
      DOUBLE_COLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Axis_Specifier_nonterminal;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Axis_Specifier_model;
