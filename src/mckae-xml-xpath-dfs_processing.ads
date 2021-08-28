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

with Xpath_DFS;

limited private with Xpath_Model;

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
private with Double_Slash_Model;
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
private with L_Bracket_Model;
private with R_Bracket_Model;
private with Relative_Location_Path_Model;
private with Absolute_Location_Path_Model;
private with Location_Path_Model;

package McKae.XML.XPath.DFS_Processing is

   type DFS is new Xpath_DFS.DFS with null record;

private

   --  do we need this?
   overriding procedure Visit_Parseable_Token
     (I : access DFS;
      T : access xpath_Model.Parseable_Token'Class);

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
   use Double_Slash_Model;
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
   use L_Bracket_Model;
   use R_Bracket_Model;
   use Relative_Location_Path_Model;
   use Absolute_Location_Path_Model;
   use Location_Path_Model;

   overriding procedure After_Literal_Nonterminal1
     (I : access DFS;
      T : access Literal_Nonterminal1'Class);

   overriding procedure After_Literal_Nonterminal2
     (I : access DFS;
      T : access Literal_Nonterminal2'Class);

   overriding procedure After_Number_Nonterminal1
     (I : access DFS;
      T : access Number_Nonterminal1'Class);

   overriding procedure After_Number_Nonterminal2
     (I : access DFS;
      T : access Number_Nonterminal2'Class);

   overriding procedure After_Unary_Expr_Nonterminal1
     (I : access DFS;
      T : access Unary_Expr_Nonterminal1'Class);

   overriding procedure After_Unary_Expr_Nonterminal2
     (I : access DFS;
      T : access Unary_Expr_Nonterminal2'Class);

   overriding procedure After_Multiplicative_Expr_Nonterminal1
     (I : access DFS;
      T : access Multiplicative_Expr_Nonterminal1'Class);

   overriding procedure After_Multiplicative_Expr_Nonterminal2
     (I : access DFS;
      T : access Multiplicative_Expr_Nonterminal2'Class);

   overriding procedure After_Multiplicative_Expr_Nonterminal3
     (I : access DFS;
      T : access Multiplicative_Expr_Nonterminal3'Class);

   overriding procedure After_Multiplicative_Expr_Nonterminal4
     (I : access DFS;
      T : access Multiplicative_Expr_Nonterminal4'Class);

   overriding procedure After_Additive_Expr_Nonterminal1
     (I : access DFS;
      T : access Additive_Expr_Nonterminal1'Class);

   overriding procedure After_Additive_Expr_Nonterminal2
     (I : access DFS;
      T : access Additive_Expr_Nonterminal2'Class);

   overriding procedure After_Additive_Expr_Nonterminal3
     (I : access DFS;
      T : access Additive_Expr_Nonterminal3'Class);

   overriding procedure After_Relational_Expr_Nonterminal1
     (I : access DFS;
      T : access Relational_Expr_Nonterminal1'Class);

   overriding procedure After_Relational_Expr_Nonterminal2
     (I : access DFS;
      T : access Relational_Expr_Nonterminal2'Class);

   overriding procedure After_Relational_Expr_Nonterminal3
     (I : access DFS;
      T : access Relational_Expr_Nonterminal3'Class);

   overriding procedure After_Relational_Expr_Nonterminal4
     (I : access DFS;
      T : access Relational_Expr_Nonterminal4'Class);

   overriding procedure After_Relational_Expr_Nonterminal5
     (I : access DFS;
      T : access Relational_Expr_Nonterminal5'Class);

   overriding procedure After_Equality_Expr_Nonterminal1
     (I : access DFS;
      T : access Equality_Expr_Nonterminal1'Class);

   overriding procedure After_Equality_Expr_Nonterminal2
     (I : access DFS;
      T : access Equality_Expr_Nonterminal2'Class);

   overriding procedure After_Equality_Expr_Nonterminal3
     (I : access DFS;
      T : access Equality_Expr_Nonterminal3'Class);

   overriding procedure After_And_Expr_Nonterminal1
     (I : access DFS;
      T : access And_Expr_Nonterminal1'Class);

   overriding procedure After_And_Expr_Nonterminal2
     (I : access DFS;
      T : access And_Expr_Nonterminal2'Class);

   overriding procedure After_Or_Expr_Nonterminal1
     (I : access DFS;
      T : access Or_Expr_Nonterminal1'Class);

   overriding procedure After_Or_Expr_Nonterminal2
     (I : access DFS;
      T : access Or_Expr_Nonterminal2'Class);

   overriding procedure After_Filter_Expr_Nonterminal1
     (I : access DFS;
      T : access Filter_Expr_Nonterminal1'Class);

   overriding procedure After_Filter_Expr_Nonterminal2
     (I : access DFS;
      T : access Filter_Expr_Nonterminal2'Class);

   overriding procedure After_Path_Expr_Nonterminal1
     (I : access DFS;
      T : access Path_Expr_Nonterminal1'Class);

   overriding procedure After_Path_Expr_Nonterminal2
     (I : access DFS;
      T : access Path_Expr_Nonterminal2'Class);

   overriding procedure After_Path_Expr_Nonterminal3
     (I : access DFS;
      T : access Path_Expr_Nonterminal3'Class);

   overriding procedure After_Path_Expr_Nonterminal4
     (I : access DFS;
      T : access Path_Expr_Nonterminal4'Class);

   overriding procedure After_Union_Expr_Nonterminal1
     (I : access DFS;
      T : access Union_Expr_Nonterminal1'Class);

   overriding procedure After_Union_Expr_Nonterminal2
     (I : access DFS;
      T : access Union_Expr_Nonterminal2'Class);

   overriding procedure After_Function_Name_Nonterminal
     (I : access DFS;
      T : access Function_Name_Nonterminal'Class);

   overriding procedure After_Argument_Nonterminal
     (I : access DFS;
      T : access Argument_Nonterminal'Class);

   overriding procedure After_Arguments_Nonterminal1
     (I : access DFS;
      T : access Arguments_Nonterminal1'Class);

   overriding procedure After_Arguments_Nonterminal2
     (I : access DFS;
      T : access Arguments_Nonterminal2'Class);

   overriding procedure After_Arguments_Nonterminal3
     (I : access DFS;
      T : access Arguments_Nonterminal3'Class);

   overriding procedure After_Function_Call_Nonterminal
     (I : access DFS;
      T : access Function_Call_Nonterminal'Class);

   overriding procedure After_Variable_Reference_Nonterminal
     (I : access DFS;
      T : access Variable_Reference_Nonterminal'Class);

   overriding procedure After_Primary_Expr_Nonterminal1
     (I : access DFS;
      T : access Primary_Expr_Nonterminal1'Class);

   overriding procedure After_Primary_Expr_Nonterminal2
     (I : access DFS;
      T : access Primary_Expr_Nonterminal2'Class);

   overriding procedure After_Primary_Expr_Nonterminal3
     (I : access DFS;
      T : access Primary_Expr_Nonterminal3'Class);

   overriding procedure After_Primary_Expr_Nonterminal4
     (I : access DFS;
      T : access Primary_Expr_Nonterminal4'Class);

   overriding procedure After_Primary_Expr_Nonterminal5
     (I : access DFS;
      T : access Primary_Expr_Nonterminal5'Class);

   overriding procedure After_Expr_Nonterminal
     (I : access DFS;
      T : access Expr_Nonterminal'Class);

   overriding procedure After_Abbreviated_Step_Nonterminal1
     (I : access DFS;
      T : access Abbreviated_Step_Nonterminal1'Class);

   overriding procedure After_Abbreviated_Step_Nonterminal2
     (I : access DFS;
      T : access Abbreviated_Step_Nonterminal2'Class);

   overriding procedure After_Abbreviated_Relative_Location_Path_Nonterminal
     (I : access DFS;
      T : access Abbreviated_Relative_Location_Path_Nonterminal'Class);

   overriding procedure After_Abbreviated_Absolute_Location_Path_Nonterminal
     (I : access DFS;
      T : access Abbreviated_Absolute_Location_Path_Nonterminal'Class);

   overriding procedure After_Double_Slash_Nonterminal
     (I : access DFS;
      T : access Double_Slash_nonterminal'Class);

   overriding procedure After_Predicate_Expr_Nonterminal
     (I : access DFS;
      T : access Predicate_Expr_Nonterminal'Class);

   overriding procedure After_NCNAME_Or_ID_Nonterminal1
     (I : access DFS;
      T : access NCNAME_Or_ID_Nonterminal1'Class);

   overriding procedure After_NCNAME_Or_ID_Nonterminal2
     (I : access DFS;
      T : access NCNAME_Or_ID_Nonterminal2'Class);

   overriding procedure After_NCNAME_Or_ID_Nonterminal3
     (I : access DFS;
      T : access NCNAME_Or_ID_Nonterminal3'Class);

   overriding procedure After_NCNAME_Or_ID_Nonterminal4
     (I : access DFS;
      T : access NCNAME_Or_ID_Nonterminal4'Class);

   overriding procedure After_NCNAME_Or_ID_Nonterminal5
     (I : access DFS;
      T : access NCNAME_Or_ID_Nonterminal5'Class);

   overriding procedure After_NCNAME_Or_ID_Nonterminal6
     (I : access DFS;
      T : access NCNAME_Or_ID_Nonterminal6'Class);

   overriding procedure After_NCNAME_Or_ID_Nonterminal7
     (I : access DFS;
      T : access NCNAME_Or_ID_Nonterminal7'Class);

   overriding procedure After_QName_Nonterminal1
     (I : access DFS;
      T : access QName_Nonterminal1'Class);

   overriding procedure After_QName_Nonterminal2
     (I : access DFS;
      T : access QName_Nonterminal2'Class);

   overriding procedure After_Name_Test_Nonterminal1
     (I : access DFS;
      T : access Name_Test_Nonterminal1'Class);

   overriding procedure After_Name_Test_Nonterminal2
     (I : access DFS;
      T : access Name_Test_Nonterminal2'Class);

   overriding procedure After_Name_Test_Nonterminal3
     (I : access DFS;
      T : access Name_Test_Nonterminal3'Class);

   overriding procedure After_Node_Type_Nonterminal1
     (I : access DFS;
      T : access Node_Type_Nonterminal1'Class);

   overriding procedure After_Node_Type_Nonterminal2
     (I : access DFS;
      T : access Node_Type_Nonterminal2'Class);

   overriding procedure After_Node_Type_Nonterminal3
     (I : access DFS;
      T : access Node_Type_Nonterminal3'Class);

   overriding procedure After_Node_Type_Nonterminal4
     (I : access DFS;
      T : access Node_Type_Nonterminal4'Class);

   overriding procedure After_Node_Test_Nonterminal1
     (I : access DFS;
      T : access Node_Test_Nonterminal1'Class);

   overriding procedure After_Node_Test_Nonterminal2
     (I : access DFS;
      T : access Node_Test_Nonterminal2'Class);

   overriding procedure After_Node_Test_Nonterminal3
     (I : access DFS;
      T : access Node_Test_Nonterminal3'Class);

   overriding procedure After_Axis_Name_Nonterminal1
     (I : access DFS;
      T : access Axis_Name_Nonterminal1'Class);

   overriding procedure After_Axis_Name_Nonterminal2
     (I : access DFS;
      T : access Axis_Name_Nonterminal2'Class);

   overriding procedure After_Axis_Name_Nonterminal3
     (I : access DFS;
      T : access Axis_Name_Nonterminal3'Class);

   overriding procedure After_Axis_Name_Nonterminal4
     (I : access DFS;
      T : access Axis_Name_Nonterminal4'Class);

   overriding procedure After_Axis_Name_Nonterminal5
     (I : access DFS;
      T : access Axis_Name_Nonterminal5'Class);

   overriding procedure After_Axis_Name_Nonterminal6
     (I : access DFS;
      T : access Axis_Name_Nonterminal6'Class);

   overriding procedure After_Axis_Name_Nonterminal7
     (I : access DFS;
      T : access Axis_Name_Nonterminal7'Class);

   overriding procedure After_Axis_Name_Nonterminal8
     (I : access DFS;
      T : access Axis_Name_Nonterminal8'Class);

   overriding procedure After_Axis_Name_Nonterminal9
     (I : access DFS;
      T : access Axis_Name_Nonterminal9'Class);

   overriding procedure After_Axis_Name_Nonterminal10
     (I : access DFS;
      T : access Axis_Name_Nonterminal10'Class);

   overriding procedure After_Axis_Name_Nonterminal11
     (I : access DFS;
      T : access Axis_Name_Nonterminal11'Class);

   overriding procedure After_Axis_Name_Nonterminal12
     (I : access DFS;
      T : access Axis_Name_Nonterminal12'Class);

   overriding procedure After_Axis_Name_Nonterminal13
     (I : access DFS;
      T : access Axis_Name_Nonterminal13'Class);

   overriding procedure After_Axis_Specifier_Nonterminal
     (I : access DFS;
      T : access Axis_Specifier_Nonterminal'Class);

   overriding procedure After_Predicate_Nonterminal
     (I : access DFS;
      T : access Predicate_Nonterminal'Class);

   overriding procedure After_Abbreviated_Step_Base_Nonterminal1
     (I : access DFS;
      T : access Abbreviated_Step_Base_Nonterminal1'Class);

   overriding procedure After_Abbreviated_Step_Base_Nonterminal2
     (I : access DFS;
      T : access Abbreviated_Step_Base_Nonterminal2'Class);

   overriding procedure After_Step_Base_Nonterminal1
     (I : access DFS;
      T : access Step_Base_Nonterminal1'Class);

   overriding procedure After_Step_Base_Nonterminal2
     (I : access DFS;
      T : access Step_Base_Nonterminal2'Class);

   overriding procedure After_Predicates_Nonterminal1
     (I : access DFS;
      T : access Predicates_Nonterminal1'Class);

   overriding procedure After_Predicates_Nonterminal2
     (I : access DFS;
      T : access Predicates_Nonterminal2'Class);

   overriding procedure After_L_Bracket_Nonterminal
     (I : access DFS;
      T : access L_Bracket_Nonterminal'Class);

   overriding procedure After_R_Bracket_Nonterminal
     (I : access DFS;
      T : access R_Bracket_Nonterminal'Class);

   overriding procedure After_Step_Nonterminal1
     (I : access DFS;
      T : access Step_Nonterminal1'Class);

   overriding procedure After_Step_Nonterminal2
     (I : access DFS;
      T : access Step_Nonterminal2'Class);

   overriding procedure After_Relative_Location_Path_Nonterminal1
     (I : access DFS;
      T : access Relative_Location_Path_Nonterminal1'Class);

   overriding procedure After_Relative_Location_Path_Nonterminal2
     (I : access DFS;
      T : access Relative_Location_Path_Nonterminal2'Class);

   overriding procedure After_Relative_Location_Path_Nonterminal3
     (I : access DFS;
      T : access Relative_Location_Path_Nonterminal3'Class);

   overriding procedure After_Absolute_Location_Path_Nonterminal1
     (I : access DFS;
      T : access Absolute_Location_Path_Nonterminal1'Class);

   overriding procedure After_Absolute_Location_Path_Nonterminal2
     (I : access DFS;
      T : access Absolute_Location_Path_Nonterminal2'Class);

   overriding procedure After_Absolute_Location_Path_Nonterminal3
     (I : access DFS;
      T : access Absolute_Location_Path_Nonterminal3'Class);

   overriding procedure After_Location_Path_Nonterminal1
     (I : access DFS;
      T : access Location_Path_Nonterminal1'Class);

   overriding procedure After_Location_Path_Nonterminal2
     (I : access DFS;
      T : access Location_Path_Nonterminal2'Class);

end McKae.XML.XPath.DFS_Processing;
