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

with Dom.Core;
with Mckae.XML.XPath.Expressions;
with Mckae.XML.XPath.Predicates.Evaluation.Evaluators;
with Xpath_Model;

with Ada.Text_IO;

package body McKae.XML.XPath.Predicates.Evaluation is

   use Mckae.XML.XPath.Expressions;
   use Xpath_Model;

   procedure Evaluate_Predicate (Nodes            : in out Node_Sets.Set;
                                 Predicates       : in     Predicate_List;
                                 Originating_Axis : in     Locations.Axes)
   is
      use Mckae.XML.XPath;

      Cursor             : Node_Sets.Cursor;
      Node_Set_Size      : Natural := Natural (Nodes.Length);
      Node_Item_Index    : Natural := 0;
      Node_Item_Position : Natural := 0;
      Node_Item          : Expressions.Node_Items;

      use type Node_Sets.Cursor;

   begin
      Each_Predicate :
      for Predicate of Predicates loop
         Filtering :
         declare
            Filtered_Nodes : Node_Sets.Set;
         begin
            Node_Item_Index := 1;
            Node_Set_Size   := Natural (Nodes.Length);
            Cursor := Nodes.First;

            Evaluating_Predicate :
            while Cursor /= Node_Sets.No_Element loop
               Each_Node :
               declare
                  Expression : Expressions.Expression_Values;
               begin
                  if Locations.Forward_Axis (Originating_Axis) then
                     Node_Item_Position := Node_Item_Index;
                  else
                     pragma Assert
                       (Locations.Reverse_Axis (Originating_Axis));
                     Node_Item_Position :=
                       (Node_Set_Size - Node_Item_Index) + 1;
                  end if;

                  Node_Item :=
                    (N             =>
                       Node_Sets.Element (Cursor).Matching_Node,
                     Node_Position => Node_Item_Position,
                     Node_Set_Size => Node_Set_Size);
                  Evaluators.Evaluate (Predicate.all,
                                       Node_Item,
                                       Expression);

                  if Expression.Value_Type = As_Number
                  then
                     if Expression.Special = Normal
                       and then Integer (Long_Float'Truncation (Expression.F))
                       = Node_Item_Position
                     then
                        Filtered_Nodes.Append (Node_Sets.Element (Cursor));
                     end if;
                  else
                     Expressions.Coerce (Expression, Expressions.As_Boolean);

                     if Expression.B then
                        Filtered_Nodes.Append (Node_Sets.Element (Cursor));
                     end if;
                  end if;

                  Node_Sets.Next (Cursor);
                  Node_Item_Index := Node_Item_Index + 1;
               end Each_Node;
            end loop Evaluating_Predicate;
            Nodes := Filtered_Nodes;
         end Filtering;
      end loop Each_Predicate;

   exception
      when Expressions.Invalid_Coercion
        | Expressions.Invalid_Expression =>
         raise Malformed_Predicate;
   end Evaluate_Predicate;

   ----------------------------------------------------------------------

end McKae.XML.XPath.Predicates.Evaluation;
