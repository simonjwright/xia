-------------------------------------------------------------------------------
--                                                                           --
--            XPATH IN ADA Copyright (C) 2004, McKae Technologies            --
--     XPATH IN ADA Copyright (C) 2021, Simon Wright <simon@pushface.org>    --
--                                                                           --
--  XPath in  Ada (XIA) is  free software;  you can redistribute  it and/or  --
--  modify it under terms of the GNU General Public License as published by  --
--  the Free Software Foundation; either version 3, or (at your option) any  --
--  later version.  GNAT is distributed in the hope that it will be useful,  --
--  but  WITHOUT  ANY  WARRANTY;  without  even  the  implied  warranty  of  --
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.                     --
--                                                                           --
--  As  a special  exception under  Section  7 of  GPL version  3, you  are  --
--  granted  additional permissions  described in  the GCC  Runtime Library  --
--  Exception, version 3.1, as published by the Free Software Foundation.    --
--                                                                           --
--  You should have received a copy of the GNU General Public License and a  --
--  copy of the GCC Runtime Library  Exception along with this program; see  --
--  the  files  COPYING3 and  COPYING.RUNTIME  respectively.   If not,  see  --
--  <http://www.gnu.org/licenses/>.                                          --
--                                                                           --
--  XIA is maintained at https://github.com/simonjwright/xia                 --
--                                                                           --
-------------------------------------------------------------------------------

with Ada.Strings.Fixed;
with Ada.Strings.Maps;
with Dom.Core.Nodes;
with Dom.Readers;
with Input_Sources.File;
with Unicode.CES;

with Gnatcoll.Readline;

with XIA;

with Ada.Text_IO; use Ada.Text_IO;

procedure Test_Xpath is

   use Ada.Strings.Fixed;
   use Ada.Strings.Maps;
   use Dom.Core;
   use Dom;
   use Input_Sources;
   use XIA;

   XML_Source_Reader : Dom.Readers.Tree_Reader;
   Queried_Nodes     : Node_List;
   N                 : Node;
   Child             : Node;
   Children          : Node_List;

   Children_Printed : Boolean := False;

   File_Source : File.File_Input;

   procedure Print_Text_Node (T : Text; Indent : Boolean := False) is
      White_Space : constant String := ' ' & ASCII.LF & ASCII.CR & ASCII.HT;
      White_Space_Set : constant Character_Set := To_Set (White_Space);

      S : Unicode.CES.Byte_Sequence :=
        Trim (Nodes.Node_Value (T), White_Space_Set, White_Space_Set);

   begin
      if S'Length > 0 then
         if Indent then
            Put ("  ");
         end if;
         Put_Line (S);
      end if;
   end Print_Text_Node;

begin

   Gnatcoll.Readline.Initialize (Appname => "test_xpath",
                                 History_File => "test_xpath.history");

   Get_Xml:
   declare
      Xml_File : constant String := Gnatcoll.Readline.Get_Line
        (Prompt => "Enter XML file name: ");
   begin

      File.Open (Trim (Xml_File, Ada.Strings.Both), File_Source);

      Readers.Parse (XML_Source_Reader, File_Source);
      File.Close (File_Source);

      Get_Commands :
      loop
         Get_Query :
         declare
            Query : String := Gnatcoll.Readline.Get_Line
              (Prompt => "Enter XPath query: ");
         begin
            exit Get_Commands when Query'Length = 0;
            if Query (1) /= '#' then
               New_Line;
               Put_Line ("Evaluating: " & Query);
               New_Line;
               Run_Query :
               begin
                  Queried_Nodes :=
                    Xpath_Query (Readers.Get_Tree (XML_Source_Reader), Query);
                  Put_Line
                    ("Number of nodes:" &
                       Natural'Image (Dom.Core.Nodes.Length (Queried_Nodes)));

                  Print_Nodes:
                  for I in 0 .. Nodes.Length (Queried_Nodes) - 1 loop
                     N := Dom.Core.Nodes.Item (Queried_Nodes, I);

                     if N.Node_Type = Element_Node then
                        Put ("<");
                        Put (Nodes.Node_Name (N));
                        Put (">");

                        Children         := Nodes.Child_Nodes (N);
                        Children_Printed := False;
                        for J in 0 .. Nodes.Length (Children) - 1 loop
                           Child := Nodes.Item (Children, J);
                           if Child.Node_Type = Element_Node then
                              if not Children_Printed then
                                 New_Line;
                                 Children_Printed := True;
                              end if;
                              Put ("  <");
                              Put (Nodes.Node_Name (Child));
                              Put_Line (">");
                           elsif Child.Node_Type = Text_Node then
                              if not Children_Printed then
                                 New_Line;
                                 Children_Printed := True;
                              end if;
                              Print_Text_Node (Child, Indent => True);
                           end if;
                        end loop;

                        Put ("</");
                        Put (Nodes.Node_Name (N));
                        Put_Line (">");

                     elsif N.Node_Type = Attribute_Node then
                        Put (Nodes.Node_Name (N) & "=""");
                        Put (Nodes.Node_Value (N));
                        Put_Line ("""");

                     elsif N.Node_Type = Text_Node then
                        Print_Text_Node (N);
                     else
                        Put (Nodes.Node_Value (N));
                     end if;
                  end loop Print_Nodes;

               exception
                  when Malformed_XPath =>
                     Put_Line ("Malformed query");
               end Run_Query;
            end if;
         end Get_Query;
      end loop Get_Commands;

   end Get_Xml;

   Gnatcoll.Readline.Finalize (History_File => "test_xpath.history");

exception
   when others =>
      Gnatcoll.Readline.Finalize (History_File => "test_xpath.history");
      raise;
end Test_Xpath;
