-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Step_model;
limited with Double_Slash_model;
limited with Relative_Location_Path_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Abbreviated_Relative_Location_Path_model is
   type Abbreviated_Relative_Location_Path_nonterminal is new Parseable with record
      Relative_Location_Path_part : access Relative_Location_Path_model.Relative_Location_Path_nonterminal'Class;
      Double_Slash_part : access Double_Slash_model.Double_Slash_nonterminal'Class;
      Step_part : access Step_model.Step_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Abbreviated_Relative_Location_Path_nonterminal;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Abbreviated_Relative_Location_Path_model;
