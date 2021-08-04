-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with NCNAME_Or_ID_model;
limited with QName_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Name_Test_model is
   type Name_Test_nonterminal is abstract new Parseable with null record;
   type Name_Test_nonterminal1 is new Name_Test_nonterminal with record
      STAR_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Name_Test_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Name_Test_nonterminal2 is new Name_Test_nonterminal with record
      QName_part : access QName_model.QName_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Name_Test_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
   type Name_Test_nonterminal3 is new Name_Test_nonterminal with record
      NCNAME_Or_ID_part : access NCNAME_Or_ID_model.NCNAME_Or_ID_nonterminal'Class;
      COLON_part : Parseable_Token_Ptr;
      STAR_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access Name_Test_nonterminal3;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Name_Test_model;
