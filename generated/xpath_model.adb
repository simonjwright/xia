-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body XPath_Model is
   procedure Acceptor(This : access Parseable_Token;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Parseable_Token(This);
   end Acceptor;
end XPath_Model;
