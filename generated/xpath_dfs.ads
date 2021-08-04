-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with Literal_Model;
with Number_Model;
with Unary_Expr_Model;
with Multiplicative_Expr_Model;
with Additive_Expr_Model;
with Relational_Expr_Model;
with Equality_Expr_Model;
with And_Expr_Model;
with Or_Expr_Model;
with Filter_Expr_Model;
with Path_Expr_Model;
with Union_Expr_Model;
with Function_Name_Model;
with Argument_Model;
with Arguments_Model;
with Function_Call_Model;
with Variable_Reference_Model;
with Primary_Expr_Model;
with Expr_Model;
with Abbreviated_Step_Model;
with Abbreviated_Relative_Location_Path_Model;
with Double_Slash_Model;
with Abbreviated_Absolute_Location_Path_Model;
with Predicate_Expr_Model;
with NCNAME_Or_ID_Model;
with QName_Model;
with Name_Test_Model;
with Node_Type_Model;
with Node_Test_Model;
with Axis_Name_Model;
with Axis_Specifier_Model;
with R_Bracket_Model;
with L_Bracket_Model;
with Predicate_Model;
with Abbreviated_Step_Base_Model;
with Step_Base_Model;
with Predicates_Model;
with Step_Model;
with Relative_Location_Path_Model;
with Absolute_Location_Path_Model;
with Location_Path_Model;
limited with XPath_Model;
with XPath_Visitor_Interface;
use XPath_Visitor_Interface;
package XPath_DFS is
   type Root is tagged null record;
   type DFS is new Root and 
      XPath_Visitor_Interface.Visit_XPath_Interface with null record;
   overriding procedure Before_Location_Path_nonterminal1(
      I : access DFS;
      N : access Location_Path_Model.Location_Path_nonterminal1'Class);
   overriding procedure After_Location_Path_nonterminal1(
      I : access DFS;
      N : access Location_Path_Model.Location_Path_nonterminal1'Class);
   overriding procedure Visit_Location_Path_nonterminal1(
      I : access DFS;
      N : access Location_Path_Model.Location_Path_nonterminal1'Class);
   overriding procedure Before_Location_Path_nonterminal2(
      I : access DFS;
      N : access Location_Path_Model.Location_Path_nonterminal2'Class);
   overriding procedure After_Location_Path_nonterminal2(
      I : access DFS;
      N : access Location_Path_Model.Location_Path_nonterminal2'Class);
   overriding procedure Visit_Location_Path_nonterminal2(
      I : access DFS;
      N : access Location_Path_Model.Location_Path_nonterminal2'Class);
   overriding procedure Before_Absolute_Location_Path_nonterminal1(
      I : access DFS;
      N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal1'Class);
   overriding procedure After_Absolute_Location_Path_nonterminal1(
      I : access DFS;
      N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal1'Class);
   overriding procedure Visit_Absolute_Location_Path_nonterminal1(
      I : access DFS;
      N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal1'Class);
   overriding procedure Before_Absolute_Location_Path_nonterminal2(
      I : access DFS;
      N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal2'Class);
   overriding procedure After_Absolute_Location_Path_nonterminal2(
      I : access DFS;
      N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal2'Class);
   overriding procedure Visit_Absolute_Location_Path_nonterminal2(
      I : access DFS;
      N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal2'Class);
   overriding procedure Before_Absolute_Location_Path_nonterminal3(
      I : access DFS;
      N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal3'Class);
   overriding procedure After_Absolute_Location_Path_nonterminal3(
      I : access DFS;
      N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal3'Class);
   overriding procedure Visit_Absolute_Location_Path_nonterminal3(
      I : access DFS;
      N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal3'Class);
   overriding procedure Before_Relative_Location_Path_nonterminal1(
      I : access DFS;
      N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal1'Class);
   overriding procedure After_Relative_Location_Path_nonterminal1(
      I : access DFS;
      N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal1'Class);
   overriding procedure Visit_Relative_Location_Path_nonterminal1(
      I : access DFS;
      N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal1'Class);
   overriding procedure Before_Relative_Location_Path_nonterminal2(
      I : access DFS;
      N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal2'Class);
   overriding procedure After_Relative_Location_Path_nonterminal2(
      I : access DFS;
      N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal2'Class);
   overriding procedure Visit_Relative_Location_Path_nonterminal2(
      I : access DFS;
      N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal2'Class);
   overriding procedure Before_Relative_Location_Path_nonterminal3(
      I : access DFS;
      N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal3'Class);
   overriding procedure After_Relative_Location_Path_nonterminal3(
      I : access DFS;
      N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal3'Class);
   overriding procedure Visit_Relative_Location_Path_nonterminal3(
      I : access DFS;
      N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal3'Class);
   overriding procedure Before_Step_nonterminal1(
      I : access DFS;
      N : access Step_Model.Step_nonterminal1'Class);
   overriding procedure After_Step_nonterminal1(
      I : access DFS;
      N : access Step_Model.Step_nonterminal1'Class);
   overriding procedure Visit_Step_nonterminal1(
      I : access DFS;
      N : access Step_Model.Step_nonterminal1'Class);
   overriding procedure Before_Step_nonterminal2(
      I : access DFS;
      N : access Step_Model.Step_nonterminal2'Class);
   overriding procedure After_Step_nonterminal2(
      I : access DFS;
      N : access Step_Model.Step_nonterminal2'Class);
   overriding procedure Visit_Step_nonterminal2(
      I : access DFS;
      N : access Step_Model.Step_nonterminal2'Class);
   overriding procedure Before_Predicates_nonterminal1(
      I : access DFS;
      N : access Predicates_Model.Predicates_nonterminal1'Class);
   overriding procedure After_Predicates_nonterminal1(
      I : access DFS;
      N : access Predicates_Model.Predicates_nonterminal1'Class);
   overriding procedure Visit_Predicates_nonterminal1(
      I : access DFS;
      N : access Predicates_Model.Predicates_nonterminal1'Class);
   overriding procedure Before_Predicates_nonterminal2(
      I : access DFS;
      N : access Predicates_Model.Predicates_nonterminal2'Class);
   overriding procedure After_Predicates_nonterminal2(
      I : access DFS;
      N : access Predicates_Model.Predicates_nonterminal2'Class);
   overriding procedure Visit_Predicates_nonterminal2(
      I : access DFS;
      N : access Predicates_Model.Predicates_nonterminal2'Class);
   overriding procedure Before_Step_Base_nonterminal1(
      I : access DFS;
      N : access Step_Base_Model.Step_Base_nonterminal1'Class);
   overriding procedure After_Step_Base_nonterminal1(
      I : access DFS;
      N : access Step_Base_Model.Step_Base_nonterminal1'Class);
   overriding procedure Visit_Step_Base_nonterminal1(
      I : access DFS;
      N : access Step_Base_Model.Step_Base_nonterminal1'Class);
   overriding procedure Before_Step_Base_nonterminal2(
      I : access DFS;
      N : access Step_Base_Model.Step_Base_nonterminal2'Class);
   overriding procedure After_Step_Base_nonterminal2(
      I : access DFS;
      N : access Step_Base_Model.Step_Base_nonterminal2'Class);
   overriding procedure Visit_Step_Base_nonterminal2(
      I : access DFS;
      N : access Step_Base_Model.Step_Base_nonterminal2'Class);
   overriding procedure Before_Abbreviated_Step_Base_nonterminal1(
      I : access DFS;
      N : access Abbreviated_Step_Base_Model.Abbreviated_Step_Base_nonterminal1'Class);
   overriding procedure After_Abbreviated_Step_Base_nonterminal1(
      I : access DFS;
      N : access Abbreviated_Step_Base_Model.Abbreviated_Step_Base_nonterminal1'Class);
   overriding procedure Visit_Abbreviated_Step_Base_nonterminal1(
      I : access DFS;
      N : access Abbreviated_Step_Base_Model.Abbreviated_Step_Base_nonterminal1'Class);
   overriding procedure Before_Abbreviated_Step_Base_nonterminal2(
      I : access DFS;
      N : access Abbreviated_Step_Base_Model.Abbreviated_Step_Base_nonterminal2'Class);
   overriding procedure After_Abbreviated_Step_Base_nonterminal2(
      I : access DFS;
      N : access Abbreviated_Step_Base_Model.Abbreviated_Step_Base_nonterminal2'Class);
   overriding procedure Visit_Abbreviated_Step_Base_nonterminal2(
      I : access DFS;
      N : access Abbreviated_Step_Base_Model.Abbreviated_Step_Base_nonterminal2'Class);
   overriding procedure Before_Predicate_nonterminal(
      I : access DFS;
      N : access Predicate_Model.Predicate_nonterminal'Class);
   overriding procedure After_Predicate_nonterminal(
      I : access DFS;
      N : access Predicate_Model.Predicate_nonterminal'Class);
   overriding procedure Visit_Predicate_nonterminal(
      I : access DFS;
      N : access Predicate_Model.Predicate_nonterminal'Class);
   overriding procedure Before_L_Bracket_nonterminal(
      I : access DFS;
      N : access L_Bracket_Model.L_Bracket_nonterminal'Class);
   overriding procedure After_L_Bracket_nonterminal(
      I : access DFS;
      N : access L_Bracket_Model.L_Bracket_nonterminal'Class);
   overriding procedure Visit_L_Bracket_nonterminal(
      I : access DFS;
      N : access L_Bracket_Model.L_Bracket_nonterminal'Class);
   overriding procedure Before_R_Bracket_nonterminal(
      I : access DFS;
      N : access R_Bracket_Model.R_Bracket_nonterminal'Class);
   overriding procedure After_R_Bracket_nonterminal(
      I : access DFS;
      N : access R_Bracket_Model.R_Bracket_nonterminal'Class);
   overriding procedure Visit_R_Bracket_nonterminal(
      I : access DFS;
      N : access R_Bracket_Model.R_Bracket_nonterminal'Class);
   overriding procedure Before_Axis_Specifier_nonterminal(
      I : access DFS;
      N : access Axis_Specifier_Model.Axis_Specifier_nonterminal'Class);
   overriding procedure After_Axis_Specifier_nonterminal(
      I : access DFS;
      N : access Axis_Specifier_Model.Axis_Specifier_nonterminal'Class);
   overriding procedure Visit_Axis_Specifier_nonterminal(
      I : access DFS;
      N : access Axis_Specifier_Model.Axis_Specifier_nonterminal'Class);
   overriding procedure Before_Axis_Name_nonterminal1(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal1'Class);
   overriding procedure After_Axis_Name_nonterminal1(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal1'Class);
   overriding procedure Visit_Axis_Name_nonterminal1(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal1'Class);
   overriding procedure Before_Axis_Name_nonterminal2(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal2'Class);
   overriding procedure After_Axis_Name_nonterminal2(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal2'Class);
   overriding procedure Visit_Axis_Name_nonterminal2(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal2'Class);
   overriding procedure Before_Axis_Name_nonterminal3(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal3'Class);
   overriding procedure After_Axis_Name_nonterminal3(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal3'Class);
   overriding procedure Visit_Axis_Name_nonterminal3(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal3'Class);
   overriding procedure Before_Axis_Name_nonterminal4(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal4'Class);
   overriding procedure After_Axis_Name_nonterminal4(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal4'Class);
   overriding procedure Visit_Axis_Name_nonterminal4(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal4'Class);
   overriding procedure Before_Axis_Name_nonterminal5(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal5'Class);
   overriding procedure After_Axis_Name_nonterminal5(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal5'Class);
   overriding procedure Visit_Axis_Name_nonterminal5(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal5'Class);
   overriding procedure Before_Axis_Name_nonterminal6(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal6'Class);
   overriding procedure After_Axis_Name_nonterminal6(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal6'Class);
   overriding procedure Visit_Axis_Name_nonterminal6(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal6'Class);
   overriding procedure Before_Axis_Name_nonterminal7(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal7'Class);
   overriding procedure After_Axis_Name_nonterminal7(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal7'Class);
   overriding procedure Visit_Axis_Name_nonterminal7(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal7'Class);
   overriding procedure Before_Axis_Name_nonterminal8(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal8'Class);
   overriding procedure After_Axis_Name_nonterminal8(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal8'Class);
   overriding procedure Visit_Axis_Name_nonterminal8(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal8'Class);
   overriding procedure Before_Axis_Name_nonterminal9(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal9'Class);
   overriding procedure After_Axis_Name_nonterminal9(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal9'Class);
   overriding procedure Visit_Axis_Name_nonterminal9(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal9'Class);
   overriding procedure Before_Axis_Name_nonterminal10(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal10'Class);
   overriding procedure After_Axis_Name_nonterminal10(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal10'Class);
   overriding procedure Visit_Axis_Name_nonterminal10(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal10'Class);
   overriding procedure Before_Axis_Name_nonterminal11(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal11'Class);
   overriding procedure After_Axis_Name_nonterminal11(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal11'Class);
   overriding procedure Visit_Axis_Name_nonterminal11(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal11'Class);
   overriding procedure Before_Axis_Name_nonterminal12(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal12'Class);
   overriding procedure After_Axis_Name_nonterminal12(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal12'Class);
   overriding procedure Visit_Axis_Name_nonterminal12(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal12'Class);
   overriding procedure Before_Axis_Name_nonterminal13(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal13'Class);
   overriding procedure After_Axis_Name_nonterminal13(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal13'Class);
   overriding procedure Visit_Axis_Name_nonterminal13(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal13'Class);
   overriding procedure Before_Node_Test_nonterminal1(
      I : access DFS;
      N : access Node_Test_Model.Node_Test_nonterminal1'Class);
   overriding procedure After_Node_Test_nonterminal1(
      I : access DFS;
      N : access Node_Test_Model.Node_Test_nonterminal1'Class);
   overriding procedure Visit_Node_Test_nonterminal1(
      I : access DFS;
      N : access Node_Test_Model.Node_Test_nonterminal1'Class);
   overriding procedure Before_Node_Test_nonterminal2(
      I : access DFS;
      N : access Node_Test_Model.Node_Test_nonterminal2'Class);
   overriding procedure After_Node_Test_nonterminal2(
      I : access DFS;
      N : access Node_Test_Model.Node_Test_nonterminal2'Class);
   overriding procedure Visit_Node_Test_nonterminal2(
      I : access DFS;
      N : access Node_Test_Model.Node_Test_nonterminal2'Class);
   overriding procedure Before_Node_Test_nonterminal3(
      I : access DFS;
      N : access Node_Test_Model.Node_Test_nonterminal3'Class);
   overriding procedure After_Node_Test_nonterminal3(
      I : access DFS;
      N : access Node_Test_Model.Node_Test_nonterminal3'Class);
   overriding procedure Visit_Node_Test_nonterminal3(
      I : access DFS;
      N : access Node_Test_Model.Node_Test_nonterminal3'Class);
   overriding procedure Before_Node_Type_nonterminal1(
      I : access DFS;
      N : access Node_Type_Model.Node_Type_nonterminal1'Class);
   overriding procedure After_Node_Type_nonterminal1(
      I : access DFS;
      N : access Node_Type_Model.Node_Type_nonterminal1'Class);
   overriding procedure Visit_Node_Type_nonterminal1(
      I : access DFS;
      N : access Node_Type_Model.Node_Type_nonterminal1'Class);
   overriding procedure Before_Node_Type_nonterminal2(
      I : access DFS;
      N : access Node_Type_Model.Node_Type_nonterminal2'Class);
   overriding procedure After_Node_Type_nonterminal2(
      I : access DFS;
      N : access Node_Type_Model.Node_Type_nonterminal2'Class);
   overriding procedure Visit_Node_Type_nonterminal2(
      I : access DFS;
      N : access Node_Type_Model.Node_Type_nonterminal2'Class);
   overriding procedure Before_Node_Type_nonterminal3(
      I : access DFS;
      N : access Node_Type_Model.Node_Type_nonterminal3'Class);
   overriding procedure After_Node_Type_nonterminal3(
      I : access DFS;
      N : access Node_Type_Model.Node_Type_nonterminal3'Class);
   overriding procedure Visit_Node_Type_nonterminal3(
      I : access DFS;
      N : access Node_Type_Model.Node_Type_nonterminal3'Class);
   overriding procedure Before_Node_Type_nonterminal4(
      I : access DFS;
      N : access Node_Type_Model.Node_Type_nonterminal4'Class);
   overriding procedure After_Node_Type_nonterminal4(
      I : access DFS;
      N : access Node_Type_Model.Node_Type_nonterminal4'Class);
   overriding procedure Visit_Node_Type_nonterminal4(
      I : access DFS;
      N : access Node_Type_Model.Node_Type_nonterminal4'Class);
   overriding procedure Before_Name_Test_nonterminal1(
      I : access DFS;
      N : access Name_Test_Model.Name_Test_nonterminal1'Class);
   overriding procedure After_Name_Test_nonterminal1(
      I : access DFS;
      N : access Name_Test_Model.Name_Test_nonterminal1'Class);
   overriding procedure Visit_Name_Test_nonterminal1(
      I : access DFS;
      N : access Name_Test_Model.Name_Test_nonterminal1'Class);
   overriding procedure Before_Name_Test_nonterminal2(
      I : access DFS;
      N : access Name_Test_Model.Name_Test_nonterminal2'Class);
   overriding procedure After_Name_Test_nonterminal2(
      I : access DFS;
      N : access Name_Test_Model.Name_Test_nonterminal2'Class);
   overriding procedure Visit_Name_Test_nonterminal2(
      I : access DFS;
      N : access Name_Test_Model.Name_Test_nonterminal2'Class);
   overriding procedure Before_Name_Test_nonterminal3(
      I : access DFS;
      N : access Name_Test_Model.Name_Test_nonterminal3'Class);
   overriding procedure After_Name_Test_nonterminal3(
      I : access DFS;
      N : access Name_Test_Model.Name_Test_nonterminal3'Class);
   overriding procedure Visit_Name_Test_nonterminal3(
      I : access DFS;
      N : access Name_Test_Model.Name_Test_nonterminal3'Class);
   overriding procedure Before_QName_nonterminal1(
      I : access DFS;
      N : access QName_Model.QName_nonterminal1'Class);
   overriding procedure After_QName_nonterminal1(
      I : access DFS;
      N : access QName_Model.QName_nonterminal1'Class);
   overriding procedure Visit_QName_nonterminal1(
      I : access DFS;
      N : access QName_Model.QName_nonterminal1'Class);
   overriding procedure Before_QName_nonterminal2(
      I : access DFS;
      N : access QName_Model.QName_nonterminal2'Class);
   overriding procedure After_QName_nonterminal2(
      I : access DFS;
      N : access QName_Model.QName_nonterminal2'Class);
   overriding procedure Visit_QName_nonterminal2(
      I : access DFS;
      N : access QName_Model.QName_nonterminal2'Class);
   overriding procedure Before_NCNAME_Or_ID_nonterminal1(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal1'Class);
   overriding procedure After_NCNAME_Or_ID_nonterminal1(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal1'Class);
   overriding procedure Visit_NCNAME_Or_ID_nonterminal1(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal1'Class);
   overriding procedure Before_NCNAME_Or_ID_nonterminal2(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal2'Class);
   overriding procedure After_NCNAME_Or_ID_nonterminal2(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal2'Class);
   overriding procedure Visit_NCNAME_Or_ID_nonterminal2(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal2'Class);
   overriding procedure Before_NCNAME_Or_ID_nonterminal3(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal3'Class);
   overriding procedure After_NCNAME_Or_ID_nonterminal3(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal3'Class);
   overriding procedure Visit_NCNAME_Or_ID_nonterminal3(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal3'Class);
   overriding procedure Before_NCNAME_Or_ID_nonterminal4(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal4'Class);
   overriding procedure After_NCNAME_Or_ID_nonterminal4(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal4'Class);
   overriding procedure Visit_NCNAME_Or_ID_nonterminal4(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal4'Class);
   overriding procedure Before_NCNAME_Or_ID_nonterminal5(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal5'Class);
   overriding procedure After_NCNAME_Or_ID_nonterminal5(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal5'Class);
   overriding procedure Visit_NCNAME_Or_ID_nonterminal5(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal5'Class);
   overriding procedure Before_NCNAME_Or_ID_nonterminal6(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal6'Class);
   overriding procedure After_NCNAME_Or_ID_nonterminal6(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal6'Class);
   overriding procedure Visit_NCNAME_Or_ID_nonterminal6(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal6'Class);
   overriding procedure Before_NCNAME_Or_ID_nonterminal7(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal7'Class);
   overriding procedure After_NCNAME_Or_ID_nonterminal7(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal7'Class);
   overriding procedure Visit_NCNAME_Or_ID_nonterminal7(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal7'Class);
   overriding procedure Before_Predicate_Expr_nonterminal(
      I : access DFS;
      N : access Predicate_Expr_Model.Predicate_Expr_nonterminal'Class);
   overriding procedure After_Predicate_Expr_nonterminal(
      I : access DFS;
      N : access Predicate_Expr_Model.Predicate_Expr_nonterminal'Class);
   overriding procedure Visit_Predicate_Expr_nonterminal(
      I : access DFS;
      N : access Predicate_Expr_Model.Predicate_Expr_nonterminal'Class);
   overriding procedure Before_Abbreviated_Absolute_Location_Path_nonterminal(
      I : access DFS;
      N : access Abbreviated_Absolute_Location_Path_Model.Abbreviated_Absolute_Location_Path_nonterminal'Class);
   overriding procedure After_Abbreviated_Absolute_Location_Path_nonterminal(
      I : access DFS;
      N : access Abbreviated_Absolute_Location_Path_Model.Abbreviated_Absolute_Location_Path_nonterminal'Class);
   overriding procedure Visit_Abbreviated_Absolute_Location_Path_nonterminal(
      I : access DFS;
      N : access Abbreviated_Absolute_Location_Path_Model.Abbreviated_Absolute_Location_Path_nonterminal'Class);
   overriding procedure Before_Double_Slash_nonterminal(
      I : access DFS;
      N : access Double_Slash_Model.Double_Slash_nonterminal'Class);
   overriding procedure After_Double_Slash_nonterminal(
      I : access DFS;
      N : access Double_Slash_Model.Double_Slash_nonterminal'Class);
   overriding procedure Visit_Double_Slash_nonterminal(
      I : access DFS;
      N : access Double_Slash_Model.Double_Slash_nonterminal'Class);
   overriding procedure Before_Abbreviated_Relative_Location_Path_nonterminal(
      I : access DFS;
      N : access Abbreviated_Relative_Location_Path_Model.Abbreviated_Relative_Location_Path_nonterminal'Class);
   overriding procedure After_Abbreviated_Relative_Location_Path_nonterminal(
      I : access DFS;
      N : access Abbreviated_Relative_Location_Path_Model.Abbreviated_Relative_Location_Path_nonterminal'Class);
   overriding procedure Visit_Abbreviated_Relative_Location_Path_nonterminal(
      I : access DFS;
      N : access Abbreviated_Relative_Location_Path_Model.Abbreviated_Relative_Location_Path_nonterminal'Class);
   overriding procedure Before_Abbreviated_Step_nonterminal1(
      I : access DFS;
      N : access Abbreviated_Step_Model.Abbreviated_Step_nonterminal1'Class);
   overriding procedure After_Abbreviated_Step_nonterminal1(
      I : access DFS;
      N : access Abbreviated_Step_Model.Abbreviated_Step_nonterminal1'Class);
   overriding procedure Visit_Abbreviated_Step_nonterminal1(
      I : access DFS;
      N : access Abbreviated_Step_Model.Abbreviated_Step_nonterminal1'Class);
   overriding procedure Before_Abbreviated_Step_nonterminal2(
      I : access DFS;
      N : access Abbreviated_Step_Model.Abbreviated_Step_nonterminal2'Class);
   overriding procedure After_Abbreviated_Step_nonterminal2(
      I : access DFS;
      N : access Abbreviated_Step_Model.Abbreviated_Step_nonterminal2'Class);
   overriding procedure Visit_Abbreviated_Step_nonterminal2(
      I : access DFS;
      N : access Abbreviated_Step_Model.Abbreviated_Step_nonterminal2'Class);
   overriding procedure Before_Expr_nonterminal(
      I : access DFS;
      N : access Expr_Model.Expr_nonterminal'Class);
   overriding procedure After_Expr_nonterminal(
      I : access DFS;
      N : access Expr_Model.Expr_nonterminal'Class);
   overriding procedure Visit_Expr_nonterminal(
      I : access DFS;
      N : access Expr_Model.Expr_nonterminal'Class);
   overriding procedure Before_Primary_Expr_nonterminal1(
      I : access DFS;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal1'Class);
   overriding procedure After_Primary_Expr_nonterminal1(
      I : access DFS;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal1'Class);
   overriding procedure Visit_Primary_Expr_nonterminal1(
      I : access DFS;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal1'Class);
   overriding procedure Before_Primary_Expr_nonterminal2(
      I : access DFS;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal2'Class);
   overriding procedure After_Primary_Expr_nonterminal2(
      I : access DFS;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal2'Class);
   overriding procedure Visit_Primary_Expr_nonterminal2(
      I : access DFS;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal2'Class);
   overriding procedure Before_Primary_Expr_nonterminal3(
      I : access DFS;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal3'Class);
   overriding procedure After_Primary_Expr_nonterminal3(
      I : access DFS;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal3'Class);
   overriding procedure Visit_Primary_Expr_nonterminal3(
      I : access DFS;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal3'Class);
   overriding procedure Before_Primary_Expr_nonterminal4(
      I : access DFS;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal4'Class);
   overriding procedure After_Primary_Expr_nonterminal4(
      I : access DFS;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal4'Class);
   overriding procedure Visit_Primary_Expr_nonterminal4(
      I : access DFS;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal4'Class);
   overriding procedure Before_Primary_Expr_nonterminal5(
      I : access DFS;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal5'Class);
   overriding procedure After_Primary_Expr_nonterminal5(
      I : access DFS;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal5'Class);
   overriding procedure Visit_Primary_Expr_nonterminal5(
      I : access DFS;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal5'Class);
   overriding procedure Before_Variable_Reference_nonterminal(
      I : access DFS;
      N : access Variable_Reference_Model.Variable_Reference_nonterminal'Class);
   overriding procedure After_Variable_Reference_nonterminal(
      I : access DFS;
      N : access Variable_Reference_Model.Variable_Reference_nonterminal'Class);
   overriding procedure Visit_Variable_Reference_nonterminal(
      I : access DFS;
      N : access Variable_Reference_Model.Variable_Reference_nonterminal'Class);
   overriding procedure Before_Function_Call_nonterminal(
      I : access DFS;
      N : access Function_Call_Model.Function_Call_nonterminal'Class);
   overriding procedure After_Function_Call_nonterminal(
      I : access DFS;
      N : access Function_Call_Model.Function_Call_nonterminal'Class);
   overriding procedure Visit_Function_Call_nonterminal(
      I : access DFS;
      N : access Function_Call_Model.Function_Call_nonterminal'Class);
   overriding procedure Before_Arguments_nonterminal1(
      I : access DFS;
      N : access Arguments_Model.Arguments_nonterminal1'Class);
   overriding procedure After_Arguments_nonterminal1(
      I : access DFS;
      N : access Arguments_Model.Arguments_nonterminal1'Class);
   overriding procedure Visit_Arguments_nonterminal1(
      I : access DFS;
      N : access Arguments_Model.Arguments_nonterminal1'Class);
   overriding procedure Before_Arguments_nonterminal2(
      I : access DFS;
      N : access Arguments_Model.Arguments_nonterminal2'Class);
   overriding procedure After_Arguments_nonterminal2(
      I : access DFS;
      N : access Arguments_Model.Arguments_nonterminal2'Class);
   overriding procedure Visit_Arguments_nonterminal2(
      I : access DFS;
      N : access Arguments_Model.Arguments_nonterminal2'Class);
   overriding procedure Before_Arguments_nonterminal3(
      I : access DFS;
      N : access Arguments_Model.Arguments_nonterminal3'Class);
   overriding procedure After_Arguments_nonterminal3(
      I : access DFS;
      N : access Arguments_Model.Arguments_nonterminal3'Class);
   overriding procedure Visit_Arguments_nonterminal3(
      I : access DFS;
      N : access Arguments_Model.Arguments_nonterminal3'Class);
   overriding procedure Before_Argument_nonterminal(
      I : access DFS;
      N : access Argument_Model.Argument_nonterminal'Class);
   overriding procedure After_Argument_nonterminal(
      I : access DFS;
      N : access Argument_Model.Argument_nonterminal'Class);
   overriding procedure Visit_Argument_nonterminal(
      I : access DFS;
      N : access Argument_Model.Argument_nonterminal'Class);
   overriding procedure Before_Function_Name_nonterminal(
      I : access DFS;
      N : access Function_Name_Model.Function_Name_nonterminal'Class);
   overriding procedure After_Function_Name_nonterminal(
      I : access DFS;
      N : access Function_Name_Model.Function_Name_nonterminal'Class);
   overriding procedure Visit_Function_Name_nonterminal(
      I : access DFS;
      N : access Function_Name_Model.Function_Name_nonterminal'Class);
   overriding procedure Before_Union_Expr_nonterminal1(
      I : access DFS;
      N : access Union_Expr_Model.Union_Expr_nonterminal1'Class);
   overriding procedure After_Union_Expr_nonterminal1(
      I : access DFS;
      N : access Union_Expr_Model.Union_Expr_nonterminal1'Class);
   overriding procedure Visit_Union_Expr_nonterminal1(
      I : access DFS;
      N : access Union_Expr_Model.Union_Expr_nonterminal1'Class);
   overriding procedure Before_Union_Expr_nonterminal2(
      I : access DFS;
      N : access Union_Expr_Model.Union_Expr_nonterminal2'Class);
   overriding procedure After_Union_Expr_nonterminal2(
      I : access DFS;
      N : access Union_Expr_Model.Union_Expr_nonterminal2'Class);
   overriding procedure Visit_Union_Expr_nonterminal2(
      I : access DFS;
      N : access Union_Expr_Model.Union_Expr_nonterminal2'Class);
   overriding procedure Before_Path_Expr_nonterminal1(
      I : access DFS;
      N : access Path_Expr_Model.Path_Expr_nonterminal1'Class);
   overriding procedure After_Path_Expr_nonterminal1(
      I : access DFS;
      N : access Path_Expr_Model.Path_Expr_nonterminal1'Class);
   overriding procedure Visit_Path_Expr_nonterminal1(
      I : access DFS;
      N : access Path_Expr_Model.Path_Expr_nonterminal1'Class);
   overriding procedure Before_Path_Expr_nonterminal2(
      I : access DFS;
      N : access Path_Expr_Model.Path_Expr_nonterminal2'Class);
   overriding procedure After_Path_Expr_nonterminal2(
      I : access DFS;
      N : access Path_Expr_Model.Path_Expr_nonterminal2'Class);
   overriding procedure Visit_Path_Expr_nonterminal2(
      I : access DFS;
      N : access Path_Expr_Model.Path_Expr_nonterminal2'Class);
   overriding procedure Before_Path_Expr_nonterminal3(
      I : access DFS;
      N : access Path_Expr_Model.Path_Expr_nonterminal3'Class);
   overriding procedure After_Path_Expr_nonterminal3(
      I : access DFS;
      N : access Path_Expr_Model.Path_Expr_nonterminal3'Class);
   overriding procedure Visit_Path_Expr_nonterminal3(
      I : access DFS;
      N : access Path_Expr_Model.Path_Expr_nonterminal3'Class);
   overriding procedure Before_Path_Expr_nonterminal4(
      I : access DFS;
      N : access Path_Expr_Model.Path_Expr_nonterminal4'Class);
   overriding procedure After_Path_Expr_nonterminal4(
      I : access DFS;
      N : access Path_Expr_Model.Path_Expr_nonterminal4'Class);
   overriding procedure Visit_Path_Expr_nonterminal4(
      I : access DFS;
      N : access Path_Expr_Model.Path_Expr_nonterminal4'Class);
   overriding procedure Before_Filter_Expr_nonterminal1(
      I : access DFS;
      N : access Filter_Expr_Model.Filter_Expr_nonterminal1'Class);
   overriding procedure After_Filter_Expr_nonterminal1(
      I : access DFS;
      N : access Filter_Expr_Model.Filter_Expr_nonterminal1'Class);
   overriding procedure Visit_Filter_Expr_nonterminal1(
      I : access DFS;
      N : access Filter_Expr_Model.Filter_Expr_nonterminal1'Class);
   overriding procedure Before_Filter_Expr_nonterminal2(
      I : access DFS;
      N : access Filter_Expr_Model.Filter_Expr_nonterminal2'Class);
   overriding procedure After_Filter_Expr_nonterminal2(
      I : access DFS;
      N : access Filter_Expr_Model.Filter_Expr_nonterminal2'Class);
   overriding procedure Visit_Filter_Expr_nonterminal2(
      I : access DFS;
      N : access Filter_Expr_Model.Filter_Expr_nonterminal2'Class);
   overriding procedure Before_Or_Expr_nonterminal1(
      I : access DFS;
      N : access Or_Expr_Model.Or_Expr_nonterminal1'Class);
   overriding procedure After_Or_Expr_nonterminal1(
      I : access DFS;
      N : access Or_Expr_Model.Or_Expr_nonterminal1'Class);
   overriding procedure Visit_Or_Expr_nonterminal1(
      I : access DFS;
      N : access Or_Expr_Model.Or_Expr_nonterminal1'Class);
   overriding procedure Before_Or_Expr_nonterminal2(
      I : access DFS;
      N : access Or_Expr_Model.Or_Expr_nonterminal2'Class);
   overriding procedure After_Or_Expr_nonterminal2(
      I : access DFS;
      N : access Or_Expr_Model.Or_Expr_nonterminal2'Class);
   overriding procedure Visit_Or_Expr_nonterminal2(
      I : access DFS;
      N : access Or_Expr_Model.Or_Expr_nonterminal2'Class);
   overriding procedure Before_And_Expr_nonterminal1(
      I : access DFS;
      N : access And_Expr_Model.And_Expr_nonterminal1'Class);
   overriding procedure After_And_Expr_nonterminal1(
      I : access DFS;
      N : access And_Expr_Model.And_Expr_nonterminal1'Class);
   overriding procedure Visit_And_Expr_nonterminal1(
      I : access DFS;
      N : access And_Expr_Model.And_Expr_nonterminal1'Class);
   overriding procedure Before_And_Expr_nonterminal2(
      I : access DFS;
      N : access And_Expr_Model.And_Expr_nonterminal2'Class);
   overriding procedure After_And_Expr_nonterminal2(
      I : access DFS;
      N : access And_Expr_Model.And_Expr_nonterminal2'Class);
   overriding procedure Visit_And_Expr_nonterminal2(
      I : access DFS;
      N : access And_Expr_Model.And_Expr_nonterminal2'Class);
   overriding procedure Before_Equality_Expr_nonterminal1(
      I : access DFS;
      N : access Equality_Expr_Model.Equality_Expr_nonterminal1'Class);
   overriding procedure After_Equality_Expr_nonterminal1(
      I : access DFS;
      N : access Equality_Expr_Model.Equality_Expr_nonterminal1'Class);
   overriding procedure Visit_Equality_Expr_nonterminal1(
      I : access DFS;
      N : access Equality_Expr_Model.Equality_Expr_nonterminal1'Class);
   overriding procedure Before_Equality_Expr_nonterminal2(
      I : access DFS;
      N : access Equality_Expr_Model.Equality_Expr_nonterminal2'Class);
   overriding procedure After_Equality_Expr_nonterminal2(
      I : access DFS;
      N : access Equality_Expr_Model.Equality_Expr_nonterminal2'Class);
   overriding procedure Visit_Equality_Expr_nonterminal2(
      I : access DFS;
      N : access Equality_Expr_Model.Equality_Expr_nonterminal2'Class);
   overriding procedure Before_Equality_Expr_nonterminal3(
      I : access DFS;
      N : access Equality_Expr_Model.Equality_Expr_nonterminal3'Class);
   overriding procedure After_Equality_Expr_nonterminal3(
      I : access DFS;
      N : access Equality_Expr_Model.Equality_Expr_nonterminal3'Class);
   overriding procedure Visit_Equality_Expr_nonterminal3(
      I : access DFS;
      N : access Equality_Expr_Model.Equality_Expr_nonterminal3'Class);
   overriding procedure Before_Relational_Expr_nonterminal1(
      I : access DFS;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal1'Class);
   overriding procedure After_Relational_Expr_nonterminal1(
      I : access DFS;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal1'Class);
   overriding procedure Visit_Relational_Expr_nonterminal1(
      I : access DFS;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal1'Class);
   overriding procedure Before_Relational_Expr_nonterminal2(
      I : access DFS;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal2'Class);
   overriding procedure After_Relational_Expr_nonterminal2(
      I : access DFS;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal2'Class);
   overriding procedure Visit_Relational_Expr_nonterminal2(
      I : access DFS;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal2'Class);
   overriding procedure Before_Relational_Expr_nonterminal3(
      I : access DFS;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal3'Class);
   overriding procedure After_Relational_Expr_nonterminal3(
      I : access DFS;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal3'Class);
   overriding procedure Visit_Relational_Expr_nonterminal3(
      I : access DFS;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal3'Class);
   overriding procedure Before_Relational_Expr_nonterminal4(
      I : access DFS;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal4'Class);
   overriding procedure After_Relational_Expr_nonterminal4(
      I : access DFS;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal4'Class);
   overriding procedure Visit_Relational_Expr_nonterminal4(
      I : access DFS;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal4'Class);
   overriding procedure Before_Relational_Expr_nonterminal5(
      I : access DFS;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal5'Class);
   overriding procedure After_Relational_Expr_nonterminal5(
      I : access DFS;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal5'Class);
   overriding procedure Visit_Relational_Expr_nonterminal5(
      I : access DFS;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal5'Class);
   overriding procedure Before_Additive_Expr_nonterminal1(
      I : access DFS;
      N : access Additive_Expr_Model.Additive_Expr_nonterminal1'Class);
   overriding procedure After_Additive_Expr_nonterminal1(
      I : access DFS;
      N : access Additive_Expr_Model.Additive_Expr_nonterminal1'Class);
   overriding procedure Visit_Additive_Expr_nonterminal1(
      I : access DFS;
      N : access Additive_Expr_Model.Additive_Expr_nonterminal1'Class);
   overriding procedure Before_Additive_Expr_nonterminal2(
      I : access DFS;
      N : access Additive_Expr_Model.Additive_Expr_nonterminal2'Class);
   overriding procedure After_Additive_Expr_nonterminal2(
      I : access DFS;
      N : access Additive_Expr_Model.Additive_Expr_nonterminal2'Class);
   overriding procedure Visit_Additive_Expr_nonterminal2(
      I : access DFS;
      N : access Additive_Expr_Model.Additive_Expr_nonterminal2'Class);
   overriding procedure Before_Additive_Expr_nonterminal3(
      I : access DFS;
      N : access Additive_Expr_Model.Additive_Expr_nonterminal3'Class);
   overriding procedure After_Additive_Expr_nonterminal3(
      I : access DFS;
      N : access Additive_Expr_Model.Additive_Expr_nonterminal3'Class);
   overriding procedure Visit_Additive_Expr_nonterminal3(
      I : access DFS;
      N : access Additive_Expr_Model.Additive_Expr_nonterminal3'Class);
   overriding procedure Before_Multiplicative_Expr_nonterminal1(
      I : access DFS;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal1'Class);
   overriding procedure After_Multiplicative_Expr_nonterminal1(
      I : access DFS;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal1'Class);
   overriding procedure Visit_Multiplicative_Expr_nonterminal1(
      I : access DFS;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal1'Class);
   overriding procedure Before_Multiplicative_Expr_nonterminal2(
      I : access DFS;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal2'Class);
   overriding procedure After_Multiplicative_Expr_nonterminal2(
      I : access DFS;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal2'Class);
   overriding procedure Visit_Multiplicative_Expr_nonterminal2(
      I : access DFS;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal2'Class);
   overriding procedure Before_Multiplicative_Expr_nonterminal3(
      I : access DFS;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal3'Class);
   overriding procedure After_Multiplicative_Expr_nonterminal3(
      I : access DFS;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal3'Class);
   overriding procedure Visit_Multiplicative_Expr_nonterminal3(
      I : access DFS;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal3'Class);
   overriding procedure Before_Multiplicative_Expr_nonterminal4(
      I : access DFS;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal4'Class);
   overriding procedure After_Multiplicative_Expr_nonterminal4(
      I : access DFS;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal4'Class);
   overriding procedure Visit_Multiplicative_Expr_nonterminal4(
      I : access DFS;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal4'Class);
   overriding procedure Before_Unary_Expr_nonterminal1(
      I : access DFS;
      N : access Unary_Expr_Model.Unary_Expr_nonterminal1'Class);
   overriding procedure After_Unary_Expr_nonterminal1(
      I : access DFS;
      N : access Unary_Expr_Model.Unary_Expr_nonterminal1'Class);
   overriding procedure Visit_Unary_Expr_nonterminal1(
      I : access DFS;
      N : access Unary_Expr_Model.Unary_Expr_nonterminal1'Class);
   overriding procedure Before_Unary_Expr_nonterminal2(
      I : access DFS;
      N : access Unary_Expr_Model.Unary_Expr_nonterminal2'Class);
   overriding procedure After_Unary_Expr_nonterminal2(
      I : access DFS;
      N : access Unary_Expr_Model.Unary_Expr_nonterminal2'Class);
   overriding procedure Visit_Unary_Expr_nonterminal2(
      I : access DFS;
      N : access Unary_Expr_Model.Unary_Expr_nonterminal2'Class);
   overriding procedure Before_Number_nonterminal1(
      I : access DFS;
      N : access Number_Model.Number_nonterminal1'Class);
   overriding procedure After_Number_nonterminal1(
      I : access DFS;
      N : access Number_Model.Number_nonterminal1'Class);
   overriding procedure Visit_Number_nonterminal1(
      I : access DFS;
      N : access Number_Model.Number_nonterminal1'Class);
   overriding procedure Before_Number_nonterminal2(
      I : access DFS;
      N : access Number_Model.Number_nonterminal2'Class);
   overriding procedure After_Number_nonterminal2(
      I : access DFS;
      N : access Number_Model.Number_nonterminal2'Class);
   overriding procedure Visit_Number_nonterminal2(
      I : access DFS;
      N : access Number_Model.Number_nonterminal2'Class);
   overriding procedure Before_Literal_nonterminal1(
      I : access DFS;
      N : access Literal_Model.Literal_nonterminal1'Class);
   overriding procedure After_Literal_nonterminal1(
      I : access DFS;
      N : access Literal_Model.Literal_nonterminal1'Class);
   overriding procedure Visit_Literal_nonterminal1(
      I : access DFS;
      N : access Literal_Model.Literal_nonterminal1'Class);
   overriding procedure Before_Literal_nonterminal2(
      I : access DFS;
      N : access Literal_Model.Literal_nonterminal2'Class);
   overriding procedure After_Literal_nonterminal2(
      I : access DFS;
      N : access Literal_Model.Literal_nonterminal2'Class);
   overriding procedure Visit_Literal_nonterminal2(
      I : access DFS;
      N : access Literal_Model.Literal_nonterminal2'Class);
end XPath_DFS;
