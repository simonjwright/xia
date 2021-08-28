-------------------------------------------------------------------------------
--                                                                           --
--            XPATH IN ADA Copyright (C) 2003, McKae Technologies            --
--     XPATH IN ADA Copyright (C) 2014, Simon Wright <simon@pushface.org>    --
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

with Ada.Containers;

with Dom.Core;
use  Dom.Core;

with Mckae.XML.XPath.Locations;
use  Mckae.XML.XPath.Locations;

private with Ada.Containers.Ordered_Sets;
private with Ada.Containers.Vectors;

package Mckae.XML.XPath.Node_Sets is


   -- Record information about node-set member nodes
   type Current_Matchings (Axis : Axes := No_Axis) is record
      Matching_Node : Node;

      case Axis is
         when Attribute_Axis =>
            Owner_Node  : Node;    -- Work around bug in XMLAda wherein the
                                   -- parent node of an attribute is always
                                   -- set to null, making it impossible to
                                   -- get the owner element
            Attr_Index  : Natural;

         when Branched_Axes =>
            Branch_Step : Location_Steps;

         when others =>
            null;
      end case;
   end record;

   ------------------------------------------------------------------
   --  We need a container which has both vector-like properties (to
   --  keep nodes in document order or, in the case of ancestor- or
   --  previous- axes, reverse document order) as well as set-like
   --  properties (so that each node is only entered once).
   --
   --  Clearly there might be some confusion if a node is entered
   --  through two routes (for example, a union (node-set |
   --  node-set). However, the document ordering is only important at
   --  a single step, so this isn't an issue.
   --
   --  This code is written in the style of Ada.Containers, but with
   --  only the interfaces required to support this application.
   ------------------------------------------------------------------

   type Set is tagged private;
   type Cursor is private;
   No_Element : constant Cursor;

   not overriding
   function Length (Container : Set) return Ada.Containers.Count_Type;

   not overriding
   function Is_Empty (Container : Set) return Boolean;

   not overriding
   procedure Clear (Container : in out Set);

   not overriding
   function First (Container : Set) return Cursor;

   function Element (Position : Cursor) return Current_Matchings;

   procedure Next (Position : in out Cursor);

   not overriding
   procedure Insert (Container : in out Set;
                     New_Item : Current_Matchings);
   --  Inserts New_Item (at the beginning) unless it's already present.

   not overriding
   procedure Append (Container : in out Set;
                     New_Item : Current_Matchings);
   --  Appends New_Item (at the end) unless it's already present.

   not overriding
   procedure Union (Target : in out Set; Source : Set);
   --  Union inserts into Target the elements of Source that are not
   --  equivalent to some element already in Target.

private
   function Equals (L, R : Current_Matchings) return Boolean;
   function Less_Than (L, R : Current_Matchings) return Boolean;

   package Matchings_Vectors
   is new Ada.Containers.Vectors (Index_Type => Positive,
                                  Element_Type => Current_Matchings,
                                  "=" => Equals);

   package Matchings_Sets
   is new Ada.Containers.Ordered_Sets (Element_Type => Current_Matchings,
                                      "=" => Equals,
                                      "<" => Less_Than);

   type Set is tagged record
      Elements : Matchings_Vectors.Vector;
      Presence : Matchings_Sets.Set;
   end record;
   --  Doesn't need to be controlled, since both the components are.

   type Cursor is record
      Elements_Cursor : Matchings_Vectors.Cursor;
   end record;

   No_Element : constant Cursor
     := Cursor'(Elements_Cursor => Matchings_Vectors.No_Element);

end Mckae.XML.XPath.Node_Sets;
