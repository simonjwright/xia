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

with Mckae.Xml.Xpath.Expressions;
with Xpath_Model;

private with Literal_Model;
private with Number_Model;
private with Unary_Expr_Model;
private with Multiplicative_Expr_Model;
private with Additive_Expr_Model;
private with Relational_Expr_Model;
private with Equality_Expr_Model;
private with And_Expr_Model;
private with Or_Expr_Model;
private with Filter_Expr_Model;
private with Path_Expr_Model;
private with Union_Expr_Model;
private with Function_Name_Model;
private with Argument_Model;
private with Arguments_Model;
private with Function_Call_Model;
private with Variable_Reference_Model;
private with Primary_Expr_Model;
private with Expr_Model;
private with Abbreviated_Step_Model;
private with Abbreviated_Relative_Location_Path_Model;
private with Abbreviated_Absolute_Location_Path_Model;
private with Predicate_Expr_Model;
private with NCNAME_Or_ID_Model;
private with QName_Model;
private with Name_Test_Model;
private with Node_Type_Model;
private with Node_Test_Model;
private with Axis_Name_Model;
private with Axis_Specifier_Model;
private with Predicate_Model;
private with Abbreviated_Step_Base_Model;
private with Step_Base_Model;
private with Predicates_Model;
private with Step_Model;
private with Relative_Location_Path_Model;
private with Absolute_Location_Path_Model;
private with Location_Path_Model;

package Mckae.Xml.Xpath.Predicates.Evaluation.Evaluators is

   procedure Evaluate
     (This         : in     Xpath_Model.Parseable'Class;
      Context_Node : in     Expressions.Node_Items;
      Value        :    out Expressions.Expression_Values);

private

   use Mckae.Xml.Xpath.Expressions;

   use Literal_Model;
   use Number_Model;
   use Unary_Expr_Model;
   use Multiplicative_Expr_Model;
   use Additive_Expr_Model;
   use Relational_Expr_Model;
   use Equality_Expr_Model;
   use And_Expr_Model;
   use Or_Expr_Model;
   use Filter_Expr_Model;
   use Path_Expr_Model;
   use Union_Expr_Model;
   use Function_Name_Model;
   use Argument_Model;
   use Arguments_Model;
   use Function_Call_Model;
   use Variable_Reference_Model;
   use Primary_Expr_Model;
   use Expr_Model;
   use Abbreviated_Step_Model;
   use Abbreviated_Relative_Location_Path_Model;
   use Abbreviated_Absolute_Location_Path_Model;
   use Predicate_Expr_Model;
   use NCNAME_Or_ID_Model;
   use QName_Model;
   use Name_Test_Model;
   use Node_Type_Model;
   use Node_Test_Model;
   use Axis_Name_Model;
   use Axis_Specifier_Model;
   use Predicate_Model;
   use Abbreviated_Step_Base_Model;
   use Step_Base_Model;
   use Predicates_Model;
   use Step_Model;
   use Relative_Location_Path_Model;
   use Absolute_Location_Path_Model;
   use Location_Path_Model;

   --  The problem is, to distinguish between classes that have no
   --  descendants (there was only one choice in the grammar rule),
   --  and classes that do.
   --
   --  Classes where there was only one choice in the grammar rule
   --  Evaluate_Parent are coded as
   --
   --  type Evaluate_Parent_nonterminal is new Parseable with record ...
   --
   --  but where there was more than one choice in the grammar rule
   --  Bar it would be
   --
   --  type Bar_nonterminal is abstract new Parseable with null record;
   --  type Bar_nonterminal1 is new Evaluate_Parent_nonterminal with record ...
   --  type Bar_nonterminal2 is new Evaluate_Parent_nonterminal with record ...
   --
   --  Where there's a reference to another class in an Evaluate_Terminal body,
   --  it's always to the type without the trailing number. This means
   --  that when there are child classes, we have to fake dispatching.

   --  These procedures are for classes that have no descendants, and
   --  are therefore individually coded, and are visible.

   ----------------------------------------
   --  terminal class specs

   procedure Evaluate_Terminal
     (This         : in     Abbreviated_Absolute_Location_Path_Nonterminal;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Abbreviated_Relative_Location_Path_Nonterminal;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Abbreviated_Step_Base_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Abbreviated_Step_Base_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Abbreviated_Step_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Abbreviated_Step_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Absolute_Location_Path_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Absolute_Location_Path_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Absolute_Location_Path_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Additive_Expr_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Additive_Expr_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Additive_Expr_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     And_Expr_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     And_Expr_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Argument_Nonterminal;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Arguments_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Arguments_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Arguments_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal10;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal11;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal12;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal13;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal4;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal5;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal6;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal7;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal8;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Axis_Name_Nonterminal9;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Axis_Specifier_Nonterminal;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Equality_Expr_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Equality_Expr_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Equality_Expr_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Expr_Nonterminal;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Filter_Expr_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Filter_Expr_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Function_Call_Nonterminal;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Function_Name_Nonterminal;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Literal_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Literal_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Location_Path_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Location_Path_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Multiplicative_Expr_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Multiplicative_Expr_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Multiplicative_Expr_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Multiplicative_Expr_Nonterminal4;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     NCNAME_Or_ID_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     NCNAME_Or_ID_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     NCNAME_Or_ID_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     NCNAME_Or_ID_Nonterminal4;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     NCNAME_Or_ID_Nonterminal5;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     NCNAME_Or_ID_Nonterminal6;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     NCNAME_Or_ID_Nonterminal7;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Name_Test_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Name_Test_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Name_Test_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Node_Test_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Node_Test_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Node_Test_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Node_Type_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Node_Type_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Node_Type_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Node_Type_Nonterminal4;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Number_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Number_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Or_Expr_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Or_Expr_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Path_Expr_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Path_Expr_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Path_Expr_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Path_Expr_Nonterminal4;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Predicate_Expr_Nonterminal;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Predicate_Nonterminal;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Predicates_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Predicates_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Primary_Expr_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Primary_Expr_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Primary_Expr_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Primary_Expr_Nonterminal4;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Primary_Expr_Nonterminal5;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     QName_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     QName_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Relational_Expr_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Relational_Expr_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Relational_Expr_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Relational_Expr_Nonterminal4;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Relational_Expr_Nonterminal5;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Relative_Location_Path_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Relative_Location_Path_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Relative_Location_Path_Nonterminal3;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Step_Base_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Step_Base_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Step_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Step_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Unary_Expr_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Unary_Expr_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Union_Expr_Nonterminal1;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Union_Expr_Nonterminal2;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Terminal
     (This         : in     Variable_Reference_Nonterminal;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   ----------------------------------------
   --  parent class specs

   procedure Evaluate_Parent
     (This         : in     Abbreviated_Step_Base_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     Abbreviated_Step_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     Absolute_Location_Path_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     Additive_Expr_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     And_Expr_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     Arguments_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     Axis_Name_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     Equality_Expr_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     Filter_Expr_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     Literal_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     Location_Path_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     Multiplicative_Expr_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     NCNAME_Or_ID_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     Name_Test_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     Node_Test_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     Node_Type_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     Number_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     Or_Expr_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     Path_Expr_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     Predicates_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     Primary_Expr_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     QName_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     Relational_Expr_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     Relative_Location_Path_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     Step_Base_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     Step_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     Unary_Expr_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

   procedure Evaluate_Parent
     (This         : in     Union_Expr_Nonterminal'Class;
      Context_Node : in     Node_Items;
      Value        :    out Expression_Values)
   with Inline;

end Mckae.Xml.Xpath.Predicates.Evaluation.Evaluators;
