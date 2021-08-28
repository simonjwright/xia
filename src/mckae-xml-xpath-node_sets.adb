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

with System;

package body McKae.XML.XPath.Node_Sets is

   not overriding
   function Length (Container : Set) return Ada.Containers.Count_Type
   is
   begin
      return Container.Elements.Length;
   end Length;

   -------------------------------------------------------------------

   not overriding
   function Is_Empty (Container : Set) return Boolean
   is
   begin
      return Container.Elements.Is_Empty;
   end Is_Empty;

   -------------------------------------------------------------------

   not overriding
   procedure Clear (Container : in out Set)
   is
   begin
      Container.Elements.Clear;
      Container.Presence.Clear;
   end Clear;

   -------------------------------------------------------------------

   not overriding
   function First (Container : Set) return Cursor
   is
   begin
      return Cursor'(Elements_Cursor => Container.Elements.First);
   end First;

   -------------------------------------------------------------------

   function Element (Position : Cursor) return Current_Matchings
   is
   begin
      return Matchings_Vectors.Element (Position.Elements_Cursor);
   end Element;

   -------------------------------------------------------------------

   procedure Next (Position : in out Cursor)
   is
   begin
      Matchings_Vectors.Next (Position.Elements_Cursor);
   end Next;

   -------------------------------------------------------------------

   not overriding
   procedure Insert (Container : in out Set;
                     New_Item : Current_Matchings)
   is
   begin
      if not Container.Presence.Contains (New_Item) then
         Container.Presence.Insert (New_Item);
         Container.Elements.Insert (New_Item => New_Item,
                                    Before => Container.Elements.First_Index);
      end if;
   end Insert;

   -------------------------------------------------------------------

   not overriding
   procedure Append (Container : in out Set;
                     New_Item : Current_Matchings)
   is
   begin
      if not Container.Presence.Contains (New_Item) then
         Container.Presence.Insert (New_Item);
         Container.Elements.Append (New_Item);
      end if;
   end Append;

   -------------------------------------------------------------------

   not overriding
   procedure Union (Target : in out Set; Source : Set) is
      procedure Append (Position : Matchings_Vectors.Cursor) is
      begin
         Target.Append (New_Item => Matchings_Vectors.Element (Position));
      end Append;
   begin
      Source.Elements.Iterate (Append'Access);
   end Union;

   -------------------------------------------------------------------

   function Equals (L, R : Current_Matchings) return Boolean is
   begin
      return L.Matching_Node = R.Matching_Node;
   end Equals;

   -------------------------------------------------------------------

   function Less_Than (L, R : Current_Matchings) return Boolean is
      use System;
   begin
      return L.Matching_Node.all'Address < R.Matching_Node.all'Address;
   end Less_Than;

end Mckae.XML.XPath.Node_Sets;
