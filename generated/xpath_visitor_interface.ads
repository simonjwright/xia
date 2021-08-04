-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with Literal_Model;
limited with Number_Model;
limited with Unary_Expr_Model;
limited with Multiplicative_Expr_Model;
limited with Additive_Expr_Model;
limited with Relational_Expr_Model;
limited with Equality_Expr_Model;
limited with And_Expr_Model;
limited with Or_Expr_Model;
limited with Filter_Expr_Model;
limited with Path_Expr_Model;
limited with Union_Expr_Model;
limited with Function_Name_Model;
limited with Argument_Model;
limited with Arguments_Model;
limited with Function_Call_Model;
limited with Variable_Reference_Model;
limited with Primary_Expr_Model;
limited with Expr_Model;
limited with Abbreviated_Step_Model;
limited with Abbreviated_Relative_Location_Path_Model;
limited with Double_Slash_Model;
limited with Abbreviated_Absolute_Location_Path_Model;
limited with Predicate_Expr_Model;
limited with NCNAME_Or_ID_Model;
limited with QName_Model;
limited with Name_Test_Model;
limited with Node_Type_Model;
limited with Node_Test_Model;
limited with Axis_Name_Model;
limited with Axis_Specifier_Model;
limited with R_Bracket_Model;
limited with L_Bracket_Model;
limited with Predicate_Model;
limited with Abbreviated_Step_Base_Model;
limited with Step_Base_Model;
limited with Predicates_Model;
limited with Step_Model;
limited with Relative_Location_Path_Model;
limited with Absolute_Location_Path_Model;
limited with Location_Path_Model;
limited with XPath_Model;
package XPath_Visitor_Interface is
   type Visit_XPath_Interface is interface;

   procedure Visit_Parseable_Token(
      I : access Visit_XPath_Interface;
      T : access XPath_Model.Parseable_Token'Class) is null;

   procedure Before_Location_Path_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Location_Path_Model.Location_Path_nonterminal1'Class) is null;
   procedure Visit_Location_Path_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Location_Path_Model.Location_Path_nonterminal1'Class) is abstract;
   procedure After_Location_Path_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Location_Path_Model.Location_Path_nonterminal1'Class) is null;

   procedure Before_Location_Path_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Location_Path_Model.Location_Path_nonterminal2'Class) is null;
   procedure Visit_Location_Path_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Location_Path_Model.Location_Path_nonterminal2'Class) is abstract;
   procedure After_Location_Path_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Location_Path_Model.Location_Path_nonterminal2'Class) is null;

   procedure Before_Absolute_Location_Path_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal1'Class) is null;
   procedure Visit_Absolute_Location_Path_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal1'Class) is abstract;
   procedure After_Absolute_Location_Path_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal1'Class) is null;

   procedure Before_Absolute_Location_Path_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal2'Class) is null;
   procedure Visit_Absolute_Location_Path_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal2'Class) is abstract;
   procedure After_Absolute_Location_Path_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal2'Class) is null;

   procedure Before_Absolute_Location_Path_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal3'Class) is null;
   procedure Visit_Absolute_Location_Path_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal3'Class) is abstract;
   procedure After_Absolute_Location_Path_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal3'Class) is null;

   procedure Before_Relative_Location_Path_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal1'Class) is null;
   procedure Visit_Relative_Location_Path_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal1'Class) is abstract;
   procedure After_Relative_Location_Path_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal1'Class) is null;

   procedure Before_Relative_Location_Path_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal2'Class) is null;
   procedure Visit_Relative_Location_Path_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal2'Class) is abstract;
   procedure After_Relative_Location_Path_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal2'Class) is null;

   procedure Before_Relative_Location_Path_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal3'Class) is null;
   procedure Visit_Relative_Location_Path_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal3'Class) is abstract;
   procedure After_Relative_Location_Path_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal3'Class) is null;

   procedure Before_Step_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Step_Model.Step_nonterminal1'Class) is null;
   procedure Visit_Step_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Step_Model.Step_nonterminal1'Class) is abstract;
   procedure After_Step_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Step_Model.Step_nonterminal1'Class) is null;

   procedure Before_Step_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Step_Model.Step_nonterminal2'Class) is null;
   procedure Visit_Step_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Step_Model.Step_nonterminal2'Class) is abstract;
   procedure After_Step_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Step_Model.Step_nonterminal2'Class) is null;

   procedure Before_Predicates_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Predicates_Model.Predicates_nonterminal1'Class) is null;
   procedure Visit_Predicates_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Predicates_Model.Predicates_nonterminal1'Class) is abstract;
   procedure After_Predicates_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Predicates_Model.Predicates_nonterminal1'Class) is null;

   procedure Before_Predicates_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Predicates_Model.Predicates_nonterminal2'Class) is null;
   procedure Visit_Predicates_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Predicates_Model.Predicates_nonterminal2'Class) is abstract;
   procedure After_Predicates_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Predicates_Model.Predicates_nonterminal2'Class) is null;

   procedure Before_Step_Base_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Step_Base_Model.Step_Base_nonterminal1'Class) is null;
   procedure Visit_Step_Base_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Step_Base_Model.Step_Base_nonterminal1'Class) is abstract;
   procedure After_Step_Base_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Step_Base_Model.Step_Base_nonterminal1'Class) is null;

   procedure Before_Step_Base_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Step_Base_Model.Step_Base_nonterminal2'Class) is null;
   procedure Visit_Step_Base_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Step_Base_Model.Step_Base_nonterminal2'Class) is abstract;
   procedure After_Step_Base_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Step_Base_Model.Step_Base_nonterminal2'Class) is null;

   procedure Before_Abbreviated_Step_Base_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Abbreviated_Step_Base_Model.Abbreviated_Step_Base_nonterminal1'Class) is null;
   procedure Visit_Abbreviated_Step_Base_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Abbreviated_Step_Base_Model.Abbreviated_Step_Base_nonterminal1'Class) is abstract;
   procedure After_Abbreviated_Step_Base_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Abbreviated_Step_Base_Model.Abbreviated_Step_Base_nonterminal1'Class) is null;

   procedure Before_Abbreviated_Step_Base_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Abbreviated_Step_Base_Model.Abbreviated_Step_Base_nonterminal2'Class) is null;
   procedure Visit_Abbreviated_Step_Base_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Abbreviated_Step_Base_Model.Abbreviated_Step_Base_nonterminal2'Class) is abstract;
   procedure After_Abbreviated_Step_Base_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Abbreviated_Step_Base_Model.Abbreviated_Step_Base_nonterminal2'Class) is null;

   procedure Before_Predicate_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Predicate_Model.Predicate_nonterminal'Class) is null;
   procedure Visit_Predicate_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Predicate_Model.Predicate_nonterminal'Class) is abstract;
   procedure After_Predicate_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Predicate_Model.Predicate_nonterminal'Class) is null;

   procedure Before_L_Bracket_nonterminal(
      I : access Visit_XPath_Interface;
      N : access L_Bracket_Model.L_Bracket_nonterminal'Class) is null;
   procedure Visit_L_Bracket_nonterminal(
      I : access Visit_XPath_Interface;
      N : access L_Bracket_Model.L_Bracket_nonterminal'Class) is abstract;
   procedure After_L_Bracket_nonterminal(
      I : access Visit_XPath_Interface;
      N : access L_Bracket_Model.L_Bracket_nonterminal'Class) is null;

   procedure Before_R_Bracket_nonterminal(
      I : access Visit_XPath_Interface;
      N : access R_Bracket_Model.R_Bracket_nonterminal'Class) is null;
   procedure Visit_R_Bracket_nonterminal(
      I : access Visit_XPath_Interface;
      N : access R_Bracket_Model.R_Bracket_nonterminal'Class) is abstract;
   procedure After_R_Bracket_nonterminal(
      I : access Visit_XPath_Interface;
      N : access R_Bracket_Model.R_Bracket_nonterminal'Class) is null;

   procedure Before_Axis_Specifier_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Axis_Specifier_Model.Axis_Specifier_nonterminal'Class) is null;
   procedure Visit_Axis_Specifier_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Axis_Specifier_Model.Axis_Specifier_nonterminal'Class) is abstract;
   procedure After_Axis_Specifier_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Axis_Specifier_Model.Axis_Specifier_nonterminal'Class) is null;

   procedure Before_Axis_Name_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal1'Class) is null;
   procedure Visit_Axis_Name_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal1'Class) is abstract;
   procedure After_Axis_Name_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal1'Class) is null;

   procedure Before_Axis_Name_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal2'Class) is null;
   procedure Visit_Axis_Name_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal2'Class) is abstract;
   procedure After_Axis_Name_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal2'Class) is null;

   procedure Before_Axis_Name_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal3'Class) is null;
   procedure Visit_Axis_Name_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal3'Class) is abstract;
   procedure After_Axis_Name_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal3'Class) is null;

   procedure Before_Axis_Name_nonterminal4(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal4'Class) is null;
   procedure Visit_Axis_Name_nonterminal4(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal4'Class) is abstract;
   procedure After_Axis_Name_nonterminal4(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal4'Class) is null;

   procedure Before_Axis_Name_nonterminal5(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal5'Class) is null;
   procedure Visit_Axis_Name_nonterminal5(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal5'Class) is abstract;
   procedure After_Axis_Name_nonterminal5(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal5'Class) is null;

   procedure Before_Axis_Name_nonterminal6(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal6'Class) is null;
   procedure Visit_Axis_Name_nonterminal6(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal6'Class) is abstract;
   procedure After_Axis_Name_nonterminal6(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal6'Class) is null;

   procedure Before_Axis_Name_nonterminal7(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal7'Class) is null;
   procedure Visit_Axis_Name_nonterminal7(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal7'Class) is abstract;
   procedure After_Axis_Name_nonterminal7(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal7'Class) is null;

   procedure Before_Axis_Name_nonterminal8(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal8'Class) is null;
   procedure Visit_Axis_Name_nonterminal8(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal8'Class) is abstract;
   procedure After_Axis_Name_nonterminal8(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal8'Class) is null;

   procedure Before_Axis_Name_nonterminal9(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal9'Class) is null;
   procedure Visit_Axis_Name_nonterminal9(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal9'Class) is abstract;
   procedure After_Axis_Name_nonterminal9(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal9'Class) is null;

   procedure Before_Axis_Name_nonterminal10(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal10'Class) is null;
   procedure Visit_Axis_Name_nonterminal10(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal10'Class) is abstract;
   procedure After_Axis_Name_nonterminal10(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal10'Class) is null;

   procedure Before_Axis_Name_nonterminal11(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal11'Class) is null;
   procedure Visit_Axis_Name_nonterminal11(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal11'Class) is abstract;
   procedure After_Axis_Name_nonterminal11(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal11'Class) is null;

   procedure Before_Axis_Name_nonterminal12(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal12'Class) is null;
   procedure Visit_Axis_Name_nonterminal12(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal12'Class) is abstract;
   procedure After_Axis_Name_nonterminal12(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal12'Class) is null;

   procedure Before_Axis_Name_nonterminal13(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal13'Class) is null;
   procedure Visit_Axis_Name_nonterminal13(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal13'Class) is abstract;
   procedure After_Axis_Name_nonterminal13(
      I : access Visit_XPath_Interface;
      N : access Axis_Name_Model.Axis_Name_nonterminal13'Class) is null;

   procedure Before_Node_Test_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Node_Test_Model.Node_Test_nonterminal1'Class) is null;
   procedure Visit_Node_Test_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Node_Test_Model.Node_Test_nonterminal1'Class) is abstract;
   procedure After_Node_Test_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Node_Test_Model.Node_Test_nonterminal1'Class) is null;

   procedure Before_Node_Test_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Node_Test_Model.Node_Test_nonterminal2'Class) is null;
   procedure Visit_Node_Test_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Node_Test_Model.Node_Test_nonterminal2'Class) is abstract;
   procedure After_Node_Test_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Node_Test_Model.Node_Test_nonterminal2'Class) is null;

   procedure Before_Node_Test_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Node_Test_Model.Node_Test_nonterminal3'Class) is null;
   procedure Visit_Node_Test_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Node_Test_Model.Node_Test_nonterminal3'Class) is abstract;
   procedure After_Node_Test_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Node_Test_Model.Node_Test_nonterminal3'Class) is null;

   procedure Before_Node_Type_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Node_Type_Model.Node_Type_nonterminal1'Class) is null;
   procedure Visit_Node_Type_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Node_Type_Model.Node_Type_nonterminal1'Class) is abstract;
   procedure After_Node_Type_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Node_Type_Model.Node_Type_nonterminal1'Class) is null;

   procedure Before_Node_Type_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Node_Type_Model.Node_Type_nonterminal2'Class) is null;
   procedure Visit_Node_Type_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Node_Type_Model.Node_Type_nonterminal2'Class) is abstract;
   procedure After_Node_Type_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Node_Type_Model.Node_Type_nonterminal2'Class) is null;

   procedure Before_Node_Type_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Node_Type_Model.Node_Type_nonterminal3'Class) is null;
   procedure Visit_Node_Type_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Node_Type_Model.Node_Type_nonterminal3'Class) is abstract;
   procedure After_Node_Type_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Node_Type_Model.Node_Type_nonterminal3'Class) is null;

   procedure Before_Node_Type_nonterminal4(
      I : access Visit_XPath_Interface;
      N : access Node_Type_Model.Node_Type_nonterminal4'Class) is null;
   procedure Visit_Node_Type_nonterminal4(
      I : access Visit_XPath_Interface;
      N : access Node_Type_Model.Node_Type_nonterminal4'Class) is abstract;
   procedure After_Node_Type_nonterminal4(
      I : access Visit_XPath_Interface;
      N : access Node_Type_Model.Node_Type_nonterminal4'Class) is null;

   procedure Before_Name_Test_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Name_Test_Model.Name_Test_nonterminal1'Class) is null;
   procedure Visit_Name_Test_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Name_Test_Model.Name_Test_nonterminal1'Class) is abstract;
   procedure After_Name_Test_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Name_Test_Model.Name_Test_nonterminal1'Class) is null;

   procedure Before_Name_Test_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Name_Test_Model.Name_Test_nonterminal2'Class) is null;
   procedure Visit_Name_Test_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Name_Test_Model.Name_Test_nonterminal2'Class) is abstract;
   procedure After_Name_Test_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Name_Test_Model.Name_Test_nonterminal2'Class) is null;

   procedure Before_Name_Test_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Name_Test_Model.Name_Test_nonterminal3'Class) is null;
   procedure Visit_Name_Test_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Name_Test_Model.Name_Test_nonterminal3'Class) is abstract;
   procedure After_Name_Test_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Name_Test_Model.Name_Test_nonterminal3'Class) is null;

   procedure Before_QName_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access QName_Model.QName_nonterminal1'Class) is null;
   procedure Visit_QName_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access QName_Model.QName_nonterminal1'Class) is abstract;
   procedure After_QName_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access QName_Model.QName_nonterminal1'Class) is null;

   procedure Before_QName_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access QName_Model.QName_nonterminal2'Class) is null;
   procedure Visit_QName_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access QName_Model.QName_nonterminal2'Class) is abstract;
   procedure After_QName_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access QName_Model.QName_nonterminal2'Class) is null;

   procedure Before_NCNAME_Or_ID_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal1'Class) is null;
   procedure Visit_NCNAME_Or_ID_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal1'Class) is abstract;
   procedure After_NCNAME_Or_ID_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal1'Class) is null;

   procedure Before_NCNAME_Or_ID_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal2'Class) is null;
   procedure Visit_NCNAME_Or_ID_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal2'Class) is abstract;
   procedure After_NCNAME_Or_ID_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal2'Class) is null;

   procedure Before_NCNAME_Or_ID_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal3'Class) is null;
   procedure Visit_NCNAME_Or_ID_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal3'Class) is abstract;
   procedure After_NCNAME_Or_ID_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal3'Class) is null;

   procedure Before_NCNAME_Or_ID_nonterminal4(
      I : access Visit_XPath_Interface;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal4'Class) is null;
   procedure Visit_NCNAME_Or_ID_nonterminal4(
      I : access Visit_XPath_Interface;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal4'Class) is abstract;
   procedure After_NCNAME_Or_ID_nonterminal4(
      I : access Visit_XPath_Interface;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal4'Class) is null;

   procedure Before_NCNAME_Or_ID_nonterminal5(
      I : access Visit_XPath_Interface;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal5'Class) is null;
   procedure Visit_NCNAME_Or_ID_nonterminal5(
      I : access Visit_XPath_Interface;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal5'Class) is abstract;
   procedure After_NCNAME_Or_ID_nonterminal5(
      I : access Visit_XPath_Interface;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal5'Class) is null;

   procedure Before_NCNAME_Or_ID_nonterminal6(
      I : access Visit_XPath_Interface;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal6'Class) is null;
   procedure Visit_NCNAME_Or_ID_nonterminal6(
      I : access Visit_XPath_Interface;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal6'Class) is abstract;
   procedure After_NCNAME_Or_ID_nonterminal6(
      I : access Visit_XPath_Interface;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal6'Class) is null;

   procedure Before_NCNAME_Or_ID_nonterminal7(
      I : access Visit_XPath_Interface;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal7'Class) is null;
   procedure Visit_NCNAME_Or_ID_nonterminal7(
      I : access Visit_XPath_Interface;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal7'Class) is abstract;
   procedure After_NCNAME_Or_ID_nonterminal7(
      I : access Visit_XPath_Interface;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal7'Class) is null;

   procedure Before_Predicate_Expr_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Predicate_Expr_Model.Predicate_Expr_nonterminal'Class) is null;
   procedure Visit_Predicate_Expr_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Predicate_Expr_Model.Predicate_Expr_nonterminal'Class) is abstract;
   procedure After_Predicate_Expr_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Predicate_Expr_Model.Predicate_Expr_nonterminal'Class) is null;

   procedure Before_Abbreviated_Absolute_Location_Path_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Abbreviated_Absolute_Location_Path_Model.Abbreviated_Absolute_Location_Path_nonterminal'Class) is null;
   procedure Visit_Abbreviated_Absolute_Location_Path_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Abbreviated_Absolute_Location_Path_Model.Abbreviated_Absolute_Location_Path_nonterminal'Class) is abstract;
   procedure After_Abbreviated_Absolute_Location_Path_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Abbreviated_Absolute_Location_Path_Model.Abbreviated_Absolute_Location_Path_nonterminal'Class) is null;

   procedure Before_Double_Slash_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Double_Slash_Model.Double_Slash_nonterminal'Class) is null;
   procedure Visit_Double_Slash_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Double_Slash_Model.Double_Slash_nonterminal'Class) is abstract;
   procedure After_Double_Slash_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Double_Slash_Model.Double_Slash_nonterminal'Class) is null;

   procedure Before_Abbreviated_Relative_Location_Path_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Abbreviated_Relative_Location_Path_Model.Abbreviated_Relative_Location_Path_nonterminal'Class) is null;
   procedure Visit_Abbreviated_Relative_Location_Path_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Abbreviated_Relative_Location_Path_Model.Abbreviated_Relative_Location_Path_nonterminal'Class) is abstract;
   procedure After_Abbreviated_Relative_Location_Path_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Abbreviated_Relative_Location_Path_Model.Abbreviated_Relative_Location_Path_nonterminal'Class) is null;

   procedure Before_Abbreviated_Step_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Abbreviated_Step_Model.Abbreviated_Step_nonterminal1'Class) is null;
   procedure Visit_Abbreviated_Step_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Abbreviated_Step_Model.Abbreviated_Step_nonterminal1'Class) is abstract;
   procedure After_Abbreviated_Step_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Abbreviated_Step_Model.Abbreviated_Step_nonterminal1'Class) is null;

   procedure Before_Abbreviated_Step_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Abbreviated_Step_Model.Abbreviated_Step_nonterminal2'Class) is null;
   procedure Visit_Abbreviated_Step_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Abbreviated_Step_Model.Abbreviated_Step_nonterminal2'Class) is abstract;
   procedure After_Abbreviated_Step_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Abbreviated_Step_Model.Abbreviated_Step_nonterminal2'Class) is null;

   procedure Before_Expr_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Expr_Model.Expr_nonterminal'Class) is null;
   procedure Visit_Expr_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Expr_Model.Expr_nonterminal'Class) is abstract;
   procedure After_Expr_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Expr_Model.Expr_nonterminal'Class) is null;

   procedure Before_Primary_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal1'Class) is null;
   procedure Visit_Primary_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal1'Class) is abstract;
   procedure After_Primary_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal1'Class) is null;

   procedure Before_Primary_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal2'Class) is null;
   procedure Visit_Primary_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal2'Class) is abstract;
   procedure After_Primary_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal2'Class) is null;

   procedure Before_Primary_Expr_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal3'Class) is null;
   procedure Visit_Primary_Expr_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal3'Class) is abstract;
   procedure After_Primary_Expr_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal3'Class) is null;

   procedure Before_Primary_Expr_nonterminal4(
      I : access Visit_XPath_Interface;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal4'Class) is null;
   procedure Visit_Primary_Expr_nonterminal4(
      I : access Visit_XPath_Interface;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal4'Class) is abstract;
   procedure After_Primary_Expr_nonterminal4(
      I : access Visit_XPath_Interface;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal4'Class) is null;

   procedure Before_Primary_Expr_nonterminal5(
      I : access Visit_XPath_Interface;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal5'Class) is null;
   procedure Visit_Primary_Expr_nonterminal5(
      I : access Visit_XPath_Interface;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal5'Class) is abstract;
   procedure After_Primary_Expr_nonterminal5(
      I : access Visit_XPath_Interface;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal5'Class) is null;

   procedure Before_Variable_Reference_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Variable_Reference_Model.Variable_Reference_nonterminal'Class) is null;
   procedure Visit_Variable_Reference_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Variable_Reference_Model.Variable_Reference_nonterminal'Class) is abstract;
   procedure After_Variable_Reference_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Variable_Reference_Model.Variable_Reference_nonterminal'Class) is null;

   procedure Before_Function_Call_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Function_Call_Model.Function_Call_nonterminal'Class) is null;
   procedure Visit_Function_Call_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Function_Call_Model.Function_Call_nonterminal'Class) is abstract;
   procedure After_Function_Call_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Function_Call_Model.Function_Call_nonterminal'Class) is null;

   procedure Before_Arguments_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Arguments_Model.Arguments_nonterminal1'Class) is null;
   procedure Visit_Arguments_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Arguments_Model.Arguments_nonterminal1'Class) is abstract;
   procedure After_Arguments_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Arguments_Model.Arguments_nonterminal1'Class) is null;

   procedure Before_Arguments_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Arguments_Model.Arguments_nonterminal2'Class) is null;
   procedure Visit_Arguments_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Arguments_Model.Arguments_nonterminal2'Class) is abstract;
   procedure After_Arguments_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Arguments_Model.Arguments_nonterminal2'Class) is null;

   procedure Before_Arguments_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Arguments_Model.Arguments_nonterminal3'Class) is null;
   procedure Visit_Arguments_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Arguments_Model.Arguments_nonterminal3'Class) is abstract;
   procedure After_Arguments_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Arguments_Model.Arguments_nonterminal3'Class) is null;

   procedure Before_Argument_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Argument_Model.Argument_nonterminal'Class) is null;
   procedure Visit_Argument_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Argument_Model.Argument_nonterminal'Class) is abstract;
   procedure After_Argument_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Argument_Model.Argument_nonterminal'Class) is null;

   procedure Before_Function_Name_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Function_Name_Model.Function_Name_nonterminal'Class) is null;
   procedure Visit_Function_Name_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Function_Name_Model.Function_Name_nonterminal'Class) is abstract;
   procedure After_Function_Name_nonterminal(
      I : access Visit_XPath_Interface;
      N : access Function_Name_Model.Function_Name_nonterminal'Class) is null;

   procedure Before_Union_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Union_Expr_Model.Union_Expr_nonterminal1'Class) is null;
   procedure Visit_Union_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Union_Expr_Model.Union_Expr_nonterminal1'Class) is abstract;
   procedure After_Union_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Union_Expr_Model.Union_Expr_nonterminal1'Class) is null;

   procedure Before_Union_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Union_Expr_Model.Union_Expr_nonterminal2'Class) is null;
   procedure Visit_Union_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Union_Expr_Model.Union_Expr_nonterminal2'Class) is abstract;
   procedure After_Union_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Union_Expr_Model.Union_Expr_nonterminal2'Class) is null;

   procedure Before_Path_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Path_Expr_Model.Path_Expr_nonterminal1'Class) is null;
   procedure Visit_Path_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Path_Expr_Model.Path_Expr_nonterminal1'Class) is abstract;
   procedure After_Path_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Path_Expr_Model.Path_Expr_nonterminal1'Class) is null;

   procedure Before_Path_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Path_Expr_Model.Path_Expr_nonterminal2'Class) is null;
   procedure Visit_Path_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Path_Expr_Model.Path_Expr_nonterminal2'Class) is abstract;
   procedure After_Path_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Path_Expr_Model.Path_Expr_nonterminal2'Class) is null;

   procedure Before_Path_Expr_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Path_Expr_Model.Path_Expr_nonterminal3'Class) is null;
   procedure Visit_Path_Expr_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Path_Expr_Model.Path_Expr_nonterminal3'Class) is abstract;
   procedure After_Path_Expr_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Path_Expr_Model.Path_Expr_nonterminal3'Class) is null;

   procedure Before_Path_Expr_nonterminal4(
      I : access Visit_XPath_Interface;
      N : access Path_Expr_Model.Path_Expr_nonterminal4'Class) is null;
   procedure Visit_Path_Expr_nonterminal4(
      I : access Visit_XPath_Interface;
      N : access Path_Expr_Model.Path_Expr_nonterminal4'Class) is abstract;
   procedure After_Path_Expr_nonterminal4(
      I : access Visit_XPath_Interface;
      N : access Path_Expr_Model.Path_Expr_nonterminal4'Class) is null;

   procedure Before_Filter_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Filter_Expr_Model.Filter_Expr_nonterminal1'Class) is null;
   procedure Visit_Filter_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Filter_Expr_Model.Filter_Expr_nonterminal1'Class) is abstract;
   procedure After_Filter_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Filter_Expr_Model.Filter_Expr_nonterminal1'Class) is null;

   procedure Before_Filter_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Filter_Expr_Model.Filter_Expr_nonterminal2'Class) is null;
   procedure Visit_Filter_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Filter_Expr_Model.Filter_Expr_nonterminal2'Class) is abstract;
   procedure After_Filter_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Filter_Expr_Model.Filter_Expr_nonterminal2'Class) is null;

   procedure Before_Or_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Or_Expr_Model.Or_Expr_nonterminal1'Class) is null;
   procedure Visit_Or_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Or_Expr_Model.Or_Expr_nonterminal1'Class) is abstract;
   procedure After_Or_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Or_Expr_Model.Or_Expr_nonterminal1'Class) is null;

   procedure Before_Or_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Or_Expr_Model.Or_Expr_nonterminal2'Class) is null;
   procedure Visit_Or_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Or_Expr_Model.Or_Expr_nonterminal2'Class) is abstract;
   procedure After_Or_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Or_Expr_Model.Or_Expr_nonterminal2'Class) is null;

   procedure Before_And_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access And_Expr_Model.And_Expr_nonterminal1'Class) is null;
   procedure Visit_And_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access And_Expr_Model.And_Expr_nonterminal1'Class) is abstract;
   procedure After_And_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access And_Expr_Model.And_Expr_nonterminal1'Class) is null;

   procedure Before_And_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access And_Expr_Model.And_Expr_nonterminal2'Class) is null;
   procedure Visit_And_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access And_Expr_Model.And_Expr_nonterminal2'Class) is abstract;
   procedure After_And_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access And_Expr_Model.And_Expr_nonterminal2'Class) is null;

   procedure Before_Equality_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Equality_Expr_Model.Equality_Expr_nonterminal1'Class) is null;
   procedure Visit_Equality_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Equality_Expr_Model.Equality_Expr_nonterminal1'Class) is abstract;
   procedure After_Equality_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Equality_Expr_Model.Equality_Expr_nonterminal1'Class) is null;

   procedure Before_Equality_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Equality_Expr_Model.Equality_Expr_nonterminal2'Class) is null;
   procedure Visit_Equality_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Equality_Expr_Model.Equality_Expr_nonterminal2'Class) is abstract;
   procedure After_Equality_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Equality_Expr_Model.Equality_Expr_nonterminal2'Class) is null;

   procedure Before_Equality_Expr_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Equality_Expr_Model.Equality_Expr_nonterminal3'Class) is null;
   procedure Visit_Equality_Expr_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Equality_Expr_Model.Equality_Expr_nonterminal3'Class) is abstract;
   procedure After_Equality_Expr_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Equality_Expr_Model.Equality_Expr_nonterminal3'Class) is null;

   procedure Before_Relational_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal1'Class) is null;
   procedure Visit_Relational_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal1'Class) is abstract;
   procedure After_Relational_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal1'Class) is null;

   procedure Before_Relational_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal2'Class) is null;
   procedure Visit_Relational_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal2'Class) is abstract;
   procedure After_Relational_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal2'Class) is null;

   procedure Before_Relational_Expr_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal3'Class) is null;
   procedure Visit_Relational_Expr_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal3'Class) is abstract;
   procedure After_Relational_Expr_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal3'Class) is null;

   procedure Before_Relational_Expr_nonterminal4(
      I : access Visit_XPath_Interface;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal4'Class) is null;
   procedure Visit_Relational_Expr_nonterminal4(
      I : access Visit_XPath_Interface;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal4'Class) is abstract;
   procedure After_Relational_Expr_nonterminal4(
      I : access Visit_XPath_Interface;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal4'Class) is null;

   procedure Before_Relational_Expr_nonterminal5(
      I : access Visit_XPath_Interface;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal5'Class) is null;
   procedure Visit_Relational_Expr_nonterminal5(
      I : access Visit_XPath_Interface;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal5'Class) is abstract;
   procedure After_Relational_Expr_nonterminal5(
      I : access Visit_XPath_Interface;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal5'Class) is null;

   procedure Before_Additive_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Additive_Expr_Model.Additive_Expr_nonterminal1'Class) is null;
   procedure Visit_Additive_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Additive_Expr_Model.Additive_Expr_nonterminal1'Class) is abstract;
   procedure After_Additive_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Additive_Expr_Model.Additive_Expr_nonterminal1'Class) is null;

   procedure Before_Additive_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Additive_Expr_Model.Additive_Expr_nonterminal2'Class) is null;
   procedure Visit_Additive_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Additive_Expr_Model.Additive_Expr_nonterminal2'Class) is abstract;
   procedure After_Additive_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Additive_Expr_Model.Additive_Expr_nonterminal2'Class) is null;

   procedure Before_Additive_Expr_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Additive_Expr_Model.Additive_Expr_nonterminal3'Class) is null;
   procedure Visit_Additive_Expr_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Additive_Expr_Model.Additive_Expr_nonterminal3'Class) is abstract;
   procedure After_Additive_Expr_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Additive_Expr_Model.Additive_Expr_nonterminal3'Class) is null;

   procedure Before_Multiplicative_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal1'Class) is null;
   procedure Visit_Multiplicative_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal1'Class) is abstract;
   procedure After_Multiplicative_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal1'Class) is null;

   procedure Before_Multiplicative_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal2'Class) is null;
   procedure Visit_Multiplicative_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal2'Class) is abstract;
   procedure After_Multiplicative_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal2'Class) is null;

   procedure Before_Multiplicative_Expr_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal3'Class) is null;
   procedure Visit_Multiplicative_Expr_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal3'Class) is abstract;
   procedure After_Multiplicative_Expr_nonterminal3(
      I : access Visit_XPath_Interface;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal3'Class) is null;

   procedure Before_Multiplicative_Expr_nonterminal4(
      I : access Visit_XPath_Interface;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal4'Class) is null;
   procedure Visit_Multiplicative_Expr_nonterminal4(
      I : access Visit_XPath_Interface;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal4'Class) is abstract;
   procedure After_Multiplicative_Expr_nonterminal4(
      I : access Visit_XPath_Interface;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal4'Class) is null;

   procedure Before_Unary_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Unary_Expr_Model.Unary_Expr_nonterminal1'Class) is null;
   procedure Visit_Unary_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Unary_Expr_Model.Unary_Expr_nonterminal1'Class) is abstract;
   procedure After_Unary_Expr_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Unary_Expr_Model.Unary_Expr_nonterminal1'Class) is null;

   procedure Before_Unary_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Unary_Expr_Model.Unary_Expr_nonterminal2'Class) is null;
   procedure Visit_Unary_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Unary_Expr_Model.Unary_Expr_nonterminal2'Class) is abstract;
   procedure After_Unary_Expr_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Unary_Expr_Model.Unary_Expr_nonterminal2'Class) is null;

   procedure Before_Number_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Number_Model.Number_nonterminal1'Class) is null;
   procedure Visit_Number_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Number_Model.Number_nonterminal1'Class) is abstract;
   procedure After_Number_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Number_Model.Number_nonterminal1'Class) is null;

   procedure Before_Number_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Number_Model.Number_nonterminal2'Class) is null;
   procedure Visit_Number_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Number_Model.Number_nonterminal2'Class) is abstract;
   procedure After_Number_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Number_Model.Number_nonterminal2'Class) is null;

   procedure Before_Literal_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Literal_Model.Literal_nonterminal1'Class) is null;
   procedure Visit_Literal_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Literal_Model.Literal_nonterminal1'Class) is abstract;
   procedure After_Literal_nonterminal1(
      I : access Visit_XPath_Interface;
      N : access Literal_Model.Literal_nonterminal1'Class) is null;

   procedure Before_Literal_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Literal_Model.Literal_nonterminal2'Class) is null;
   procedure Visit_Literal_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Literal_Model.Literal_nonterminal2'Class) is abstract;
   procedure After_Literal_nonterminal2(
      I : access Visit_XPath_Interface;
      N : access Literal_Model.Literal_nonterminal2'Class) is null;

end XPath_Visitor_Interface;
