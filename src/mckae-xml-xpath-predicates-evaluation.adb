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
      for Predicate of Predicates loop
         declare
            Filtered_Nodes : Node_Sets.Set;
         begin
            Node_Item_Index := 1;
            Node_Set_Size   := Natural (Nodes.Length);
            Cursor := Nodes.First;

            while Cursor /= Node_Sets.No_Element loop
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
               end;
            end loop;
            Nodes := Filtered_Nodes;
         end;
      end loop;

   exception
      when Expressions.Invalid_Coercion
        | Expressions.Invalid_Expression =>
         raise Malformed_Predicate;
   end Evaluate_Predicate;

   ----------------------------------------------------------------------

end McKae.XML.XPath.Predicates.Evaluation;
