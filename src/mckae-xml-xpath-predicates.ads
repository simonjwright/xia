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
