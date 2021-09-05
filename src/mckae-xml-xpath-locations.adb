-------------------------------------------------------------------------------
--                                                                           --
--            XPATH IN ADA Copyright (C) 2003, McKae Technologies            --
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

with Unchecked_Deallocation;

with Ada.Text_IO;

package body Mckae.XML.XPath.Locations is

   use McKae.XML.XPath;

   Parsing_Path : Location_Paths;

   Accumulating_Predicate : Boolean := False;

   function "-" (L : Ada.Strings.Unbounded.Unbounded_String) return String
     renames Ada.Strings.Unbounded.To_String;

   --  In Ada2020, we could just use Object'Image.
   function Image (Object : Node_Test_Specification) return String
   is
   begin
      return "test: " & Object.Node_Test'Image
        & ", name: " & (-Object.Name)
        & (if Object.Node_Test = QName_Node_Test
           then ", prefix: " & (-Object.Prefix)
           else "");
   end Image;

   --  In Ada2020, we could just use Object'Image.
   function Image (Object : Location_Steps) return String
   is
   begin
      return "step:"
        & " axis: " & Object.Axis'Image
        & ", " & Image (Object.Node_Test)
        & ", output: " & Object.Output_Step'Image;
      --  predicates TBD
   end Image;

   --  In Ada2020, we could just use Object'Image.
   function Image (Object : Location_Paths) return String
   is
      function List
        (Component : Location_Steps_Management.Cursor) return String
      is
         use Location_Steps_Management;
      begin
         return (if Component = No_Element
                 then ""
                 else ASCII.LF & " " & Image (Element (Component))
                    & List (Next (Component)));
      end List;
      use type Ada.Containers.Count_Type;
   begin
      return "path ("
        & (if Object.Absolute then "absolute" else "relative")
        & ")"
        & List (Object.Path.First);
   end Image;

   procedure Add (Location_Step : in Location_Steps)
   is
      pragma Debug
        (Ada.Text_IO.Put_Line ("adding " & Image (Location_Step)));
      pragma Assert (Location_Step.Node_Test.Node_Test /= No_Node_Test);
      Step : Location_Steps := Location_Step;
   begin
      if not Step.Location_Predicates.Is_Empty then
         pragma Debug
           (Ada.Text_IO.Put_Line ("! suppressing predicates"));
         Step.Location_Predicates.Clear;
      end if;
      if Accumulating_Predicate
      then
         null;
         pragma Debug
           (Ada.Text_IO.Put_Line (".. skipping"));
      else
         Parsing_Path.Path.Append (Step);
      end if;
   end Add;

   procedure Add_Predicate (Predicate : Xpath_Model.Parseable_Ptr)
   is
      pragma Assert (Accumulating_Predicate);
   begin
      pragma Debug (Ada.Text_IO.Put_Line ("adding predicate"));
      declare
         procedure Add_Predicates (Element : in out Location_Steps) is
         begin
            Element.Location_Predicates.Append (Predicate);
         end Add_Predicates;
      begin
         Parsing_Path.Path.Update_Element
           (Position => Parsing_Path.Path.Last,
            Process => Add_Predicates'Access);
      end;
      pragma Debug
        (Ada.Text_IO.Put_Line
           ("updated predicates: " & Image (Parsing_Path.Path.Last_Element)));
   end Add_Predicate;

   procedure Begin_Predicate is
   begin
      pragma Debug (Ada.Text_IO.Put_Line ("beginning predicate acumulation"));
      pragma Assert (not Accumulating_Predicate);
      Accumulating_Predicate := True;
   end Begin_Predicate;

   procedure End_Predicate
   is
      use type Ada.Containers.Count_Type;
   begin
      pragma Debug (Ada.Text_IO.Put_Line ("ending predicate accumulation"));
      pragma Assert (Accumulating_Predicate);
      Accumulating_Predicate := False;
   end End_Predicate;

   procedure Free (Location_Path : in out Location_Paths) is
      Step : Location_Steps;
   begin
      for Step of Location_Path.Path loop
         Predicates.Release (Step.Location_Predicates);
      end loop;
      Location_Path.Path.Clear;
   end Free;

   function Get_Path return Location_Paths
   is
   begin
      return Parsing_Path;
   end Get_Path;

   procedure Reset_For_Parsing
   is
   begin
      Parsing_Path := (Absolute => False,
                       Path     => <>);
   end Reset_For_Parsing;

end Mckae.XML.XPath.Locations;
