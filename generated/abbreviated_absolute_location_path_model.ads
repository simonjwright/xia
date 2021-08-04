-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Relative_Location_Path_model;
limited with Double_Slash_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Abbreviated_Absolute_Location_Path_model is
   type Abbreviated_Absolute_Location_Path_nonterminal is new Parseable with record
      Double_Slash_part : access Double_Slash_model.Double_Slash_nonterminal'Class;
      Relative_Location_Path_part : access Relative_Location_Path_model.Relative_Location_Path_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Abbreviated_Absolute_Location_Path_nonterminal;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Abbreviated_Absolute_Location_Path_model;
