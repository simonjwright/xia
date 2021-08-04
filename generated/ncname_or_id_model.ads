-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Node_Type_model;
limited with Axis_Name_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package NCNAME_Or_ID_model is
   type NCNAME_Or_ID_nonterminal is abstract new Parseable with null record;
   type NCNAME_Or_ID_nonterminal1 is new NCNAME_Or_ID_nonterminal with record
      NCNAME_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access NCNAME_Or_ID_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type NCNAME_Or_ID_nonterminal2 is new NCNAME_Or_ID_nonterminal with record
      Axis_Name_part : access Axis_Name_model.Axis_Name_nonterminal'Class;
   end record;
   procedure Acceptor(This : access NCNAME_Or_ID_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type NCNAME_Or_ID_nonterminal3 is new NCNAME_Or_ID_nonterminal with record
      Node_Type_part : access Node_Type_model.Node_Type_nonterminal'Class;
   end record;
   procedure Acceptor(This : access NCNAME_Or_ID_nonterminal3;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type NCNAME_Or_ID_nonterminal4 is new NCNAME_Or_ID_nonterminal with record
      AND_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access NCNAME_Or_ID_nonterminal4;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type NCNAME_Or_ID_nonterminal5 is new NCNAME_Or_ID_nonterminal with record
      OR_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access NCNAME_Or_ID_nonterminal5;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type NCNAME_Or_ID_nonterminal6 is new NCNAME_Or_ID_nonterminal with record
      MOD_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access NCNAME_Or_ID_nonterminal6;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type NCNAME_Or_ID_nonterminal7 is new NCNAME_Or_ID_nonterminal with record
      DIV_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access NCNAME_Or_ID_nonterminal7;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end NCNAME_Or_ID_model;
