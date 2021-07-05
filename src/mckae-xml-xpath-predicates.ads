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

with Ada.Containers.Vectors;
with Xpath_Model;

package McKae.XML.XPath.Predicates is

   package Predicates_List_Package is new Ada.Containers.Vectors
     (Index_Type   => Positive,
      Element_Type => Xpath_Model.Parseable_Ptr,
      "="          => Xpath_Model."=");

   subtype Predicate_List is Predicates_List_Package.Vector;

   Null_Predicate : constant Predicate_List
     := Predicates_List_Package.Empty_Vector;

    --  Add the pointer to the root node of a parse subtree that was
   --  created for a predicate
   procedure Add_Predicate_Parse
     (L : in out Predicate_List;
      T : in     not null Xpath_Model.Parseable_Ptr);

   --  Release the contents of a predicate handle (which may consist
   --  of one or more individual predicate definitions).  Note that
   --  this does _not_ release the associated parse subtree associated
   --  with each predicate instance.
   procedure Release (L : in out Predicate_List);

   Malformed_Predicate : exception;
   --  Raised when a supplied query predicate does not conform to
   --  predicate syntax

end McKae.XML.XPath.Predicates;
