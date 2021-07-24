------------------------------------------------------------------------
--                                                                    --
--                     McKae Software Utilities                       --
--                                                                    --
--           Copyright (C) 2004 McKae Technologies                    --
--                                                                    --
-- The  McKae   software  utilities   are  free  software;   you  can --
-- redistribute it  and/or modify it  under terms of the  GNU General --
-- Public  License  as published  by  the  Free Software  Foundation; --
-- either version  2, or (at  your option) any later  version.  McKae --
-- Software Utilities are  distributed in the hope that  they will be --
-- useful,  but  WITHOUT  ANY  WARRANTY;  without  even  the  implied --
-- warranty of  MERCHANTABILITY or FITNESS FOR  A PARTICULAR PURPOSE. --
-- See the GNU  General Public License for more  details.  You should --
-- have received a copy of the GNU General Public License distributed --
-- with DTraq; see file COPYING.   If not, write to the Free Software --
-- Foundation, 59  Temple Place -  Suite 330, Boston,  MA 02111-1307, --
-- USA.                                                               --
--                                                                    --
-- As a  special exception, if other files  instantiate generics from --
-- this unit,  or you link this  unit with other files  to produce an --
-- executable,  this unit  does  not by  itself  cause the  resulting --
-- executable to be covered by  the GNU General Public License.  This --
-- exception does  not however invalidate  any other reasons  why the --
-- executable file might be covered by the GNU Public License.        --
--                                                                    --
-- The McKae Software Utilities  are maintained by McKae Technologies --
-- (http://www.mckae.com).                                            --
------------------------------------------------------------------------

with Unchecked_Deallocation;

with Ada.Text_IO;

package body Mckae.XML.XPath.Locations is

   use McKae.XML.XPath;

   Parsing_Path : Location_Paths;

   Accumulating_Predicate : Boolean := False;

   procedure Add (Location_Step : in Location_Steps)
   is
      pragma Debug
        (Ada.Text_IO.Put_Line ("adding step: " & Location_Step'Image));
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
           ("updated predicates: "
              & Parsing_Path.Path.Last_Element'Image));
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
