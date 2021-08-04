-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body Relative_Location_Path_model is
   procedure Acceptor(This : access Relative_Location_Path_nonterminal1;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Relative_Location_Path_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access Relative_Location_Path_nonterminal2;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Relative_Location_Path_nonterminal2(This);
   end Acceptor;

   procedure Acceptor(This : access Relative_Location_Path_nonterminal3;
      I : access XPath_Visitor_Interface.Visit_XPath_Interface'Class) is
   begin
      I.Visit_Relative_Location_Path_nonterminal3(This);
   end Acceptor;

end Relative_Location_Path_model;
