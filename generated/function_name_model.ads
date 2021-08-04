-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with QName_model;
with XPath_model;
use XPath_model;
with XPath_Visitor_Interface;
package Function_Name_model is
   type Function_Name_nonterminal is new Parseable with record
      QName_part : access QName_model.QName_nonterminal'Class;
   end record;
   procedure Acceptor(This : access Function_Name_nonterminal;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class);
end Function_Name_model;
