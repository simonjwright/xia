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

with Xpath_Model;
with Xpath_Visitor_Interface;

with McKae.XML.XPath.Expressions; use McKae.XML.XPath.Expressions;
with Mckae.XML.XPath.Locations; use Mckae.XML.Xpath.Locations;
with Mckae.XML.XPath.Predicates; use Mckae.XML.XPath.Predicates;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Tags;

with Ada.Text_IO;

package body McKae.XML.XPath.DFS_Processing is

   function "+" (S : String) return Unbounded_String
                renames To_Unbounded_String;

   function "-" (U : Unbounded_String) return String
                 renames To_String;

   function Get_Axis (This : Axis_Name_Nonterminal'Class)
                     return Axes is
      use Ada.Tags;
   begin
      return
        (if This'Tag = Axis_Name_Nonterminal1'Tag then
             Ancestor_Axis
          elsif This'Tag = Axis_Name_Nonterminal2'Tag then
             Ancestor_Or_Self_Axis
          elsif This'Tag = Axis_Name_Nonterminal3'Tag then
             Attribute_Axis
          elsif This'Tag = Axis_Name_Nonterminal4'Tag then
             Child_Axis
          elsif This'Tag = Axis_Name_Nonterminal5'Tag then
             Descendant_Axis
          elsif This'Tag = Axis_Name_Nonterminal6'Tag then
             Descendant_Or_Self_Axis
          elsif This'Tag = Axis_Name_Nonterminal7'Tag then
             Following_Axis
          elsif This'Tag = Axis_Name_Nonterminal8'Tag then
             Following_Sibling_Axis
          elsif This'Tag = Axis_Name_Nonterminal9'Tag then
             Namespace_Axis
          elsif This'Tag = Axis_Name_Nonterminal10'Tag then
             Parent_Axis
          elsif This'Tag = Axis_Name_Nonterminal11'Tag then
             Preceding_Axis
          elsif This'Tag = Axis_Name_Nonterminal12'Tag then
             Preceding_Sibling_Axis
          elsif This'Tag = Axis_Name_Nonterminal13'Tag then
             Self_Axis
          else
             raise  Constraint_Error
               with Expanded_Name (This'Tag) & " not an Axis tag");
   end Get_Axis;

   function Get_Axis_Name (This : Axis_Name_Nonterminal'Class)
                          return Unbounded_String
   is
      use Ada.Tags;
   begin
      return
        +(if This'Tag = Axis_Name_Nonterminal1'Tag then
             Axis_Name_Nonterminal1 (This).Ancestor_Part.Token_String.all
          elsif This'Tag = Axis_Name_Nonterminal2'Tag then
             Axis_Name_Nonterminal2 (This).Ancestor_Or_Self_Part.Token_String.all
          elsif This'Tag = Axis_Name_Nonterminal3'Tag then
             Axis_Name_Nonterminal3 (This).Attribute_Part.Token_String.all
          elsif This'Tag = Axis_Name_Nonterminal4'Tag then
             Axis_Name_Nonterminal4 (This).Child_Part.Token_String.all
          elsif This'Tag = Axis_Name_Nonterminal5'Tag then
             Axis_Name_Nonterminal5 (This).Descendant_Part.Token_String.all
          elsif This'Tag = Axis_Name_Nonterminal6'Tag then
             Axis_Name_Nonterminal6 (This).Descendant_Or_Self_Part.Token_String.all
          elsif This'Tag = Axis_Name_Nonterminal7'Tag then
             Axis_Name_Nonterminal7 (This).Following_Part.Token_String.all
          elsif This'Tag = Axis_Name_Nonterminal8'Tag then
             Axis_Name_Nonterminal8 (This).Following_Sibling_Part.Token_String.all
          elsif This'Tag = Axis_Name_Nonterminal9'Tag then
             Axis_Name_Nonterminal9 (This).Namespace_Part.Token_String.all
          elsif This'Tag = Axis_Name_Nonterminal10'Tag then
             Axis_Name_Nonterminal10 (This).Parent_Part.Token_String.all
          elsif This'Tag = Axis_Name_Nonterminal11'Tag then
             Axis_Name_Nonterminal11 (This).Preceding_Part.Token_String.all
          elsif This'Tag = Axis_Name_Nonterminal12'Tag then
             Axis_Name_Nonterminal12 (This).Preceding_Sibling_Part.Token_String.all
          elsif This'Tag = Axis_Name_Nonterminal13'Tag then
             Axis_Name_Nonterminal13 (This).Self_Part.Token_String.all
          else
             raise  Constraint_Error
               with Expanded_Name (This'Tag) & " not an Axis tag");
   end Get_Axis_Name;

   function Get_Node_Type_Name (This : Node_Type_Nonterminal'Class)
                               return Unbounded_String
   is
      use Ada.Tags;
   begin
      return
        +(if This'Tag = Node_Type_Nonterminal1'Tag then
             Node_Type_Nonterminal1 (This).Comment_Part.Token_String.all
          elsif This'Tag = Node_Type_Nonterminal2'Tag then
             Node_Type_Nonterminal2 (This).Text_Part.Token_String.all
          elsif This'Tag = Node_Type_Nonterminal3'Tag then
             Node_Type_Nonterminal3 (This).Processing_Instruction_Part.Token_String.all
          elsif This'Tag = Node_Type_Nonterminal4'Tag then
             Node_Type_Nonterminal4 (This).Node_Part.Token_String.all
          else
             raise  Constraint_Error
               with Expanded_Name (This'Tag) & " not a Node_Type tag");
   end Get_Node_Type_Name;

   function Get_Node_Type_Test (This : Node_Type_Nonterminal'Class)
                               return Specifiable_Node_Tests
   is
      use Ada.Tags;
   begin
      return
        (if This'Tag = Node_Type_Nonterminal1'Tag then
             Comment_Node_Test
          elsif This'Tag = Node_Type_Nonterminal2'Tag then
             Text_Node_Test
          elsif This'Tag = Node_Type_Nonterminal3'Tag then
             Processing_Instruction_Node_Test
          elsif This'Tag = Node_Type_Nonterminal4'Tag then
             Node_Node_Test
          else
             raise  Program_Error
               with Expanded_Name (This'Tag) & " not acceptable here");
   end Get_Node_Type_Test;

   function Get_Literal (This : Literal_Nonterminal'Class)
                        return Unbounded_String is
      use Ada.Tags;
      Quoted : constant String :=
        (if This'Tag = Literal_Nonterminal1'Tag then
            Literal_Nonterminal1(This).DQ_Literal_Part.Token_String.all
         elsif This'Tag = Literal_Nonterminal2'Tag then
            Literal_Nonterminal2(This).SQ_Literal_Part.Token_String.all
         else
            raise  Constraint_Error
              with Expanded_Name (This'Tag) & " not a Literal tag");
   begin
      return
        +(Quoted (Quoted'First + 1 .. Quoted'Last - 1));
   end Get_Literal;

   Star : constant Unbounded_String := To_Unbounded_String("*");

   -- Location step under construction
   subtype Restricted_Location_Steps
     is Location_Steps
   with Predicate =>
     Restricted_Location_Steps.Location_Predicates.Is_Empty;
   Location_Step : Restricted_Location_Steps;

   Empty_Location_Step : constant Location_Steps := (others => <>);

   procedure Reset is
   begin
      Predicates.Release (Location_Step.Location_Predicates);
      Location_Step := Empty_Location_Step;
      pragma Debug (Ada.Text_IO.Put_Line ("resetting"));
   end Reset;

   procedure Visit_Parseable_Token
     (I : access DFS;
      T : access xpath_Model.Parseable_Token'Class) is
   begin
      null;
   end Visit_Parseable_Token;

   procedure After_Literal_Nonterminal1
     (I : access DFS;
      T : access Literal_Nonterminal1'Class) is
   begin
      null;
   end After_Literal_Nonterminal1;

   procedure After_Literal_Nonterminal2
     (I : access DFS;
      T : access Literal_Nonterminal2'Class) is
   begin
      null;
   end After_Literal_Nonterminal2;

   procedure After_Number_Nonterminal1
     (I : access DFS;
      T : access Number_Model.Number_Nonterminal1'Class) is
   begin
      null;
   end After_Number_Nonterminal1;

   overriding procedure After_Number_Nonterminal2
     (I : access DFS;
      T : access Number_Model.Number_Nonterminal2'Class) is
   begin
      null;
   end After_Number_Nonterminal2;

   procedure After_Unary_Expr_Nonterminal1
     (I : access DFS;
      T : access Unary_Expr_Nonterminal1'Class) is
   begin
      null;
   end After_Unary_Expr_Nonterminal1;

   procedure After_Unary_Expr_Nonterminal2
     (I : access DFS;
      T : access Unary_Expr_Nonterminal2'Class) is
   begin
      null;
   end After_Unary_Expr_Nonterminal2;

   procedure After_Multiplicative_Expr_Nonterminal1
     (I : access DFS;
      T : access Multiplicative_Expr_Nonterminal1'Class) is
   begin
      null;
   end After_Multiplicative_Expr_Nonterminal1;

   procedure After_Multiplicative_Expr_Nonterminal2
     (I : access DFS;
      T : access Multiplicative_Expr_Nonterminal2'Class) is
   begin
      null;
   end After_Multiplicative_Expr_Nonterminal2;

   procedure After_Multiplicative_Expr_Nonterminal3
     (I : access DFS;
      T : access Multiplicative_Expr_Nonterminal3'Class) is
   begin
      null;
   end After_Multiplicative_Expr_Nonterminal3;

   procedure After_Multiplicative_Expr_Nonterminal4
     (I : access DFS;
      T : access Multiplicative_Expr_Nonterminal4'Class) is
   begin
      null;
   end After_Multiplicative_Expr_Nonterminal4;

   procedure After_Additive_Expr_Nonterminal1
     (I : access DFS;
      T : access Additive_Expr_Nonterminal1'Class) is
   begin
      null;
   end After_Additive_Expr_Nonterminal1;

   procedure After_Additive_Expr_Nonterminal2
     (I : access DFS;
      T : access Additive_Expr_Nonterminal2'Class) is
   begin
      null;
   end After_Additive_Expr_Nonterminal2;

   procedure After_Additive_Expr_Nonterminal3
     (I : access DFS;
      T : access Additive_Expr_Nonterminal3'Class) is
   begin
      null;
   end After_Additive_Expr_Nonterminal3;

   procedure After_Relational_Expr_Nonterminal1
     (I : access DFS;
      T : access Relational_Expr_Nonterminal1'Class) is
   begin
      null;
   end After_Relational_Expr_Nonterminal1;

   procedure After_Relational_Expr_Nonterminal2
     (I : access DFS;
      T : access Relational_Expr_Nonterminal2'Class) is
   begin
      null;
   end After_Relational_Expr_Nonterminal2;

   procedure After_Relational_Expr_Nonterminal3
     (I : access DFS;
      T : access Relational_Expr_Nonterminal3'Class) is
   begin
      null;
   end After_Relational_Expr_Nonterminal3;

   procedure After_Relational_Expr_Nonterminal4
     (I : access DFS;
      T : access Relational_Expr_Nonterminal4'Class) is
   begin
      null;
   end After_Relational_Expr_Nonterminal4;

   procedure After_Relational_Expr_Nonterminal5
     (I : access DFS;
      T : access Relational_Expr_Nonterminal5'Class) is
   begin
      null;
   end After_Relational_Expr_Nonterminal5;

   procedure After_Equality_Expr_Nonterminal1
     (I : access DFS;
      T : access Equality_Expr_Nonterminal1'Class) is
   begin
      null;
   end After_Equality_Expr_Nonterminal1;

   procedure After_Equality_Expr_Nonterminal2
     (I : access DFS;
      T : access Equality_Expr_Nonterminal2'Class) is
   begin
      null;
   end After_Equality_Expr_Nonterminal2;

   procedure After_Equality_Expr_Nonterminal3
     (I : access DFS;
      T : access Equality_Expr_Nonterminal3'Class) is
   begin
      null;
   end After_Equality_Expr_Nonterminal3;

   procedure After_And_Expr_Nonterminal1
     (I : access DFS;
      T : access And_Expr_Nonterminal1'Class) is
   begin
      null;
   end After_And_Expr_Nonterminal1;

   procedure After_And_Expr_Nonterminal2
     (I : access DFS;
      T : access And_Expr_Nonterminal2'Class) is
   begin
      null;
   end After_And_Expr_Nonterminal2;

   procedure After_Or_Expr_Nonterminal1
     (I : access DFS;
      T : access Or_Expr_Nonterminal1'Class) is
   begin
      null;
   end After_Or_Expr_Nonterminal1;

   procedure After_Or_Expr_Nonterminal2
     (I : access DFS;
      T : access Or_Expr_Nonterminal2'Class) is
   begin
      null;
   end After_Or_Expr_Nonterminal2;

   procedure After_Filter_Expr_Nonterminal1
     (I : access DFS;
      T : access Filter_Expr_Nonterminal1'Class) is
   begin
      null;
   end After_Filter_Expr_Nonterminal1;

   procedure After_Filter_Expr_Nonterminal2
     (I : access DFS;
      T : access Filter_Expr_Nonterminal2'Class) is
   begin
      null;
   end After_Filter_Expr_Nonterminal2;

   procedure After_Path_Expr_Nonterminal1
     (I : access DFS;
      T : access Path_Expr_Nonterminal1'Class) is
   begin
      null;
   end After_Path_Expr_Nonterminal1;

   procedure After_Path_Expr_Nonterminal2
     (I : access DFS;
      T : access Path_Expr_Nonterminal2'Class) is
   begin
      null;
   end After_Path_Expr_Nonterminal2;

   procedure After_Path_Expr_Nonterminal3
     (I : access DFS;
      T : access Path_Expr_Nonterminal3'Class) is
   begin
      null;
   end After_Path_Expr_Nonterminal3;

   procedure After_Path_Expr_Nonterminal4
     (I : access DFS;
      T : access Path_Expr_Nonterminal4'Class) is
   begin
      null;
   end After_Path_Expr_Nonterminal4;

   procedure After_Union_Expr_Nonterminal1
     (I : access DFS;
      T : access Union_Expr_Nonterminal1'Class) is
   begin
      null;
   end After_Union_Expr_Nonterminal1;

   procedure After_Union_Expr_Nonterminal2
     (I : access DFS;
      T : access Union_Expr_Nonterminal2'Class) is
   begin
      null;
   end After_Union_Expr_Nonterminal2;

   procedure After_Function_Name_Nonterminal
     (I : access DFS;
      T : access Function_Name_Nonterminal'Class) is
   begin
      null;
   end After_Function_Name_Nonterminal;

   procedure After_Argument_Nonterminal
     (I : access DFS;
      T : access Argument_Nonterminal'Class) is
   begin
      null;
   end After_Argument_Nonterminal;

   procedure After_Arguments_Nonterminal1
     (I : access DFS;
      T : access Arguments_Nonterminal1'Class) is
   begin
      null;
   end After_Arguments_Nonterminal1;

   procedure After_Arguments_Nonterminal2
     (I : access DFS;
      T : access Arguments_Nonterminal2'Class) is
   begin
      null;
   end After_Arguments_Nonterminal2;

   procedure After_Arguments_Nonterminal3
     (I : access DFS;
      T : access Arguments_Nonterminal3'Class) is
   begin
      null;
   end After_Arguments_Nonterminal3;

   procedure After_Function_Call_Nonterminal
     (I : access DFS;
      T : access Function_Call_Nonterminal'Class) is
   begin
      null;
   end After_Function_Call_Nonterminal;

   procedure After_Variable_Reference_Nonterminal
     (I : access DFS;
      T : access Variable_Reference_Nonterminal'Class) is
   begin
      null;
   end After_Variable_Reference_Nonterminal;

   procedure After_Primary_Expr_Nonterminal1
     (I : access DFS;
      T : access Primary_Expr_Nonterminal1'Class) is
   begin
      null;
   end After_Primary_Expr_Nonterminal1;

   procedure After_Primary_Expr_Nonterminal2
     (I : access DFS;
      T : access Primary_Expr_Nonterminal2'Class) is
   begin
      Add ((Axis                => Self_Axis,
            Node_Test           => (Node_Test => Expression_Node_Test,
                                    Name      => Null_Unbounded_String),
            Location_Predicates => Predicates.Null_Predicate,
            Output_Step         => False));
      Reset;
   end After_Primary_Expr_Nonterminal2;

   procedure After_Primary_Expr_Nonterminal3
     (I : access DFS;
      T : access Primary_Expr_Nonterminal3'Class) is
   begin
      null;
   end After_Primary_Expr_Nonterminal3;

   procedure After_Primary_Expr_Nonterminal4
     (I : access DFS;
      T : access Primary_Expr_Nonterminal4'Class) is
   begin
      null;
   end After_Primary_Expr_Nonterminal4;

   procedure After_Primary_Expr_Nonterminal5
     (I : access DFS;
      T : access Primary_Expr_Nonterminal5'Class) is
   begin
      null;
   end After_Primary_Expr_Nonterminal5;

   procedure After_Expr_Nonterminal
     (I : access DFS;
      T : access Expr_Nonterminal'Class) is
   begin
      null;
   end After_Expr_Nonterminal;

   --  To be called within "pragma Debug" to output the content of a
   --  Node_Test_Specification 'Object' as set in a Syntax_Rule.
   procedure Debug_Print (Syntax_Rule : String;
                          Object      : Node_Test_Specification)
   is
   begin
      Ada.Text_IO.Put_Line (Syntax_Rule & ": " & Image (Object));
   end Debug_Print;

   procedure After_Abbreviated_Step_Nonterminal1
     (I : access DFS;
      T : access Abbreviated_Step_Nonterminal1'Class) is
   begin
      Location_Step := (Axis                => Self_Axis,
                        Node_Test           => (Node_Test => Node_Node_Test,
                                                Name      => Star),
                        Location_Predicates => Predicates.Null_Predicate,
                        Output_Step         => False);
      pragma Debug
        (Debug_Print
           ("Abbreviated_Step_Nonterminal1", Location_Step.Node_Test));
   end After_Abbreviated_Step_Nonterminal1;

   procedure After_Abbreviated_Step_Nonterminal2
     (I : access DFS;
      T : access Abbreviated_Step_Nonterminal2'Class) is
   begin
      Location_Step := (Axis                => Parent_Axis,
                        Node_Test           => (Node_Test => Node_Node_Test,
                                                Name      => Star),
                        Location_Predicates => Predicates.Null_Predicate,
                        Output_Step         => False);
      pragma Debug
        (Debug_Print
           ("Abbreviated_Step_Nonterminal2", Location_Step.Node_Test));
   end After_Abbreviated_Step_Nonterminal2;

   procedure After_Abbreviated_Relative_Location_Path_Nonterminal
     (I : access DFS;
      T : access Abbreviated_Relative_Location_Path_Nonterminal'Class) is
   begin
      --  The rule is Relative_Location_Path Double_Slash Step
      null;
   end After_Abbreviated_Relative_Location_Path_Nonterminal;

   procedure After_Abbreviated_Absolute_Location_Path_Nonterminal
     (I : access DFS;
      T : access Abbreviated_Absolute_Location_Path_Nonterminal'Class) is
   begin
      --  The rule is Double_Slash Relative_Location_Path
      null;
   end After_Abbreviated_Absolute_Location_Path_Nonterminal;

   procedure After_Double_Slash_nonterminal
     (I : access DFS;
      T : access Double_Slash_Nonterminal'Class) is
   begin
      Add ((Axis                => Descendant_Or_Self_Axis,
            Node_Test           => (Node_Test => Node_Node_Test,
                                    Name      => Star),
            Location_Predicates => Predicates.Null_Predicate,
            Output_Step         => False));
      Reset;
   end After_Double_Slash_nonterminal;

   procedure After_Predicate_Expr_Nonterminal
     (I : access DFS;
      T : access Predicate_Expr_Nonterminal'Class) is
   begin
      Add_Predicate (T.Expr_Part);
   end After_Predicate_Expr_Nonterminal;

   procedure After_NCNAME_Or_ID_Nonterminal1
     (I : access DFS;
      T : access NCNAME_Or_ID_Nonterminal1'Class) is
   begin
      Location_Step.Node_Test :=
        (Node_Test => NCName_Node_Test,
         Name      => +T.NCName_Part.Token_String.all);
      pragma Debug
        (Debug_Print ("NCNAME_Or_ID_Nonterminal1", Location_Step.Node_Test));
   end After_NCNAME_Or_ID_Nonterminal1;

   procedure After_NCNAME_Or_ID_Nonterminal2
     (I : access DFS;
      T : access NCNAME_Or_ID_Nonterminal2'Class) is
   begin
      Location_Step.Node_Test :=
        (Node_Test => NCName_Node_Test,
         Name      => Get_Axis_Name (T.Axis_Name_Part.all));
      pragma Debug
        (Debug_Print ("NCNAME_Or_ID_Nonterminal2", Location_Step.Node_Test));
   end After_NCNAME_Or_ID_Nonterminal2;

   procedure After_NCNAME_Or_ID_Nonterminal3
     (I : access DFS;
      T : access NCNAME_Or_ID_Nonterminal3'Class) is
   begin
      --  The rule is Node_Type; included here because it's not to be
      --  recognused as a token in this context (spec para 3.7).
      Location_Step.Node_Test :=
        (Node_Test => NCName_Node_Test,
         Name      => Get_Node_Type_Name (T.Node_Type_Part.all));
      pragma Debug
        (Debug_Print ("NCNAME_Or_ID_Nonterminal3", Location_Step.Node_Test));
   end After_NCNAME_Or_ID_Nonterminal3;

   procedure After_NCNAME_Or_ID_Nonterminal4
     (I : access DFS;
      T : access NCNAME_Or_ID_Nonterminal4'Class) is
   begin
      Location_Step.Node_Test := (Node_Test => NCName_Node_Test,
                                  Name      => +T.And_Part.Token_String.all);
      pragma Debug
        (Debug_Print ("NCNAME_Or_ID_Nonterminal4", Location_Step.Node_Test));
   end After_NCNAME_Or_ID_Nonterminal4;

   procedure After_NCNAME_Or_ID_Nonterminal5
     (I : access DFS;
      T : access NCNAME_Or_ID_Nonterminal5'Class) is
   begin
      Location_Step.Node_Test := (Node_Test => NCName_Node_Test,
                                  Name      => +T.Or_Part.Token_String.all);
      pragma Debug
        (Debug_Print ("NCNAME_Or_ID_Nonterminal5", Location_Step.Node_Test));
   end After_NCNAME_Or_ID_Nonterminal5;

   procedure After_NCNAME_Or_ID_Nonterminal6
     (I : access DFS;
      T : access NCNAME_Or_ID_Nonterminal6'Class) is
   begin
      Location_Step.Node_Test := (Node_Test => NCName_Node_Test,
                                  Name      => +T.Mod_Part.Token_String.all);
      pragma Debug
        (Debug_Print ("NCNAME_Or_ID", Location_Step.Node_Test));
   end After_NCNAME_Or_ID_Nonterminal6;

   procedure After_NCNAME_Or_ID_Nonterminal7
     (I : access DFS;
      T : access NCNAME_Or_ID_Nonterminal7'Class) is
   begin
      Location_Step.Node_Test := (Node_Test => NCName_Node_Test,
                                  Name      => +T.Div_Part.Token_String.all);
      pragma Debug
        (Debug_Print ("NCNAME_Or_ID_Nonterminal7", Location_Step.Node_Test));
   end After_NCNAME_Or_ID_Nonterminal7;

   procedure After_QName_Nonterminal1
     (I : access DFS;
      T : access QName_Nonterminal1'Class) is
   begin
      --  Rule is NCNAME_Or_ID
      null;
   end After_QName_Nonterminal1;

   procedure After_QName_Nonterminal2
     (I : access DFS;
      T : access QName_Nonterminal2'Class) is
   begin
      --  Rule is NCNAME_Or_ID COLON NCNAME_Or_ID
      Location_Step.Node_Test :=
        (Node_Test => QName_Node_Test,
         Name      => +NCNAME_Or_ID_Nonterminal1
           (T.NCName_Or_ID_Part2.all).NCName_Part.Token_String.all,
         Prefix    => +NCNAME_Or_ID_Nonterminal1
           (T.NCName_Or_ID_Part1.all).NCName_Part.Token_String.all);
      pragma Debug
        (Debug_Print ("QName_Nonterminal2", Location_Step.Node_Test));
   end After_QName_Nonterminal2;

   procedure After_Name_Test_Nonterminal1
     (I : access DFS;
      T : access Name_Test_Nonterminal1'Class) is
   begin
      --  Rule is STAR
      Location_Step :=
        (Axis                => Descendant_Or_Self_Axis,
         Node_Test           => (Node_Test => NCName_Node_Test,
                                 Name      => Star),
         Location_Predicates => Predicates.Null_Predicate,
         Output_Step         => False);
      pragma Debug
        (Debug_Print ("Name_Test_Nonterminal1", Location_Step.Node_Test));
   end After_Name_Test_Nonterminal1;

   procedure After_Name_Test_Nonterminal2
     (I : access DFS;
      T : access Name_Test_Nonterminal2'Class) is
   begin
      --  Rule is Qname
      null;
   end After_Name_Test_Nonterminal2;

   procedure After_Name_Test_Nonterminal3
     (I : access DFS;
      T : access Name_Test_Nonterminal3'Class) is
   begin
      --  Rule is NCNAME_Or_ID COLON STAR
      --  I don't understand this one! XXX
      null;
      pragma Assert (False, "Name_Test(3) not implemented");
   end After_Name_Test_Nonterminal3;

   procedure After_Node_Type_Nonterminal1
     (I : access DFS;
      T : access Node_Type_Nonterminal1'Class) is
   begin
      Location_Step.Node_Test := (Node_Test => Comment_Node_Test,
                                  Name      => Null_Unbounded_String);
      pragma Debug
        (Debug_Print ("Node_Type_Nonterminal1", Location_Step.Node_Test));
   end After_Node_Type_Nonterminal1;

   procedure After_Node_Type_Nonterminal2
     (I : access DFS;
      T : access Node_Type_Nonterminal2'Class) is
   begin
      Location_Step.Node_Test := (Node_Test => Text_Node_Test,
                                  Name      => Null_Unbounded_String);
      pragma Debug
        (Debug_Print ("Node_Type_Nonterminal2", Location_Step.Node_Test));
   end After_Node_Type_Nonterminal2;

   procedure After_Node_Type_Nonterminal3
     (I : access DFS;
      T : access Node_Type_Nonterminal3'Class) is
   begin
      Location_Step.Node_Test := (Node_Test => Processing_Instruction_Node_Test,
                                  Name      => Null_Unbounded_String);
      pragma Debug
        (Debug_Print ("Node_Type_Nonterminal3", Location_Step.Node_Test));
   end After_Node_Type_Nonterminal3;

   procedure After_Node_Type_Nonterminal4
     (I : access DFS;
      T : access Node_Type_Nonterminal4'Class) is
   begin
      Location_Step.Node_Test := (Node_Test => Node_Node_Test,
                                  Name      => Null_Unbounded_String);
      pragma Debug
        (Debug_Print ("Node_Type_Nonterminal4", Location_Step.Node_Test));
   end After_Node_Type_Nonterminal4;

   procedure After_Node_Test_Nonterminal1
     (I : access DFS;
      T : access Node_Test_Nonterminal1'Class) is
   begin
      --  Rule is Name_Test
      null;
   end After_Node_Test_Nonterminal1;

   procedure After_Node_Test_Nonterminal2
     (I : access DFS;
      T : access Node_Test_Nonterminal2'Class) is
   begin
      --  Rule is Node_Type L_PAREN R_PAREN
      case Get_Node_Type_Test (T.Node_Type_Part.all) is
         when Text_Node_Test =>
            Location_Step.Node_Test :=
              (Node_Test => Text_Node_Test,
               Name      => Null_Unbounded_String);
         when Comment_Node_Test =>
            Location_Step.Node_Test :=
              (Node_Test => Comment_Node_Test,
               Name      => Null_Unbounded_String);
         when Processing_Instruction_Node_Test =>
            Location_Step.Node_Test :=
              (Node_Test => Processing_Instruction_Node_Test,
               Name      => Null_Unbounded_String);
         when Node_Node_Test =>
            Location_Step.Node_Test :=
              (Node_Test => Node_Node_Test,
               Name      => Null_Unbounded_String);
      end case;
      pragma Debug
        (Debug_Print ("Node_Test_Nonterminal2", Location_Step.Node_Test));
   end After_Node_Test_Nonterminal2;

   procedure After_Node_Test_Nonterminal3
     (I : access DFS;
      T : access Node_Test_Nonterminal3'Class) is
   begin
      --  Rule is PROCESSING_INSTRUCTION L_PAREN LITERAL R_PAREN
      Location_Step.Node_Test :=
        (Node_Test => Processing_Instruction_Node_Test,
         Name      => Get_Literal (T.Literal_Part.all));
      pragma Debug
        (Debug_Print ("Node_Test_Nonterminal3", Location_Step.Node_Test));
   end After_Node_Test_Nonterminal3;

   procedure After_Axis_Name_Nonterminal1
     (I : access DFS;
      T : access Axis_Name_Nonterminal1'Class) is
   begin
      Location_Step.Axis := Ancestor_Axis;
      pragma Debug
        (Ada.Text_IO.Put_Line
           ("Axis_Name_Nonterminal1: " & Location_Step.Axis'Image));
   end After_Axis_Name_Nonterminal1;

   procedure After_Axis_Name_Nonterminal2
     (I : access DFS;
      T : access Axis_Name_Nonterminal2'Class) is
      Location_Step : Location_Steps;
   begin
      Location_Step.Axis := Ancestor_Or_Self_Axis;
      pragma Debug
        (Ada.Text_IO.Put_Line
           ("Axis_Name_Nonterminal2: " & Location_Step.Axis'Image));
   end After_Axis_Name_Nonterminal2;

   procedure After_Axis_Name_Nonterminal3
     (I : access DFS;
      T : access Axis_Name_Nonterminal3'Class) is
   begin
      Location_Step.Axis := Attribute_Axis;
      pragma Debug
        (Ada.Text_IO.Put_Line
           ("Axis_Name_Nonterminal3: " & Location_Step.Axis'Image));
   end After_Axis_Name_Nonterminal3;

   procedure After_Axis_Name_Nonterminal4
     (I : access DFS;
      T : access Axis_Name_Nonterminal4'Class) is
   begin
      Location_Step.Axis := Child_Axis;
      pragma Debug
        (Ada.Text_IO.Put_Line
           ("Axis_Name_Nonterminal4: " & Location_Step.Axis'Image));
   end After_Axis_Name_Nonterminal4;

   procedure After_Axis_Name_Nonterminal5
     (I : access DFS;
      T : access Axis_Name_Nonterminal5'Class) is
   begin
      Location_Step.Axis := Descendant_Axis;
      pragma Debug
        (Ada.Text_IO.Put_Line
           ("Axis_Name_Nonterminal5: " & Location_Step.Axis'Image));
   end After_Axis_Name_Nonterminal5;

   procedure After_Axis_Name_Nonterminal6
     (I : access DFS;
      T : access Axis_Name_Nonterminal6'Class) is
   begin
      Location_Step.Axis := Descendant_Or_Self_Axis;
      pragma Debug
        (Ada.Text_IO.Put_Line
           ("Axis_Name_Nonterminal6: " & Location_Step.Axis'Image));
   end After_Axis_Name_Nonterminal6;

   procedure After_Axis_Name_Nonterminal7
     (I : access DFS;
      T : access Axis_Name_Nonterminal7'Class) is
   begin
      Location_Step.Axis := Following_Axis;
      pragma Debug
        (Ada.Text_IO.Put_Line
           ("Axis_Name_Nonterminal7: " & Location_Step.Axis'Image));
   end After_Axis_Name_Nonterminal7;

   procedure After_Axis_Name_Nonterminal8
     (I : access DFS;
      T : access Axis_Name_Nonterminal8'Class) is
   begin
      Location_Step.Axis := Following_Sibling_Axis;
      pragma Debug
        (Ada.Text_IO.Put_Line
           ("Axis_Name_Nonterminal8: " & Location_Step.Axis'Image));
   end After_Axis_Name_Nonterminal8;

   procedure After_Axis_Name_Nonterminal9
     (I : access DFS;
      T : access Axis_Name_Nonterminal9'Class) is
   begin
      Location_Step.Axis := Namespace_Axis;
      pragma Debug
        (Ada.Text_IO.Put_Line
           ("Axis_Name_Nonterminal9: " & Location_Step.Axis'Image));
   end After_Axis_Name_Nonterminal9;

   procedure After_Axis_Name_Nonterminal10
     (I : access DFS;
      T : access Axis_Name_Nonterminal10'Class) is
   begin
      Location_Step.Axis := Parent_Axis;
      pragma Debug
        (Ada.Text_IO.Put_Line
           ("Axis_Name_Nonterminal10: " & Location_Step.Axis'Image));
   end After_Axis_Name_Nonterminal10;

   procedure After_Axis_Name_Nonterminal11
     (I : access DFS;
      T : access Axis_Name_Nonterminal11'Class) is
   begin
      Location_Step.Axis := Preceding_Axis;
      pragma Debug
        (Ada.Text_IO.Put_Line
           ("Axis_Name_Nonterminal11: " & Location_Step.Axis'Image));
   end After_Axis_Name_Nonterminal11;

   procedure After_Axis_Name_Nonterminal12
     (I : access DFS;
      T : access Axis_Name_Nonterminal12'Class) is
   begin
      Location_Step.Axis := Preceding_Sibling_Axis;
      pragma Debug
        (Ada.Text_IO.Put_Line
           ("Axis_Name_Nonterminal12: " & Location_Step.Axis'Image));
   end After_Axis_Name_Nonterminal12;

   procedure After_Axis_Name_Nonterminal13
     (I : access DFS;
      T : access Axis_Name_Nonterminal13'Class) is
   begin
      Location_Step.Axis := Self_Axis;
      pragma Debug
        (Ada.Text_IO.Put_Line
           ("Axis_Name_Nonterminal13: " & Location_Step.Axis'Image));
   end After_Axis_Name_Nonterminal13;

   procedure After_Axis_Specifier_Nonterminal
     (I : access DFS;
      T : access Axis_Specifier_Nonterminal'Class) is
   begin
      null;
   end After_Axis_Specifier_Nonterminal;

   procedure After_Predicate_Nonterminal
     (I : access DFS;
      T : access Predicate_Nonterminal'Class) is
   begin
      Predicates.Add_Predicate_Parse
        (Location_Step.Location_Predicates,
         T.Predicate_Expr_Part.Expr_Part);
   end After_Predicate_Nonterminal;

   procedure After_Abbreviated_Step_Base_Nonterminal1
     (I : access DFS;
      T : access Abbreviated_Step_Base_Nonterminal1'Class) is
   begin
      Location_Step.Axis := Child_Axis;
      pragma Debug
        (Ada.Text_IO.Put_Line
           ("Abbreviated_Step_Base_Nonterminal1: " & Location_Step.Axis'Image));
   end After_Abbreviated_Step_Base_Nonterminal1;

   procedure After_Abbreviated_Step_Base_Nonterminal2
     (I : access DFS;
      T : access Abbreviated_Step_Base_Nonterminal2'Class) is
   begin
      Location_Step.Axis := Attribute_Axis;
      pragma Debug
        (Ada.Text_IO.Put_Line
           ("Abbreviated_Step_Base_Nonterminal2: " & Location_Step.Axis'Image));
   end After_Abbreviated_Step_Base_Nonterminal2;

   procedure After_Step_Base_Nonterminal1
     (I : access DFS;
      T : access Step_Base_Nonterminal1'Class) is
   begin
      --  The rule is Axis_Specifier Node_Test.
      --  The Node_Test has already added the Location_Step; we need to
      --  overwrite the Axis using the Axis_Specifier_Part.
      Location_Step.Axis :=
        Get_Axis (T.Axis_Specifier_Part.Axis_Name_Part.all);
      Add (Location_Step);
      Reset;
   end After_Step_Base_Nonterminal1;

   procedure After_Step_Base_Nonterminal2
     (I : access DFS;
      T : access Step_Base_Nonterminal2'Class) is
   begin
      --  The rule is Abbreviated_Step_Base.
      Add (Location_Step);
      Reset;
   end After_Step_Base_Nonterminal2;

   procedure After_Predicates_Nonterminal1
     (I : access DFS;
      T : access Predicates_Nonterminal1'Class) is
   begin
      --  The rule is empty.
      null;
   end After_Predicates_Nonterminal1;

   procedure After_Predicates_Nonterminal2
     (I : access DFS;
      T : access Predicates_Nonterminal2'Class) is
   begin
      --  The rule is Predicates Predicate.
      null;
   end After_Predicates_Nonterminal2;

   procedure After_L_Bracket_Nonterminal
     (I : access DFS;
      T : access L_Bracket_Nonterminal'Class) is
   begin
      Begin_Predicate;
   end After_L_Bracket_Nonterminal;

   procedure After_R_Bracket_Nonterminal
     (I : access DFS;
      T : access R_Bracket_Nonterminal'Class) is
   begin
      End_Predicate;
   end After_R_Bracket_Nonterminal;

   procedure After_Step_Nonterminal1
     (I : access DFS;
      T : access Step_Nonterminal1'Class) is
   begin
      --  The rule is Step_Base Predicates; Step_Base adds itself.
      null;
   end After_Step_Nonterminal1;

   procedure After_Step_Nonterminal2
     (I : access DFS;
      T : access Step_Nonterminal2'Class) is
   begin
      --  The rule is Abbreviated_Step.
      Add (Location_Step);
      Reset;
   end After_Step_Nonterminal2;

   procedure After_Relative_Location_Path_Nonterminal1
     (I : access DFS;
      T : access Relative_Location_Path_Nonterminal1'Class) is
   begin
      --  The rule is Step
      null;
   end After_Relative_Location_Path_Nonterminal1;

   procedure After_Relative_Location_Path_Nonterminal2
     (I : access DFS;
      T : access Relative_Location_Path_Nonterminal2'Class) is
   begin
      --  The rule is Relative_Location_Path SLASH Step
      null;
   end After_Relative_Location_Path_Nonterminal2;

   procedure After_Relative_Location_Path_Nonterminal3
     (I : access DFS;
      T : access Relative_Location_Path_Nonterminal3'Class) is
   begin
      --  The rule is Abbreviated_Relative_Location_Path
      null;
   end After_Relative_Location_Path_Nonterminal3;

   procedure After_Absolute_Location_Path_Nonterminal1
     (I : access DFS;
      T : access Absolute_Location_Path_Nonterminal1'Class) is
   begin
      --  Rule is SLASH
      Location_Step :=
        (Axis                => Self_Axis,
         Node_Test           => (Node_Test => Node_Node_Test,
                                 Name      => Null_Unbounded_String),
         Location_Predicates => Predicates.Null_Predicate,
         Output_Step         => False);
      pragma Debug
        (Debug_Print
           ("Absolute_Location_Path_Nonterminal1", Location_Step.Node_Test));
   end After_Absolute_Location_Path_Nonterminal1;

   procedure After_Absolute_Location_Path_Nonterminal2
     (I : access DFS;
      T : access Absolute_Location_Path_Nonterminal2'Class) is
   begin
      --  Rule is SLASH Relative_Location_Path
      Location_Step :=
        (Axis                => Self_Axis,
         Node_Test           => (Node_Test => Node_Node_Test,
                                 Name      => Null_Unbounded_String),
         Location_Predicates => Predicates.Null_Predicate,
         Output_Step         => False);
      pragma Debug
        (Debug_Print
           ("Absolute_Location_Path_Nonterminal2", Location_Step.Node_Test));
   end After_Absolute_Location_Path_Nonterminal2;

   procedure After_Absolute_Location_Path_Nonterminal3
     (I : access DFS;
      T : access Absolute_Location_Path_Nonterminal3'Class) is
   begin
      --  Rule is Abbreviated_Absolute_Location_Path
      null;
   end After_Absolute_Location_Path_Nonterminal3;

   procedure After_Location_Path_Nonterminal1
     (I : access DFS;
      T : access Location_Path_Nonterminal1'Class) is
   begin
      --  Rule is Relative_Location_Path
      null;
   end After_Location_Path_Nonterminal1;

   procedure After_Location_Path_Nonterminal2
     (I : access DFS;
      T : access Location_Path_Nonterminal2'Class) is
   begin
      --  Rule is Absolute_Location_Path
      null;
   end After_Location_Path_Nonterminal2;

end McKae.XML.XPath.DFS_Processing;
