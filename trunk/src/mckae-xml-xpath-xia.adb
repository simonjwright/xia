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

with Ada.Text_IO; use Ada.Text_IO;
with DOM.Core.Nodes;

with McKae.XML.XPath.XIA_Worker;
with McKae.XML.XPath.Query_Handling;

with xia_parser_Model;
with xia_parser_Parser;

package body McKae.XML.XPath.XIA is

   use DOM.Core;
   use DOM.Core.Nodes;

   function XPath_Query (N : Node; XPath : String) return Node_List is

      Results : Node_List;

   begin
      Results := XIA_Worker.XPath_Query (N, XPath);

      Query_Handling.Parse_Tree.Release;

      return Results;

   exception
      when XIA_Worker.Malformed_XPath =>
         raise Malformed_XPath;

      when XIA_Worker.Inappropriate_Node =>
         raise Inappropriate_Node;

   end XPath_Query;

   -------------------------------------------------------------------

end McKae.XML.XPath.XIA;
