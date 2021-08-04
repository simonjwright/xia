-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Axis_Name_model is
   type Axis_Name_nonterminal is abstract new Parseable with null record;
   type Axis_Name_nonterminal1 is new Axis_Name_nonterminal with record
      ANCESTOR_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Axis_Name_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Axis_Name_nonterminal2 is new Axis_Name_nonterminal with record
      ANCESTOR_OR_SELF_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Axis_Name_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Axis_Name_nonterminal3 is new Axis_Name_nonterminal with record
      ATTRIBUTE_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Axis_Name_nonterminal3;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Axis_Name_nonterminal4 is new Axis_Name_nonterminal with record
      CHILD_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Axis_Name_nonterminal4;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Axis_Name_nonterminal5 is new Axis_Name_nonterminal with record
      DESCENDANT_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Axis_Name_nonterminal5;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Axis_Name_nonterminal6 is new Axis_Name_nonterminal with record
      DESCENDANT_OR_SELF_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Axis_Name_nonterminal6;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Axis_Name_nonterminal7 is new Axis_Name_nonterminal with record
      FOLLOWING_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Axis_Name_nonterminal7;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Axis_Name_nonterminal8 is new Axis_Name_nonterminal with record
      FOLLOWING_SIBLING_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Axis_Name_nonterminal8;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Axis_Name_nonterminal9 is new Axis_Name_nonterminal with record
      NAMESPACE_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Axis_Name_nonterminal9;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Axis_Name_nonterminal10 is new Axis_Name_nonterminal with record
      PARENT_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Axis_Name_nonterminal10;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Axis_Name_nonterminal11 is new Axis_Name_nonterminal with record
      PRECEDING_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Axis_Name_nonterminal11;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Axis_Name_nonterminal12 is new Axis_Name_nonterminal with record
      PRECEDING_SIBLING_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Axis_Name_nonterminal12;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Axis_Name_nonterminal13 is new Axis_Name_nonterminal with record
      SELF_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Axis_Name_nonterminal13;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Axis_Name_model;
