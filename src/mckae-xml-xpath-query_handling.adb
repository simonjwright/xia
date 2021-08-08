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

with Mckae.XML.XPath.DFS_Processing;
with Mckae.XML.XPath.Locations;
with Ada.Directories;
with Ada.Environment_Variables;
with Ada.IO_Exceptions;
with Ada.Text_IO;
with Xpath_Model;
with Xpath_Parser;

package body Mckae.XML.XPath.Query_Handling is

   Visitor : aliased DFS_Processing.DFS;

   --  Decode the string representation of the location path into its
   --  components parts
   function Pathify (Xpath_Query : Locations.Xpath_String)
                    return Locations.Location_Paths is

      Path : Locations.Location_Paths;
      Step : Locations.Location_Steps;

      --  The generated parser expects the input line in a file.
      Tmp_Dir : constant String :=
        (if Ada.Environment_Variables.Exists ("TMPDIR")
         then Ada.Environment_Variables.Value ("TMPDIR")
         elsif Ada.Environment_Variables.Exists ("TMP")
         then Ada.Environment_Variables.Value ("TMP")
         else "/tmp");
      Tmp_File_Name : constant String
        := Ada.Directories.Compose (Containing_Directory => Tmp_Dir,
                                    Name => "xia-tmp");
      Tmp_File : Ada.Text_IO.File_Type;

   begin

      --  Create the temp file if needed
      begin
         Ada.Text_IO.Create (Tmp_File,
                             Mode => Ada.Text_IO.Out_File,
                             Name => Tmp_File_Name);
         Ada.Text_IO.Close (Tmp_File);
      exception
         when Ada.IO_Exceptions.Name_Error => null;  -- already exists
         when others => null;
      end;

      --  Write the query to the temp file
      Ada.Text_IO.Open (Tmp_File,
                        Mode => Ada.Text_IO.Out_File,
                        Name => Tmp_File_Name);
      Ada.Text_IO.Put (Tmp_File, Xpath_Query);
      Ada.Text_IO.Close (Tmp_File);

      Xpath_Parser.Run (Tmp_File_Name);
      Parse_Tree := Xpath_Parser.Get_Parse_Tree;

      Locations.Reset_For_Parsing;

      Parse_Tree.Acceptor (Visitor'Access);

      Path := Locations.Get_Path;

      Path.Absolute := Xpath_Query (Xpath_Query'First) = '/';
      Path.Path (Positive (Path.Path.Length)).Output_Step := True;

      return Path;

   exception
      when Xpath_Parser.Syntax_Error =>
        raise Malformed_Query;
   end Pathify;

   -- Release the resources used by the construction of a location path
   procedure Free (Location_Path : in out Locations.Location_Paths) is
   begin
      Locations.Free (Location_Path);
   end Free;

end Mckae.XML.XPath.Query_Handling;
