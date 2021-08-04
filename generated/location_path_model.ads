-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Absolute_Location_Path_model;
limited with Relative_Location_Path_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Location_Path_model is
   type Location_Path_nonterminal is abstract new Parseable with null record;
   type Location_Path_nonterminal1 is new Location_Path_nonterminal with record
      Relative_Location_Path_part : access Relative_Location_Path_model.Relative_Location_Path_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Location_Path_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Location_Path_nonterminal2 is new Location_Path_nonterminal with record
      Absolute_Location_Path_part : access Absolute_Location_Path_model.Absolute_Location_Path_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Location_Path_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Location_Path_model;
