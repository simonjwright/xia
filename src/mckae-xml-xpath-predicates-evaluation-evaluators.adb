-------------------------------------------------------------------------------
--                                                                           --
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

with Ada.Strings.Unbounded;
with Ada.Tags;
with Dom.Core.Append_Node;
with Dom.Core.Nodes;
with Mckae.Xml.Xpath.Xia_Worker;

with Ada.Text_IO;

package body Mckae.Xml.Xpath.Predicates.Evaluation.Evaluators is

   use Ada.Strings.Unbounded;
   use Xpath_Model;

   -----------------------------------------------
   --  Useful

   function "+" (S : String) return Unbounded_String
     renames To_Unbounded_String;

   function "-" (U : Unbounded_String) return String
     renames To_String;

   -----------------------------------------------
   --  Special specs

   function Evaluate_Arguments
     (This         : in     Arguments_Nonterminal'Class;
      Context_Node : in     Node_Items) return Argument_List;

   function Is_In (N  : Dom.Core.Node;
                   Nl : Dom.Core.Node_List) return Boolean;

   -----------------------------------------------
   -- Debug

   procedure Log (This  : in Xpath_Model.Parseable'Class)
   is
   begin
      null;
      pragma Debug
        (Ada.Text_IO.Put_Line ("s/" & Ada.Tags.Expanded_Name (This'Tag)));
   end Log;

   procedure Log (This  : in Xpath_Model.Parseable'Class;
                  Value : in Expression_Values)
   is
   begin
      null;
      pragma Debug
        (Ada.Text_IO.Put_Line ("e/" & Ada.Tags.Expanded_Name (This'Tag)
                                 & ": value: "
                                 & Image (Value)));
   end Log;

   procedure Log (This    : in Xpath_Model.Parseable'Class;
                  Message :    String;
                  Value   : in Expression_Values)
   is
   begin
      null;
      pragma Debug
        (Ada.Text_IO.Put_Line ("i/" & Ada.Tags.Expanded_Name (This'Tag)
                                 & ": "
                                 & Message
                                 & ": value: "
                                 & Image (Value)));
   end Log;

   -----------------------------------------------
   --  Public bodies

   procedure Evaluate
     (This         : in     Xpath_Model.Parseable'Class;
      Context_Node : in     Expressions.Node_Items;
      Value        :    out Expressions.Expression_Values)
   is
      use type Ada.Tags.Tag;
   begin
      Log (This);
      if This'Tag = Abbreviated_Absolute_Location_Path_Nonterminal'Tag then
         Evaluate_Terminal
           (Abbreviated_Absolute_Location_Path_Nonterminal (This),
            Context_Node,
            Value);
      elsif This'Tag = Abbreviated_Relative_Location_Path_Nonterminal'Tag then
         Evaluate_Terminal
           (Abbreviated_Relative_Location_Path_Nonterminal (This),
            Context_Node,
            Value);
      elsif This'Tag = Abbreviated_Step_Base_Nonterminal1'Tag then
         Evaluate_Terminal
           (Abbreviated_Step_Base_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Abbreviated_Step_Base_Nonterminal2'Tag then
         Evaluate_Terminal
           (Abbreviated_Step_Base_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Abbreviated_Step_Nonterminal1'Tag then
         Evaluate_Terminal
           (Abbreviated_Step_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Abbreviated_Step_Nonterminal2'Tag then
         Evaluate_Terminal
           (Abbreviated_Step_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Absolute_Location_Path_Nonterminal1'Tag then
         Evaluate_Terminal
           (Absolute_Location_Path_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Absolute_Location_Path_Nonterminal2'Tag then
         Evaluate_Terminal
           (Absolute_Location_Path_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Absolute_Location_Path_Nonterminal3'Tag then
         Evaluate_Terminal
           (Absolute_Location_Path_Nonterminal3 (This),
            Context_Node,
            Value);
      elsif This'Tag = Additive_Expr_Nonterminal1'Tag then
         Evaluate_Terminal
           (Additive_Expr_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Additive_Expr_Nonterminal2'Tag then
         Evaluate_Terminal
           (Additive_Expr_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Additive_Expr_Nonterminal3'Tag then
         Evaluate_Terminal
           (Additive_Expr_Nonterminal3 (This),
            Context_Node,
            Value);
      elsif This'Tag = And_Expr_Nonterminal1'Tag then
         Evaluate_Terminal
           (And_Expr_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = And_Expr_Nonterminal2'Tag then
         Evaluate_Terminal
           (And_Expr_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Argument_Nonterminal'Tag then
         Evaluate_Terminal
           (Argument_Nonterminal (This),
            Context_Node,
            Value);
      elsif This'Tag = Arguments_Nonterminal1'Tag then
         Evaluate_Terminal
           (Arguments_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Arguments_Nonterminal2'Tag then
         Evaluate_Terminal
           (Arguments_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Arguments_Nonterminal3'Tag then
         Evaluate_Terminal
           (Arguments_Nonterminal3 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Name_Nonterminal10'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal10 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Name_Nonterminal11'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal11 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Name_Nonterminal12'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal12 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Name_Nonterminal13'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal13 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Name_Nonterminal1'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Name_Nonterminal2'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Name_Nonterminal3'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal3 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Name_Nonterminal4'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal4 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Name_Nonterminal5'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal5 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Name_Nonterminal6'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal6 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Name_Nonterminal7'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal7 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Name_Nonterminal8'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal8 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Name_Nonterminal9'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal9 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Specifier_Nonterminal'Tag then
         Evaluate_Terminal
           (Axis_Specifier_Nonterminal (This),
            Context_Node,
            Value);
      elsif This'Tag = Equality_Expr_Nonterminal1'Tag then
         Evaluate_Terminal
           (Equality_Expr_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Equality_Expr_Nonterminal2'Tag then
         Evaluate_Terminal
           (Equality_Expr_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Equality_Expr_Nonterminal3'Tag then
         Evaluate_Terminal
           (Equality_Expr_Nonterminal3 (This),
            Context_Node,
            Value);
      elsif This'Tag = Expr_Nonterminal'Tag then
         Evaluate_Terminal
           (Expr_Nonterminal (This),
            Context_Node,
            Value);
      elsif This'Tag = Filter_Expr_Nonterminal1'Tag then
         Evaluate_Terminal
           (Filter_Expr_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Filter_Expr_Nonterminal2'Tag then
         Evaluate_Terminal
           (Filter_Expr_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Function_Call_Nonterminal'Tag then
         Evaluate_Terminal
           (Function_Call_Nonterminal (This),
            Context_Node,
            Value);
      elsif This'Tag = Function_Name_Nonterminal'Tag then
         Evaluate_Terminal
           (Function_Name_Nonterminal (This),
            Context_Node,
            Value);
      elsif This'Tag = Literal_Nonterminal1'Tag then
         Evaluate_Terminal
           (Literal_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Literal_Nonterminal2'Tag then
         Evaluate_Terminal
           (Literal_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Location_Path_Nonterminal1'Tag then
         Evaluate_Terminal
           (Location_Path_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Location_Path_Nonterminal2'Tag then
         Evaluate_Terminal
           (Location_Path_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Multiplicative_Expr_Nonterminal1'Tag then
         Evaluate_Terminal
           (Multiplicative_Expr_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Multiplicative_Expr_Nonterminal2'Tag then
         Evaluate_Terminal
           (Multiplicative_Expr_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Multiplicative_Expr_Nonterminal3'Tag then
         Evaluate_Terminal
           (Multiplicative_Expr_Nonterminal3 (This),
            Context_Node,
            Value);
      elsif This'Tag = Multiplicative_Expr_Nonterminal4'Tag then
         Evaluate_Terminal
           (Multiplicative_Expr_Nonterminal4 (This),
            Context_Node,
            Value);
      elsif This'Tag = NCNAME_Or_ID_Nonterminal1'Tag then
         Evaluate_Terminal
           (NCNAME_Or_ID_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = NCNAME_Or_ID_Nonterminal2'Tag then
         Evaluate_Terminal
           (NCNAME_Or_ID_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = NCNAME_Or_ID_Nonterminal3'Tag then
         Evaluate_Terminal
           (NCNAME_Or_ID_Nonterminal3 (This),
            Context_Node,
            Value);
      elsif This'Tag = NCNAME_Or_ID_Nonterminal4'Tag then
         Evaluate_Terminal
           (NCNAME_Or_ID_Nonterminal4 (This),
            Context_Node,
            Value);
      elsif This'Tag = NCNAME_Or_ID_Nonterminal5'Tag then
         Evaluate_Terminal
           (NCNAME_Or_ID_Nonterminal5 (This),
            Context_Node,
            Value);
      elsif This'Tag = NCNAME_Or_ID_Nonterminal6'Tag then
         Evaluate_Terminal
           (NCNAME_Or_ID_Nonterminal6 (This),
            Context_Node,
            Value);
      elsif This'Tag = NCNAME_Or_ID_Nonterminal7'Tag then
         Evaluate_Terminal
           (NCNAME_Or_ID_Nonterminal7 (This),
            Context_Node,
            Value);
      elsif This'Tag = Name_Test_Nonterminal1'Tag then
         Evaluate_Terminal
           (Name_Test_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Name_Test_Nonterminal2'Tag then
         Evaluate_Terminal
           (Name_Test_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Name_Test_Nonterminal3'Tag then
         Evaluate_Terminal
           (Name_Test_Nonterminal3 (This),
            Context_Node,
            Value);
      elsif This'Tag = Node_Test_Nonterminal1'Tag then
         Evaluate_Terminal
           (Node_Test_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Node_Test_Nonterminal2'Tag then
         Evaluate_Terminal
           (Node_Test_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Node_Test_Nonterminal3'Tag then
         Evaluate_Terminal
           (Node_Test_Nonterminal3 (This),
            Context_Node,
            Value);
      elsif This'Tag = Node_Type_Nonterminal1'Tag then
         Evaluate_Terminal
           (Node_Type_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Node_Type_Nonterminal2'Tag then
         Evaluate_Terminal
           (Node_Type_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Node_Type_Nonterminal3'Tag then
         Evaluate_Terminal
           (Node_Type_Nonterminal3 (This),
            Context_Node,
            Value);
      elsif This'Tag = Node_Type_Nonterminal4'Tag then
         Evaluate_Terminal
           (Node_Type_Nonterminal4 (This),
            Context_Node,
            Value);
      elsif This'Tag = Number_Nonterminal1'Tag then
         Evaluate_Terminal
           (Number_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Number_Nonterminal2'Tag then
         Evaluate_Terminal
           (Number_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Or_Expr_Nonterminal1'Tag then
         Evaluate_Terminal
           (Or_Expr_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Or_Expr_Nonterminal2'Tag then
         Evaluate_Terminal
           (Or_Expr_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Path_Expr_Nonterminal1'Tag then
         Evaluate_Terminal
           (Path_Expr_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Path_Expr_Nonterminal2'Tag then
         Evaluate_Terminal
           (Path_Expr_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Path_Expr_Nonterminal3'Tag then
         Evaluate_Terminal
           (Path_Expr_Nonterminal3 (This),
            Context_Node,
            Value);
      elsif This'Tag = Path_Expr_Nonterminal4'Tag then
         Evaluate_Terminal
           (Path_Expr_Nonterminal4 (This),
            Context_Node,
            Value);
      elsif This'Tag = Predicate_Expr_Nonterminal'Tag then
         Evaluate_Terminal
           (Predicate_Expr_Nonterminal (This),
            Context_Node,
            Value);
      elsif This'Tag = Predicate_Nonterminal'Tag then
         Evaluate_Terminal
           (Predicate_Nonterminal (This),
            Context_Node,
            Value);
      elsif This'Tag = Predicates_Nonterminal1'Tag then
         Evaluate_Terminal
           (Predicates_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Predicates_Nonterminal2'Tag then
         Evaluate_Terminal
           (Predicates_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Primary_Expr_Nonterminal1'Tag then
         Evaluate_Terminal
           (Primary_Expr_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Primary_Expr_Nonterminal2'Tag then
         Evaluate_Terminal
           (Primary_Expr_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Primary_Expr_Nonterminal3'Tag then
         Evaluate_Terminal
           (Primary_Expr_Nonterminal3 (This),
            Context_Node,
            Value);
      elsif This'Tag = Primary_Expr_Nonterminal4'Tag then
         Evaluate_Terminal
           (Primary_Expr_Nonterminal4 (This),
            Context_Node,
            Value);
      elsif This'Tag = Primary_Expr_Nonterminal5'Tag then
         Evaluate_Terminal
           (Primary_Expr_Nonterminal5 (This),
            Context_Node,
            Value);
      elsif This'Tag = QName_Nonterminal1'Tag then
         Evaluate_Terminal
           (QName_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = QName_Nonterminal2'Tag then
         Evaluate_Terminal
           (QName_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Relational_Expr_Nonterminal1'Tag then
         Evaluate_Terminal
           (Relational_Expr_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Relational_Expr_Nonterminal2'Tag then
         Evaluate_Terminal
           (Relational_Expr_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Relational_Expr_Nonterminal3'Tag then
         Evaluate_Terminal
           (Relational_Expr_Nonterminal3 (This),
            Context_Node,
            Value);
      elsif This'Tag = Relational_Expr_Nonterminal4'Tag then
         Evaluate_Terminal
           (Relational_Expr_Nonterminal4 (This),
            Context_Node,
            Value);
      elsif This'Tag = Relational_Expr_Nonterminal5'Tag then
         Evaluate_Terminal
           (Relational_Expr_Nonterminal5 (This),
            Context_Node,
            Value);
      elsif This'Tag = Relative_Location_Path_Nonterminal1'Tag then
         Evaluate_Terminal
           (Relative_Location_Path_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Relative_Location_Path_Nonterminal2'Tag then
         Evaluate_Terminal
           (Relative_Location_Path_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Relative_Location_Path_Nonterminal3'Tag then
         Evaluate_Terminal
           (Relative_Location_Path_Nonterminal3 (This),
            Context_Node,
            Value);
      elsif This'Tag = Step_Base_Nonterminal1'Tag then
         Evaluate_Terminal
           (Step_Base_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Step_Base_Nonterminal2'Tag then
         Evaluate_Terminal
           (Step_Base_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Step_Nonterminal1'Tag then
         Evaluate_Terminal
           (Step_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Step_Nonterminal2'Tag then
         Evaluate_Terminal
           (Step_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Unary_Expr_Nonterminal1'Tag then
         Evaluate_Terminal
           (Unary_Expr_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Unary_Expr_Nonterminal2'Tag then
         Evaluate_Terminal
           (Unary_Expr_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Union_Expr_Nonterminal1'Tag then
         Evaluate_Terminal
           (Union_Expr_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Union_Expr_Nonterminal2'Tag then
         Evaluate_Terminal
           (Union_Expr_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Variable_Reference_Nonterminal'Tag then
         Evaluate_Terminal
           (Variable_Reference_Nonterminal (This),
            Context_Node,
            Value);
      end if;
   end Evaluate;

   -----------------------------------------------
   --  Special bodies

   function Evaluate_Arguments
     (This         : in     Arguments_Nonterminal'Class;
      Context_Node : in     Node_Items) return Argument_List
   is
      Value : Expression_Values;
      use Ada.Tags;
   begin
      if This'Tag = Arguments_Nonterminal1'Tag then
         return No_Arguments;
      elsif This'Tag = Arguments_Nonterminal2'Tag then
         Evaluate_Terminal
           (Argument_Nonterminal
              (Arguments_Nonterminal2 (This).Argument_Part.all),
            Context_Node,
            Value);
         return (1 => Value);
      elsif This'Tag = Arguments_Nonterminal3'Tag then
         Evaluate_Terminal
           (Argument_Nonterminal
              (Arguments_Nonterminal3 (This).Argument_Part.all),
            Context_Node,
            Value);
         return Evaluate_Arguments
           (Arguments_Nonterminal3 (This).Arguments_Part.all,
            Context_Node)
           & Value;
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Arguments_Nonterminal tag";
      end if;
   end Evaluate_Arguments;

   function Is_In (N  : Dom.Core.Node;
                   Nl : Dom.Core.Node_List) return Boolean is
      use type Dom.Core.Node;
   begin
      for I in 0 .. Dom.Core.Nodes.Length (Nl) - 1 loop
         if N = Dom.Core.Nodes.Item (Nl, I) then
            return True;
         end if;
      end loop;
      return False;
   end Is_In;

   -----------------------------------------------
   --  Local (see Processing_Instruction)

   procedure Evaluate_Terminal (This         : in     Parseable_Token;
                                Context_Node : in     Node_Items;
                                Value        :    out Expression_Values)
   is
   begin
      Value := (As_Boolean, True);
   end Evaluate_Terminal;

   -----------------------------------------------
   --  Terminal evaluators

   procedure Evaluate_Terminal
     (This         : in     Location_Path_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Predicate_Path_Nodes : Dom.Core.Node_List;
   begin
      Value := (As_Expr_Text, Null_Unbounded_String);
      Evaluate_Parent
        (Relative_Location_Path_Nonterminal
           (This.Relative_Location_Path_Part.all),
         Context_Node,
         Value);
      Predicate_Path_Nodes :=
        Xia_Worker.Xpath_Query (Context_Node.N, To_String (Value.S));
      Value := (As_Node_List, Predicate_Path_Nodes);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Location_Path_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Predicate_Path_Nodes : Dom.Core.Node_List;
   begin
      Value := (As_Expr_Text, Null_Unbounded_String);
      Evaluate_Parent
        (Absolute_Location_Path_Nonterminal
           (This.Absolute_Location_Path_Part.all),
         Context_Node,
         Value);
      Predicate_Path_Nodes :=
        Xia_Worker.Xpath_Query (Context_Node.N, To_String (Value.S));
      Value := (As_Node_List, Predicate_Path_Nodes);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Relative_Location_Path_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Step_Value : Expression_Values;
   begin
      Evaluate_Parent
        (Relative_Location_Path_Nonterminal
           (This.Relative_Location_Path_Part.all),
         Context_Node,
         Value);
      Evaluate_Parent
        (Step_Nonterminal
           (This.Step_Part.all),
         Context_Node,
         Step_Value);
      Append (Value.S, "/" & Step_Value.S);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Absolute_Location_Path_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +"/";
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Absolute_Location_Path_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Relative_Location_Path_Nonterminal
           (This.Relative_Location_Path_Part.all),
         Context_Node,
         Value);
      Value.S := "/" & Value.S;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Absolute_Location_Path_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Terminal
        (Abbreviated_Absolute_Location_Path_Nonterminal
           (This.Abbreviated_Absolute_Location_Path_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Relative_Location_Path_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Step_Nonterminal (This.Step_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Relative_Location_Path_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Terminal
        (Abbreviated_Relative_Location_Path_Nonterminal
           (This.Abbreviated_Relative_Location_Path_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Step_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Predicate_Value : Expression_Values;
   begin
      Evaluate_Parent
        (Step_Base_Nonterminal (This.Step_Base_Part.all),
         Context_Node,
         Value);
      Evaluate_Parent
        (Predicates_Nonterminal (This.Predicates_Part.all),
         Context_Node,
         Predicate_Value);
      Append (Value.S, Predicate_Value.S);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Step_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Abbreviated_Step_Nonterminal (This.Abbreviated_Step_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This : in Predicates_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        : out Expression_Values)
   is
      pragma Warnings (Off, Value);
   begin
      null;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Predicates_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Predicate_Value : Expression_Values;
   begin
      Evaluate_Parent
        (Predicates_Nonterminal (This.Predicates_Part.all),
         Context_Node,
         Value);
      Evaluate_Terminal
        (Predicate_Nonterminal
           (This.Predicate_Part.all), Context_Node, Predicate_Value);
      Append (Value.S, Predicate_Value.S);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Step_Base_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Node_Test_Value : Expression_Values;
   begin
      Evaluate_Terminal
        (Axis_Specifier_Nonterminal
           (This.Axis_Specifier_Part.all), Context_Node, Value);
      Evaluate_Parent
        (Node_Test_Nonterminal (This.Node_Test_Part.all),
         Context_Node,
         Node_Test_Value);
      Append (Value.S, Node_Test_Value.S);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Step_Base_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Abbreviated_Step_Base_Nonterminal (This.Abbreviated_Step_Base_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Abbreviated_Step_Base_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Node_Test_Nonterminal (This.Node_Test_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Abbreviated_Step_Base_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Node_Test_Nonterminal (This.Node_Test_Part.all),
         Context_Node,
         Value);
      Value.S := "@" & Value.S;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Predicate_Nonterminal;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Terminal
        (Predicate_Expr_Nonterminal (This.Predicate_Expr_Part.all),
         Context_Node,
         Value);
      Value.S := "[" & Value.S & "]";
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Axis_Specifier_Nonterminal;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Axis_Name_Nonterminal (This.Axis_Name_Part.all),
         Context_Node,
         Value);
      Append (Value.S, "::");
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +"ancestor";
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +"ancestor-or-self";
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +"attribute";
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal4;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +"child";
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal5;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +"descendant";
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal6;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +"descendant-or-self";
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal7;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +"following";
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal8;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +"following-sibling";
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal9;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +"namespace";
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal10;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +"parent";
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal11;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +"preceding";
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal12;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +"preceding-sibling";
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal13;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +"self";
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Node_Test_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Name_Test_Nonterminal (This.Name_Test_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Node_Test_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Node_Type_Nonterminal (This.Node_Type_Part.all),
         Context_Node,
         Value);
      Append (Value.S, "()");
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Node_Test_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Literal_Value : Expression_Values;
   begin
      Evaluate_Terminal
        (Parseable_Token (This.Processing_Instruction_Part.all),
         Context_Node,
         Value);
      Evaluate_Parent
        (Literal_Nonterminal (This.Literal_Part.all),
         Context_Node,
         Literal_Value);
      Append (Value.S, "(" & Literal_Value.S & ")");
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Node_Type_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +This.Comment_Part.Token_String.all;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Node_Type_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +This.Text_Part.Token_String.all;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Node_Type_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +This.Processing_Instruction_Part.Token_String.all;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Node_Type_Nonterminal4;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +This.Node_Part.Token_String.all;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Name_Test_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +"*";
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Name_Test_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Qname_Nonterminal (This.Qname_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Name_Test_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Ncname_Or_ID_Nonterminal (This.Ncname_Or_ID_Part.all),
         Context_Node,
         Value);
      Append (Value.S, ":*");
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     QName_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (NCName_Or_ID_Nonterminal (This.NCName_Or_ID_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     QName_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Part2_Value : Expression_Values;
   begin
      Evaluate_Parent
        (NCName_Or_ID_Nonterminal (This.NCName_Or_ID_Part1.all),
         Context_Node,
         Value);
      Evaluate_Parent
        (NCName_Or_ID_Nonterminal (This.NCName_Or_ID_Part2.all),
         Context_Node,
         Part2_Value);
      Append (Value.S, ":" & Part2_Value.S);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     NCNAME_Or_ID_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +This.NCName_Part.Token_String.all;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     NCNAME_Or_ID_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Axis_Name_Nonterminal (This.Axis_Name_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     NCNAME_Or_ID_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Node_Type_Nonterminal (This.Node_Type_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     NCNAME_Or_ID_Nonterminal4;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +This.And_Part.Token_String.all;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     NCNAME_Or_ID_Nonterminal5;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +This.Or_Part.Token_String.all;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     NCNAME_Or_ID_Nonterminal6;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +This.Mod_Part.Token_String.all;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     NCNAME_Or_ID_Nonterminal7;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +This.Div_Part.Token_String.all;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Predicate_Expr_Nonterminal;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      if Value.Value_Type = As_Expr_Text then
         Evaluate_Terminal
           (Expr_Nonterminal (This.Expr_Part.all),
            Context_Node,
            Value);
      else
         Evaluate_Terminal
           (Expr_Nonterminal (This.Expr_Part.all),
            Context_Node,
            Value);

         -- If this is numeric, then check to see if this node occupies
         --  the designated position
         if (Value.Value_Type = Expressions.As_Number)
           and then (Value.Special = Normal) then
            if Long_Float'Floor(Value.F) = Long_Float(Context_Node.Node_Position) then
               Value := (As_Boolean, True);
            else
               Value := (As_Boolean, False);
            end if;
         end if;
      end if;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Abbreviated_Absolute_Location_Path_Nonterminal;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Relative_Location_Path_Nonterminal (This.Relative_Location_Path_Part.all),
         Context_Node,
         Value);
      Value.S := "//" & Value.S;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Abbreviated_Relative_Location_Path_Nonterminal;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Step_Part_Value : Expression_Values;
   begin
      Evaluate_Parent
        (Relative_Location_Path_Nonterminal (This.Relative_Location_Path_Part.all),
         Context_Node,
         Value);
      Evaluate_Parent
        (Step_Nonterminal (This.Step_Part.all),
         Context_Node,
         Step_Part_Value);
      Append (Value.S, "//" & Step_Part_Value.S);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Abbreviated_Step_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +".";
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Abbreviated_Step_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Value.S := +"..";
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Expr_Nonterminal;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Or_Expr_Nonterminal (This.Or_Expr_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Primary_Expr_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Terminal
        (Variable_Reference_Nonterminal (This.Variable_Reference_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Primary_Expr_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Terminal
        (Expr_Nonterminal (This.Expr_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Primary_Expr_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Result : Expression_Values;
   begin
      Evaluate_Parent
        (Literal_Nonterminal (This.Literal_Part.all),
         Context_Node,
         Result);
      Value := (Value_Type => As_String,
                S          => Result.S);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Primary_Expr_Nonterminal4;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Result : Expression_Values;
   begin
      Evaluate_Parent
        (Number_Nonterminal (This.Number_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   exception
      when others =>
         Value  := (Value_Type => As_Number,
                    F          => 0.0,
                    Special    => NaN);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Primary_Expr_Nonterminal5;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Terminal
        (Function_Call_Nonterminal (This.Function_Call_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Variable_Reference_Nonterminal;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Result : Expression_Values;
   begin
      Evaluate_Parent
        (Qname_Nonterminal (This.Qname_Part.all),
         Context_Node,
         Result);
      Value.S := +This.Dollar_Part.Token_String.all & Result.S;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Function_Call_Nonterminal;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Function_Name : Unbounded_String;
      Args : Argument_List :=
        Evaluate_Arguments (This.Arguments_Part.all, Context_Node);
   begin
      -- Just reach down and get the function name
      Function_Name :=
        +NCName_Or_ID_Nonterminal1
          (Qname_Nonterminal1
             (This.Function_Name_Part.Qname_Part.all).NCName_Or_ID_Part.all)
            .NCName_Part.Token_String.all;

      Evaluate_Function (-Function_Name, Context_Node, Args, Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Arguments_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      --  Never called by function Evaluate_Parent
      raise Program_Error with "shouldn't be called";
      --  Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Arguments_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Terminal
        (Argument_Nonterminal (This.Argument_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Arguments_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      --  Never called by function Evaluate_Parent
      raise Program_Error with "shouldn't be called";
      --  Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Argument_Nonterminal;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Terminal
        (Expr_Nonterminal (This.Expr_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Function_Name_Nonterminal;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Qname_Nonterminal (This.Qname_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Union_Expr_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Path_Expr_Nonterminal (This.Path_Expr_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Union_Expr_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Op1, Op2 : Expression_Values;
   begin
      Evaluate_Parent
        (Union_Expr_Nonterminal (This.Union_Expr_Part.all),
         Context_Node,
         Op1);
      Evaluate_Parent
        (Path_Expr_Nonterminal (This.Path_Expr_Part.all),
         Context_Node,
         Op2);

      if Value.Value_Type = As_Expr_Text then
         Value.S := Op1.S & "|" & Op2.S;
      else
         -- Evaluate_Terminal the union of the ops
         Coerce (Op1, As_Node_List);
         Coerce (Op2, As_Node_List);

         -- Still here?  Okay, merge the two sets.
         Value := Op1;
         for I in 0 .. Dom.Core.Nodes.Length (Op2.Ns) - 1 loop
            if not Is_In (Dom.Core.Nodes.Item (Op2.Ns, I), Value.Ns) then
               Dom.Core.Append_Node (Value.Ns, Dom.Core.Nodes.Item (Op2.Ns, I));
            end if;
         end loop;
      end if;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Path_Expr_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Location_Path_Nonterminal (This.Location_Path_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Path_Expr_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Filter_Expr_Nonterminal (This.Filter_Expr_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Path_Expr_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Filter_Part : Expression_Values;
      Relative_Location_Path_Part : Expression_Values;
   begin
      Evaluate_Parent
        (Filter_Expr_Nonterminal (This.Filter_Expr_Part.all),
         Context_Node,
         Filter_Part);
      Evaluate_Parent
        (Relative_Location_Path_Nonterminal
           (This.Relative_Location_Path_Part.all),
         Context_Node,
         Relative_Location_Path_Part);
      Value.S := Filter_Part.S & "/" & Relative_Location_Path_Part.S;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Path_Expr_Nonterminal4;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Filter_Expr_Part : Expression_Values;
      Relative_Location_Path_Part : Expression_Values;
   begin
      Evaluate_Parent
        (Filter_Expr_Nonterminal (This.Filter_Expr_Part.all),
         Context_Node,
         Filter_Expr_Part);
      Evaluate_Parent
        (Relative_Location_Path_Nonterminal
           (This.Relative_Location_Path_Part.all),
         Context_Node,
         Relative_Location_Path_Part);
      Value.S := Filter_Expr_Part.S & "//" & Relative_Location_Path_Part.S;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Filter_Expr_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Primary_Expr_Nonterminal (This.Primary_Expr_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Filter_Expr_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Filter_Expr_Part : Expression_Values;
      Predicate_Part : Expression_Values;
   begin
      Evaluate_Parent
        (Filter_Expr_Nonterminal (This.Filter_Expr_Part.all),
         Context_Node,
         Filter_Expr_Part);
      Evaluate_Terminal
        (Predicate_Nonterminal (This.Predicate_Part.all),
         Context_Node,
         Predicate_Part);
      Value.S := Filter_Expr_Part.S & "[" & Predicate_Part.S & "]";
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Or_Expr_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (And_Expr_Nonterminal (This.And_Expr_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Or_Expr_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Op1, Op2 : Expression_Values;
   begin
      Evaluate_Parent
        (Or_Expr_Nonterminal (This.Or_Expr_Part.all),
         Context_Node,
         Op1);
      Evaluate_Parent
        (And_Expr_Nonterminal (This.And_Expr_Part.all),
         Context_Node,
         Op2);

      if Value.Value_Type = As_Expr_Text then
         Value.S := Op1.S & " or " & Op2.S;
      else
         Coerce (Op1, As_Boolean);
         Coerce (Op2, As_Boolean);
         Value := (Value_Type => As_Boolean,
                   B          => Op1.B or Op2.B);
      end if;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     And_Expr_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Equality_Expr_Nonterminal (This.Equality_Expr_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     And_Expr_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Op1, Op2 : Expression_Values;
   begin
      Evaluate_Parent
        (And_Expr_Nonterminal (This.And_Expr_Part.all),
         Context_Node,
         Op1);
      Evaluate_Parent
        (Equality_Expr_Nonterminal (This.Equality_Expr_Part.all),
         Context_Node,
         Op2);

      if Value.Value_Type = As_Expr_Text then
         Value.S := Op1.S & " and " & Op2.S;
      else
         Coerce (Op1, As_Boolean);
         Coerce (Op2, As_Boolean);
         Value := (Value_Type => As_Boolean,
                   B          => Op1.B and Op2.B);
      end if;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Equality_Expr_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Relational_Expr_Nonterminal (This.Relational_Expr_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Equality_Expr_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      -- EQ
      Op1, Op2 : Expression_Values;
   begin
      Evaluate_Parent
        (Equality_Expr_Nonterminal (This.Equality_Expr_Part.all),
         Context_Node,
         Op1);
      Evaluate_Parent
        (Relational_Expr_Nonterminal (This.Relational_Expr_Part.all),
         Context_Node,
         Op2);

      if Value.Value_Type = As_Expr_Text then
         Value.S := Op1.S & "=" & Op2.S;
      else
         Value := Expressions.Compare (Op1, Op2, Equal);
      end if;
      Log (This, "op1", Op1);
      Log (This, "op2", Op2);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Equality_Expr_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      -- NE
      Op1, Op2 : Expression_Values;
   begin
      Evaluate_Parent
        (Equality_Expr_Nonterminal (This.Equality_Expr_Part.all),
         Context_Node,
         Op1);
      Evaluate_Parent
        (Relational_Expr_Nonterminal (This.Relational_Expr_Part.all),
         Context_Node,
         Op2);

      if Value.Value_Type = As_Expr_Text then
         Value.S := Op1.S & "!=" & Op2.S;
      else
         Value := Expressions.Compare (Op1, Op2, Not_Equal);
      end if;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Relational_Expr_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Additive_Expr_Nonterminal (This.Additive_Expr_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Relational_Expr_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Op1, Op2 : Expression_Values;
   begin
      Evaluate_Parent
        (Relational_Expr_Nonterminal (This.Relational_Expr_Part.all),
         Context_Node,
         Op1);
      Evaluate_Parent
        (Additive_Expr_Nonterminal (This.Additive_Expr_Part.all),
         Context_Node,
         Op2);

      if Value.Value_Type = As_Expr_Text then
         Value.S := Op1.S & "<" & Op2.S;
      else
         Value := Expressions.Compare (Op1, Op2, Less_Than);
      end if;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Relational_Expr_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Op1, Op2 : Expression_Values;
   begin
      Evaluate_Parent
        (Relational_Expr_Nonterminal (This.Relational_Expr_Part.all),
         Context_Node,
         Op1);
      Evaluate_Parent
        (Additive_Expr_Nonterminal (This.Additive_Expr_Part.all),
         Context_Node,
         Op2);

      if Value.Value_Type = As_Expr_Text then
         Value.S := Op1.S & ">" & Op2.S;
      else
         Value := Expressions.Compare (Op1, Op2, Greater_Than);
      end if;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Relational_Expr_Nonterminal4;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Op1, Op2 : Expression_Values;
   begin
      Evaluate_Parent
        (Relational_Expr_Nonterminal (This.Relational_Expr_Part.all),
         Context_Node,
         Op1);
      Evaluate_Parent
        (Additive_Expr_Nonterminal (This.Additive_Expr_Part.all),
         Context_Node,
         Op2);

      if Value.Value_Type = As_Expr_Text then
         Value.S := Op1.S & "<=" & Op2.S;
      else
         Value := Expressions.Compare (Op1, Op2, Less_Or_Equal);
      end if;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Relational_Expr_Nonterminal5;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Op1, Op2 : Expression_Values;
   begin
      Evaluate_Parent
        (Relational_Expr_Nonterminal (This.Relational_Expr_Part.all),
         Context_Node,
         Op1);
      Evaluate_Parent
        (Additive_Expr_Nonterminal (This.Additive_Expr_Part.all),
         Context_Node,
         Op2);

      if Value.Value_Type = As_Expr_Text then
         Value.S := Op1.S & ">=" & Op2.S;
      else
         Value := Expressions.Compare (Op1, Op2, Greater_Or_Equal);
      end if;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Additive_Expr_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Multiplicative_Expr_Nonterminal (This.Multiplicative_Expr_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Additive_Expr_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Op1, Op2 : Expression_Values;
   begin
      Evaluate_Parent
        (Additive_Expr_Nonterminal (This.Additive_Expr_Part.all),
         Context_Node,
         Op1);
      Evaluate_Parent
        (Multiplicative_Expr_Nonterminal (This.Multiplicative_Expr_Part.all),
         Context_Node,
         Op2);

      if Value.Value_Type = As_Expr_Text then
         Value.S := Op1.S & " + " & Op2.S;
      else
         Coerce (Op1, As_Number);
         Coerce (Op2, As_Number);
         Value := Expressions.Compute (Op1, Op2, Expressions.Add);
      end if;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Additive_Expr_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Op1, Op2 : Expression_Values;
   begin
      Evaluate_Parent
        (Additive_Expr_Nonterminal (This.Additive_Expr_Part.all),
         Context_Node,
         Op1);
      Evaluate_Parent
        (Multiplicative_Expr_Nonterminal (This.Multiplicative_Expr_Part.all),
         Context_Node,
         Op2);

      if Value.Value_Type = As_Expr_Text then
         Value.S := Op1.S & " - " & Op2.S;
      else
         Coerce (Op1, As_Number);
         Coerce (Op2, As_Number);
         Value := Expressions.Compute (Op1, Op2, Expressions.Subtract);
      end if;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Multiplicative_Expr_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Unary_Expr_Nonterminal (This.Unary_Expr_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Multiplicative_Expr_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Op1, Op2 : Expression_Values;
   begin
      Evaluate_Parent
        (Multiplicative_Expr_Nonterminal (This.Multiplicative_Expr_Part.all),
         Context_Node,
         Op1);
      Evaluate_Parent
        (Unary_Expr_Nonterminal (This.Unary_Expr_Part.all),
         Context_Node,
         Op2);

      if Value.Value_Type = As_Expr_Text then
         Value.S := Op1.S & " * " & Op2.S;
      else
         Coerce (Op1, As_Number);
         Coerce (Op2, As_Number);
         Value := Expressions.Compute (Op1, Op2, Expressions.Multiply);
      end if;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Multiplicative_Expr_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Op1, Op2 : Expression_Values;
   begin
      Evaluate_Parent
        (Multiplicative_Expr_Nonterminal (This.Multiplicative_Expr_Part.all),
         Context_Node,
         Op1);
      Evaluate_Parent
        (Unary_Expr_Nonterminal (This.Unary_Expr_Part.all),
         Context_Node,
         Op2);

      if Value.Value_Type = As_Expr_Text then
         Value.S := Op1.S & " div " & Op2.S;
      else
         Coerce (Op1, As_Number);
         Coerce (Op2, As_Number);
         Value := Expressions.Compute (Op1, Op2, Expressions.Divide);
      end if;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Multiplicative_Expr_Nonterminal4;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Op1, Op2 : Expression_Values;
   begin
      Evaluate_Parent
        (Multiplicative_Expr_Nonterminal (This.Multiplicative_Expr_Part.all),
         Context_Node,
         Op1);
      Evaluate_Parent
        (Unary_Expr_Nonterminal (This.Unary_Expr_Part.all),
         Context_Node,
         Op2);

      if Value.Value_Type = As_Expr_Text then
         Value.S := Op1.S & " mod " & Op2.S;
      else
         Coerce (Op1, As_Number);
         Coerce (Op2, As_Number);
         Value := Expressions.Compute (Op1, Op2, Expressions.Modulo);
      end if;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Unary_Expr_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Union_Expr_Nonterminal (This.Union_Expr_Part.all),
         Context_Node,
         Value);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Unary_Expr_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
   begin
      Evaluate_Parent
        (Unary_Expr_Nonterminal (This.Unary_Expr_Part.all),
         Context_Node,
         Value);

      if Value.Value_Type = As_Expr_Text then
         Value.S := "-" & Value.S;
      else
         Coerce (Value, As_Number);
         Value := Expressions.Compute (Value, Value, Expressions.Negate);
      end if;
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Number_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Result : constant String
        := This.Integer_Part.Token_String.all;
   begin
      Value := (Value_Type => As_Number,
                F          => Long_Float'Value (Result),
                Special    => Normal);
   exception
      when others =>
         Value  := (Value_Type => As_Number,
                    F          => 0.0,
                    Special    => NaN);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Number_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Result : constant String
        := This.Decimal_Literal_Part.Token_String.all;
   begin
      Value := (Value_Type => As_Number,
                F          => Long_Float'Value (Result),
                Special    => Normal);
   exception
      when others =>
         Value  := (Value_Type => As_Number,
                    F          => 0.0,
                    Special    => NaN);
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Literal_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Quoted : constant String := This.DQ_Literal_Part.Token_String.all;
   begin
      Value.S := +(Quoted (Quoted'First + 1 .. Quoted'Last - 1));
      Log (This, Value);
   end Evaluate_Terminal;

   procedure Evaluate_Terminal
     (This         : in     Literal_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      Quoted : constant String := This.SQ_Literal_Part.Token_String.all;
   begin
      Value.S := +(Quoted (Quoted'First + 1 .. Quoted'Last - 1));
      Log (This, Value);
   end Evaluate_Terminal;

   ----------------------------------------
   --  parent class bodies

   procedure Evaluate_Parent
     (This         : in     Abbreviated_Step_Base_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = Abbreviated_Step_Base_Nonterminal1'Tag then
         Evaluate_Terminal
           (Abbreviated_Step_Base_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Abbreviated_Step_Base_Nonterminal2'Tag then
         Evaluate_Terminal
           (Abbreviated_Step_Base_Nonterminal2 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Abbreviated_Step_Base_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     Abbreviated_Step_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = Abbreviated_Step_Nonterminal1'Tag then
         Evaluate_Terminal
           (Abbreviated_Step_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Abbreviated_Step_Nonterminal2'Tag then
         Evaluate_Terminal
           (Abbreviated_Step_Nonterminal2 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Abbreviated_Step_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     Absolute_Location_Path_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = Absolute_Location_Path_Nonterminal1'Tag then
         Evaluate_Terminal
           (Absolute_Location_Path_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Absolute_Location_Path_Nonterminal2'Tag then
         Evaluate_Terminal
           (Absolute_Location_Path_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Absolute_Location_Path_Nonterminal3'Tag then
         Evaluate_Terminal
           (Absolute_Location_Path_Nonterminal3 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Absolute_Location_Path_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     Additive_Expr_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = Additive_Expr_Nonterminal1'Tag then
         Evaluate_Terminal
           (Additive_Expr_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Additive_Expr_Nonterminal2'Tag then
         Evaluate_Terminal
           (Additive_Expr_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Additive_Expr_Nonterminal3'Tag then
         Evaluate_Terminal
           (Additive_Expr_Nonterminal3 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Additive_Expr_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     And_Expr_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = And_Expr_Nonterminal1'Tag then
         Evaluate_Terminal
           (And_Expr_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = And_Expr_Nonterminal2'Tag then
         Evaluate_Terminal
           (And_Expr_Nonterminal2 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a And_Expr_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     Arguments_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = Arguments_Nonterminal1'Tag then
         Evaluate_Terminal
           (Arguments_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Arguments_Nonterminal2'Tag then
         Evaluate_Terminal
           (Arguments_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Arguments_Nonterminal3'Tag then
         Evaluate_Terminal
           (Arguments_Nonterminal3 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Arguments_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     Axis_Name_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = Axis_Name_Nonterminal10'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal10 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Name_Nonterminal11'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal11 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Name_Nonterminal12'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal12 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Name_Nonterminal13'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal13 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Name_Nonterminal1'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Name_Nonterminal2'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Name_Nonterminal3'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal3 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Name_Nonterminal4'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal4 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Name_Nonterminal5'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal5 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Name_Nonterminal6'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal6 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Name_Nonterminal7'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal7 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Name_Nonterminal8'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal8 (This),
            Context_Node,
            Value);
      elsif This'Tag = Axis_Name_Nonterminal9'Tag then
         Evaluate_Terminal
           (Axis_Name_Nonterminal9 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Axis_Name_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     Equality_Expr_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = Equality_Expr_Nonterminal1'Tag then
         Evaluate_Terminal
           (Equality_Expr_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Equality_Expr_Nonterminal2'Tag then
         Evaluate_Terminal
           (Equality_Expr_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Equality_Expr_Nonterminal3'Tag then
         Evaluate_Terminal
           (Equality_Expr_Nonterminal3 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Equality_Expr_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     Filter_Expr_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = Filter_Expr_Nonterminal1'Tag then
         Evaluate_Terminal
           (Filter_Expr_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Filter_Expr_Nonterminal2'Tag then
         Evaluate_Terminal
           (Filter_Expr_Nonterminal2 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Filter_Expr_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     Literal_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = Literal_Nonterminal1'Tag then
         Evaluate_Terminal
           (Literal_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Literal_Nonterminal2'Tag then
         Evaluate_Terminal
           (Literal_Nonterminal2 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Literal_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     Location_Path_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = Location_Path_Nonterminal1'Tag then
         Evaluate_Terminal
           (Location_Path_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Location_Path_Nonterminal2'Tag then
         Evaluate_Terminal
           (Location_Path_Nonterminal2 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Location_Path_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     Multiplicative_Expr_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = Multiplicative_Expr_Nonterminal1'Tag then
         Evaluate_Terminal
           (Multiplicative_Expr_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Multiplicative_Expr_Nonterminal2'Tag then
         Evaluate_Terminal
           (Multiplicative_Expr_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Multiplicative_Expr_Nonterminal3'Tag then
         Evaluate_Terminal
           (Multiplicative_Expr_Nonterminal3 (This),
            Context_Node,
            Value);
      elsif This'Tag = Multiplicative_Expr_Nonterminal4'Tag then
         Evaluate_Terminal
           (Multiplicative_Expr_Nonterminal4 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Multiplicative_Expr_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     NCNAME_Or_ID_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = NCNAME_Or_ID_Nonterminal1'Tag then
         Evaluate_Terminal
           (NCNAME_Or_ID_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = NCNAME_Or_ID_Nonterminal2'Tag then
         Evaluate_Terminal
           (NCNAME_Or_ID_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = NCNAME_Or_ID_Nonterminal3'Tag then
         Evaluate_Terminal
           (NCNAME_Or_ID_Nonterminal3 (This),
            Context_Node,
            Value);
      elsif This'Tag = NCNAME_Or_ID_Nonterminal4'Tag then
         Evaluate_Terminal
           (NCNAME_Or_ID_Nonterminal4 (This),
            Context_Node,
            Value);
      elsif This'Tag = NCNAME_Or_ID_Nonterminal5'Tag then
         Evaluate_Terminal
           (NCNAME_Or_ID_Nonterminal5 (This),
            Context_Node,
            Value);
      elsif This'Tag = NCNAME_Or_ID_Nonterminal6'Tag then
         Evaluate_Terminal
           (NCNAME_Or_ID_Nonterminal6 (This),
            Context_Node,
            Value);
      elsif This'Tag = NCNAME_Or_ID_Nonterminal7'Tag then
         Evaluate_Terminal
           (NCNAME_Or_ID_Nonterminal7 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a NCNAME_Or_ID_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     Name_Test_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = Name_Test_Nonterminal1'Tag then
         Evaluate_Terminal
           (Name_Test_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Name_Test_Nonterminal2'Tag then
         Evaluate_Terminal
           (Name_Test_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Name_Test_Nonterminal3'Tag then
         Evaluate_Terminal
           (Name_Test_Nonterminal3 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Name_Test_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     Node_Test_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = Node_Test_Nonterminal1'Tag then
         Evaluate_Terminal
           (Node_Test_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Node_Test_Nonterminal2'Tag then
         Evaluate_Terminal
           (Node_Test_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Node_Test_Nonterminal3'Tag then
         Evaluate_Terminal
           (Node_Test_Nonterminal3 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Node_Test_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     Node_Type_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = Node_Type_Nonterminal1'Tag then
         Evaluate_Terminal
           (Node_Type_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Node_Type_Nonterminal2'Tag then
         Evaluate_Terminal
           (Node_Type_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Node_Type_Nonterminal3'Tag then
         Evaluate_Terminal
           (Node_Type_Nonterminal3 (This),
            Context_Node,
            Value);
      elsif This'Tag = Node_Type_Nonterminal4'Tag then
         Evaluate_Terminal
           (Node_Type_Nonterminal4 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Node_Type_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     Number_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = Number_Nonterminal1'Tag then
         Evaluate_Terminal
           (Number_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Number_Nonterminal2'Tag then
         Evaluate_Terminal
           (Number_Nonterminal2 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Number_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     Or_Expr_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = Or_Expr_Nonterminal1'Tag then
         Evaluate_Terminal
           (Or_Expr_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Or_Expr_Nonterminal2'Tag then
         Evaluate_Terminal
           (Or_Expr_Nonterminal2 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Or_Expr_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     Path_Expr_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = Path_Expr_Nonterminal1'Tag then
         Evaluate_Terminal
           (Path_Expr_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Path_Expr_Nonterminal2'Tag then
         Evaluate_Terminal
           (Path_Expr_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Path_Expr_Nonterminal3'Tag then
         Evaluate_Terminal
           (Path_Expr_Nonterminal3 (This),
            Context_Node,
            Value);
      elsif This'Tag = Path_Expr_Nonterminal4'Tag then
         Evaluate_Terminal
           (Path_Expr_Nonterminal4 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Path_Expr_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     Predicates_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = Predicates_Nonterminal1'Tag then
         Evaluate_Terminal
           (Predicates_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Predicates_Nonterminal2'Tag then
         Evaluate_Terminal
           (Predicates_Nonterminal2 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Predicates_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     Primary_Expr_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = Primary_Expr_Nonterminal1'Tag then
         Evaluate_Terminal
           (Primary_Expr_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Primary_Expr_Nonterminal2'Tag then
         Evaluate_Terminal
           (Primary_Expr_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Primary_Expr_Nonterminal3'Tag then
         Evaluate_Terminal
           (Primary_Expr_Nonterminal3 (This),
            Context_Node,
            Value);
      elsif This'Tag = Primary_Expr_Nonterminal4'Tag then
         Evaluate_Terminal
           (Primary_Expr_Nonterminal4 (This),
            Context_Node,
            Value);
      elsif This'Tag = Primary_Expr_Nonterminal5'Tag then
         Evaluate_Terminal
           (Primary_Expr_Nonterminal5 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Primary_Expr_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     QName_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = QName_Nonterminal1'Tag then
         Evaluate_Terminal
           (QName_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = QName_Nonterminal2'Tag then
         Evaluate_Terminal
           (QName_Nonterminal2 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a QName_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     Relational_Expr_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = Relational_Expr_Nonterminal1'Tag then
         Evaluate_Terminal
           (Relational_Expr_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Relational_Expr_Nonterminal2'Tag then
         Evaluate_Terminal
           (Relational_Expr_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Relational_Expr_Nonterminal3'Tag then
         Evaluate_Terminal
           (Relational_Expr_Nonterminal3 (This),
            Context_Node,
            Value);
      elsif This'Tag = Relational_Expr_Nonterminal4'Tag then
         Evaluate_Terminal
           (Relational_Expr_Nonterminal4 (This),
            Context_Node,
            Value);
      elsif This'Tag = Relational_Expr_Nonterminal5'Tag then
         Evaluate_Terminal
           (Relational_Expr_Nonterminal5 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Relational_Expr_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     Relative_Location_Path_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = Relative_Location_Path_Nonterminal1'Tag then
         Evaluate_Terminal
           (Relative_Location_Path_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Relative_Location_Path_Nonterminal2'Tag then
         Evaluate_Terminal
           (Relative_Location_Path_Nonterminal2 (This),
            Context_Node,
            Value);
      elsif This'Tag = Relative_Location_Path_Nonterminal3'Tag then
         Evaluate_Terminal
           (Relative_Location_Path_Nonterminal3 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Relative_Location_Path_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     Step_Base_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = Step_Base_Nonterminal1'Tag then
         Evaluate_Terminal
           (Step_Base_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Step_Base_Nonterminal2'Tag then
         Evaluate_Terminal
           (Step_Base_Nonterminal2 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Step_Base_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     Step_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = Step_Nonterminal1'Tag then
         Evaluate_Terminal
           (Step_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Step_Nonterminal2'Tag then
         Evaluate_Terminal
           (Step_Nonterminal2 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Step_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     Unary_Expr_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = Unary_Expr_Nonterminal1'Tag then
         Evaluate_Terminal
           (Unary_Expr_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Unary_Expr_Nonterminal2'Tag then
         Evaluate_Terminal
           (Unary_Expr_Nonterminal2 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Unary_Expr_Nonterminal tag";
      end if;
   end Evaluate_Parent;

   procedure Evaluate_Parent
     (This         : in     Union_Expr_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   is
      use Ada.Tags;
   begin
      Log (This);
      if This'Tag = Union_Expr_Nonterminal1'Tag then
         Evaluate_Terminal
           (Union_Expr_Nonterminal1 (This),
            Context_Node,
            Value);
      elsif This'Tag = Union_Expr_Nonterminal2'Tag then
         Evaluate_Terminal
           (Union_Expr_Nonterminal2 (This),
            Context_Node,
            Value);
      else
         raise Constraint_Error
           with Expanded_Name (This'Tag) & " not a Union_Expr_Nonterminal tag";
      end if;
   end Evaluate_Parent;

end Mckae.Xml.Xpath.Predicates.Evaluation.Evaluators;
