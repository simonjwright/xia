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

with Text_Io; use Text_IO;

package body Mckae.XML.XPath.Locations is

   use McKae.XML.XPath;

   -------------------------------------------------------------------

   Parsing_Path : Location_Paths;

   -------------------------------------------------------------------

--     procedure Free is new
--       Unchecked_Deallocation(Location_Path_Steps,
--                              Location_Path_Steps_Handle);

   -------------------------------------------------------------------

   procedure Add (Location_Step : in     Location_Steps;
                  Location_Path : in out Location_Paths) is
   begin
      pragma Debug (Put_Line ("Adding: "
                               & Location_Step.Node_Test.Node_Test'Image
                               & " ("
                               & To_String(Location_Step.Node_Test.Name)
                               & ")"));
      pragma Assert (Location_Step.Node_Test.Node_Test /= No_Node_Test);

      Location_Path.Steps := Location_Path.Steps + 1;
      Location_Path.Path.Append (Location_Step);
   end Add;

   -------------------------------------------------------------------

   procedure Add (Location_Step : in     Location_Steps) is

   begin
      Add (Location_Step, Parsing_Path);
   end Add;

   -------------------------------------------------------------------

   procedure Free (Location_Path : in out Location_Paths) is
      Step : Location_Steps;
   begin
      for P in 1 .. Positive (Location_Path.Path.Length) loop
         Step := Location_Path.Path.Element (P);
         Predicates.Release (Step.Location_Predicates);
         Location_Path.Path.Replace_Element (P, Step);
      end loop;
      Location_Path.Path.Clear;
   end Free;

   -------------------------------------------------------------------

   function Get_Path return Location_Paths
   is
   begin
      return Parsing_Path;
   end Get_Path;

   -------------------------------------------------------------------

   procedure Reset_For_Parsing
   is
   begin
      Parsing_Path :=
        (Steps    => 0,
         Absolute => False,
         Path     => <>);
   end Reset_For_Parsing;

end Mckae.XML.XPath.Locations;
