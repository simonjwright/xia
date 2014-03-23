--  Copyright 1994 Grady Booch
--  Copyright 1998-2002 Simon Wright <simon@pushface.org>

--  This package is free software; you can redistribute it and/or
--  modify it under terms of the GNU General Public License as
--  published by the Free Software Foundation; either version 2, or
--  (at your option) any later version. This package is distributed in
--  the hope that it will be useful, but WITHOUT ANY WARRANTY; without
--  even the implied warranty of MERCHANTABILITY or FITNESS FOR A
--  PARTICULAR PURPOSE. See the GNU General Public License for more
--  details. You should have received a copy of the GNU General Public
--  License distributed with this package; see file COPYING.  If not,
--  write to the Free Software Foundation, 59 Temple Place - Suite
--  330, Boston, MA 02111-1307, USA.

--  As a special exception, if other files instantiate generics from
--  this unit, or you link this unit with other files to produce an
--  executable, this unit does not by itself cause the resulting
--  executable to be covered by the GNU General Public License.  This
--  exception does not however invalidate any other reasons why the
--  executable file might be covered by the GNU Public License.

--  $RCSfile: bc-containers-collections-ordered-unbounded.adb,v $
--  $Revision: 1.8.2.1 $
--  $Date: 2002/12/29 12:22:41 $
--  $Author: simon $

with System.Address_To_Access_Conversions;

package body BC.Containers.Collections.Ordered.Unbounded is

   function "=" (Left, Right : in Collection) return Boolean is
      use Collection_Nodes;
   begin
      return Left.Rep = Right.Rep;
   end "=";

   procedure Clear (C : in out Collection) is
   begin
      Collection_Nodes.Clear (C.Rep);
   end Clear;

   procedure Insert (C : in out Collection; Elem : Item) is
   begin
      for Index in 1 .. Collection_Nodes.Length (C.Rep)
      loop
         if not (Collection_Nodes.Item_At (C.Rep, Index)
                 < Elem) then
            Collection_Nodes.Insert (C.Rep, Elem, Index);
            return;
         end if;
      end loop;
      Collection_Nodes.Append (C.Rep, Elem);
   end Insert;

   procedure Insert (C : in out Collection;
                     Elem : Item;
                     Before : Positive) is
      pragma Warnings (Off, Before);
   begin
      for Index in 1 .. Collection_Nodes.Length (C.Rep)
      loop
         if not (Collection_Nodes.Item_At (C.Rep, Index)
                 < Elem) then
            Collection_Nodes.Insert (C.Rep, Elem, Index);
            return;
         end if;
      end loop;
      Collection_Nodes.Append (C.Rep, Elem);
   end Insert;

   procedure Append (C : in out Collection; Elem : Item) is
   begin
      for Index in 1 .. Collection_Nodes.Length (C.Rep)
      loop
         if Elem < Collection_Nodes.Item_At (C.Rep, Index) then
            Collection_Nodes.Insert (C.Rep, Elem, Index);
            return;
         end if;
      end loop;
      Collection_Nodes.Append (C.Rep, Elem);
   end Append;

   procedure Append (C : in out Collection;
                     Elem : Item;
                     After : Positive) is
      pragma Warnings (Off, After);
   begin
      for Index in 1 .. Collection_Nodes.Length (C.Rep)
      loop
         if Elem < Collection_Nodes.Item_At (C.Rep, Index) then
            Collection_Nodes.Insert (C.Rep, Elem, Index);
            return;
         end if;
      end loop;
      Collection_Nodes.Append (C.Rep, Elem);
   end Append;

   procedure Remove (C : in out Collection; At_Index : Positive) is
   begin
      Collection_Nodes.Remove (C.Rep, At_Index);
   end Remove;

   procedure Replace (C : in out Collection;
                      At_Index : Positive;
                      Elem : Item) is
   begin
      Collection_Nodes.Remove (C.Rep, At_Index);
      Insert (C, Elem);
   end Replace;

   function Length (C : Collection) return Natural is
   begin
      return Collection_Nodes.Length (C.Rep);
   end Length;

   function Is_Empty (C : Collection) return Boolean is
   begin
      return Collection_Nodes.Length (C.Rep) = 0;
   end Is_Empty;

   function First (C : Collection) return Item is
   begin
      return Collection_Nodes.First (C.Rep);
   end First;

   function Last (C : Collection) return Item is
   begin
      return Collection_Nodes.Last (C.Rep);
   end Last;

   function Item_At (C : Collection; At_Index : Positive) return Item is
   begin
      return Item_At (C, At_Index).all;
   end Item_At;

   function Location (C : Collection; Elem : Item) return Natural is
   begin
      return Collection_Nodes.Location (C.Rep, Elem);
   end Location;

   package Address_Conversions
   is new System.Address_To_Access_Conversions (Collection);

   function New_Iterator
     (For_The_Collection : Collection) return Iterator'Class is
      Result : Collection_Iterator;
   begin
      Result.For_The_Container :=
        Address_Conversions.To_Pointer (For_The_Collection'Address).all'Access;
      Reset (Result);
      return Result;
   end New_Iterator;

   function Item_At (C : Collection; Index : Positive) return Item_Ptr is
   begin
      return Collection_Nodes.Item_At (C.Rep, Index);
   end Item_At;

   Empty_Container : Collection;
   pragma Warnings (Off, Empty_Container);

   function Null_Container return Collection is
   begin
      return Empty_Container;
   end Null_Container;

end BC.Containers.Collections.Ordered.Unbounded;
