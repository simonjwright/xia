-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Abbreviated_Relative_Location_Path_model;
limited with Step_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Relative_Location_Path_model is
   type Relative_Location_Path_nonterminal is abstract new Parseable with null record;
   type Relative_Location_Path_nonterminal1 is new Relative_Location_Path_nonterminal with record
      Step_part : access Step_model.Step_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Relative_Location_Path_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Relative_Location_Path_nonterminal2 is new Relative_Location_Path_nonterminal with record
      Relative_Location_Path_part : access Relative_Location_Path_model.Relative_Location_Path_nonterminal'Class;
      SLASH_part : Parseable_Token_Ptr;
      Step_part : access Step_model.Step_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Relative_Location_Path_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Relative_Location_Path_nonterminal3 is new Relative_Location_Path_nonterminal with record
      Abbreviated_Relative_Location_Path_part : access Abbreviated_Relative_Location_Path_model.Abbreviated_Relative_Location_Path_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Relative_Location_Path_nonterminal3;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Relative_Location_Path_model;
