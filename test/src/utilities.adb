--  Copyright (C) 2024 Simon Wright <simon@pushface.org>
--  Licence: GPL-3.0-or-later

with Ada.Strings.Fixed;
with Ada.Strings.Maps;
with DOM.Core.Nodes;
with Unicode.CES;

with XIA;

package body Utilities is

   use Ada.Strings.Fixed;
   use Ada.Strings.Maps;
   use Ada.Strings.Unbounded;
   use DOM.Core;
   use XIA;

   function Print_Text_Node (T : Text; Indent : Boolean := False)
                            return Unbounded_String;

   function Run_Query (Document : DOM.Readers.Tree_Reader;
                       Query : String;
                       Matches : out Natural)
                      return Unbounded_String
   is
      Queried_Nodes     : Node_List;
      N                 : Node;
      Child             : Node;
      Children          : Node_List;

      Result : Unbounded_String;
   begin
      Queried_Nodes :=
        XPath_Query (DOM.Readers.Get_Tree (Document), Query);
      Matches := DOM.Core.Nodes.Length (Queried_Nodes);

      Print_Nodes :
      for I in 0 .. Nodes.Length (Queried_Nodes) - 1 loop
         N := DOM.Core.Nodes.Item (Queried_Nodes, I);

         if Length (Result) > 0 then
            Append (Result, ";");
         end if;

         if N.Node_Type = Element_Node then
            Append (Result, "<");
            Append (Result, Nodes.Node_Name (N));
            Append (Result, ">");

            Element_Content :
            declare
               Content : Unbounded_String;
            begin
               Children := Nodes.Child_Nodes (N);
               for J in 0 .. Nodes.Length (Children) - 1 loop
                  if Length (Content) > 0 then
                     Append (Content, ";");
                  end if;
                  Child := Nodes.Item (Children, J);
                  if Child.Node_Type = Element_Node then
                     Append (Result,
                             "  <"
                               & Nodes.Node_Name (Child)
                               & ">");
                  elsif Child.Node_Type = Text_Node then
                     Append (Result, Print_Text_Node (Child, Indent => True));
                  end if;
               end loop;
               Append (Result, Content);
            end Element_Content;

            Append (Result,
                    "</"
                      & Nodes.Node_Name (N)
                      & ">");
            --  & ";");

         elsif N.Node_Type = Attribute_Node then
            Append (Result,
                    Nodes.Node_Name (N)
                      & "='"
                      & Nodes.Node_Value (N)
                      & "'");
            --  & ";");

         elsif N.Node_Type = Text_Node then
            Append (Result, Print_Text_Node (N));
         else
            Append (Result, Nodes.Node_Value (N));
         end if;
      end loop Print_Nodes;
      return Result;
   end Run_Query;

   function Print_Text_Node (T : Text; Indent : Boolean := False)
                            return Unbounded_String
   is
      White_Space : constant String := ' ' & ASCII.LF & ASCII.CR & ASCII.HT;
      White_Space_Set : constant Character_Set := To_Set (White_Space);

      S : constant Unicode.CES.Byte_Sequence :=
        Trim (Nodes.Node_Value (T), White_Space_Set, White_Space_Set);

      Result : Unbounded_String;
   begin
      if S'Length > 0 then
         if Indent then
            Append (Result, "  ");
         end if;
         Append (Result, S);
      end if;
      return Result;
   end Print_Text_Node;

end Utilities;
