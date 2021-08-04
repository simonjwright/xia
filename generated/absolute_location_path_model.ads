-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Abbreviated_Absolute_Location_Path_model;
limited with Relative_Location_Path_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Absolute_Location_Path_model is
   type Absolute_Location_Path_nonterminal is abstract new Parseable with null record;
   type Absolute_Location_Path_nonterminal1 is new Absolute_Location_Path_nonterminal with record
      SLASH_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Absolute_Location_Path_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Absolute_Location_Path_nonterminal2 is new Absolute_Location_Path_nonterminal with record
      SLASH_part : Parseable_Token_Ptr;
      Relative_Location_Path_part : access Relative_Location_Path_model.Relative_Location_Path_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Absolute_Location_Path_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Absolute_Location_Path_nonterminal3 is new Absolute_Location_Path_nonterminal with record
      Abbreviated_Absolute_Location_Path_part : access Abbreviated_Absolute_Location_Path_model.Abbreviated_Absolute_Location_Path_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Absolute_Location_Path_nonterminal3;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Absolute_Location_Path_model;
