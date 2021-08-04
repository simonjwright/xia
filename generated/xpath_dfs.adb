-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with Ada.Text_IO;
package body XPath_DFS is
   Visit_Depth : Natural := 0;
   procedure Log_Visit (Cla : String; Entering : Boolean) is
   begin
      if Entering then
         for J in 1 .. Visit_Depth loop 
            Ada.Text_IO.Put ("  ");
         end loop;
         Ada.Text_IO.Put_Line ("visiting " & Cla);
         Visit_Depth := Visit_Depth + 1;
      else
         Visit_Depth := Visit_Depth - 1;
         for J in 1 .. Visit_Depth loop 
            Ada.Text_IO.Put ("  ");
         end loop;
         Ada.Text_IO.Put_Line ("leaving " & Cla);
      end if;
   end Log_Visit;
   procedure Before_Location_Path_nonterminal1(
      I : access DFS;
      N : access Location_Path_Model.Location_Path_nonterminal1'Class) is
   begin
      null;
   end Before_Location_Path_nonterminal1;
   procedure After_Location_Path_nonterminal1(
      I : access DFS;
      N : access Location_Path_Model.Location_Path_nonterminal1'Class) is
   begin
      null;
   end After_Location_Path_nonterminal1;
   procedure Visit_Location_Path_nonterminal1(
         I : access DFS;
         N : access Location_Path_Model.Location_Path_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Location_Path_nonterminal1", Entering => True));
      I_Classwide.Before_Location_Path_nonterminal1(N);
      N.Relative_Location_Path_part.Acceptor(I);
      I_Classwide.After_Location_Path_nonterminal1(N);
      pragma Debug (Log_Visit ("Location_Path_nonterminal1", Entering => False));
   end Visit_Location_Path_nonterminal1;
   procedure Before_Location_Path_nonterminal2(
      I : access DFS;
      N : access Location_Path_Model.Location_Path_nonterminal2'Class) is
   begin
      null;
   end Before_Location_Path_nonterminal2;
   procedure After_Location_Path_nonterminal2(
      I : access DFS;
      N : access Location_Path_Model.Location_Path_nonterminal2'Class) is
   begin
      null;
   end After_Location_Path_nonterminal2;
   procedure Visit_Location_Path_nonterminal2(
         I : access DFS;
         N : access Location_Path_Model.Location_Path_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Location_Path_nonterminal2", Entering => True));
      I_Classwide.Before_Location_Path_nonterminal2(N);
      N.Absolute_Location_Path_part.Acceptor(I);
      I_Classwide.After_Location_Path_nonterminal2(N);
      pragma Debug (Log_Visit ("Location_Path_nonterminal2", Entering => False));
   end Visit_Location_Path_nonterminal2;
   procedure Before_Absolute_Location_Path_nonterminal1(
      I : access DFS;
      N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal1'Class) is
   begin
      null;
   end Before_Absolute_Location_Path_nonterminal1;
   procedure After_Absolute_Location_Path_nonterminal1(
      I : access DFS;
      N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal1'Class) is
   begin
      null;
   end After_Absolute_Location_Path_nonterminal1;
   procedure Visit_Absolute_Location_Path_nonterminal1(
         I : access DFS;
         N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Absolute_Location_Path_nonterminal1", Entering => True));
      I_Classwide.Before_Absolute_Location_Path_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.SLASH_part);
      I_Classwide.After_Absolute_Location_Path_nonterminal1(N);
      pragma Debug (Log_Visit ("Absolute_Location_Path_nonterminal1", Entering => False));
   end Visit_Absolute_Location_Path_nonterminal1;
   procedure Before_Absolute_Location_Path_nonterminal2(
      I : access DFS;
      N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal2'Class) is
   begin
      null;
   end Before_Absolute_Location_Path_nonterminal2;
   procedure After_Absolute_Location_Path_nonterminal2(
      I : access DFS;
      N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal2'Class) is
   begin
      null;
   end After_Absolute_Location_Path_nonterminal2;
   procedure Visit_Absolute_Location_Path_nonterminal2(
         I : access DFS;
         N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Absolute_Location_Path_nonterminal2", Entering => True));
      I_Classwide.Before_Absolute_Location_Path_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.SLASH_part);
      N.Relative_Location_Path_part.Acceptor(I);
      I_Classwide.After_Absolute_Location_Path_nonterminal2(N);
      pragma Debug (Log_Visit ("Absolute_Location_Path_nonterminal2", Entering => False));
   end Visit_Absolute_Location_Path_nonterminal2;
   procedure Before_Absolute_Location_Path_nonterminal3(
      I : access DFS;
      N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal3'Class) is
   begin
      null;
   end Before_Absolute_Location_Path_nonterminal3;
   procedure After_Absolute_Location_Path_nonterminal3(
      I : access DFS;
      N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal3'Class) is
   begin
      null;
   end After_Absolute_Location_Path_nonterminal3;
   procedure Visit_Absolute_Location_Path_nonterminal3(
         I : access DFS;
         N : access Absolute_Location_Path_Model.Absolute_Location_Path_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Absolute_Location_Path_nonterminal3", Entering => True));
      I_Classwide.Before_Absolute_Location_Path_nonterminal3(N);
      N.Abbreviated_Absolute_Location_Path_part.Acceptor(I);
      I_Classwide.After_Absolute_Location_Path_nonterminal3(N);
      pragma Debug (Log_Visit ("Absolute_Location_Path_nonterminal3", Entering => False));
   end Visit_Absolute_Location_Path_nonterminal3;
   procedure Before_Relative_Location_Path_nonterminal1(
      I : access DFS;
      N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal1'Class) is
   begin
      null;
   end Before_Relative_Location_Path_nonterminal1;
   procedure After_Relative_Location_Path_nonterminal1(
      I : access DFS;
      N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal1'Class) is
   begin
      null;
   end After_Relative_Location_Path_nonterminal1;
   procedure Visit_Relative_Location_Path_nonterminal1(
         I : access DFS;
         N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Relative_Location_Path_nonterminal1", Entering => True));
      I_Classwide.Before_Relative_Location_Path_nonterminal1(N);
      N.Step_part.Acceptor(I);
      I_Classwide.After_Relative_Location_Path_nonterminal1(N);
      pragma Debug (Log_Visit ("Relative_Location_Path_nonterminal1", Entering => False));
   end Visit_Relative_Location_Path_nonterminal1;
   procedure Before_Relative_Location_Path_nonterminal2(
      I : access DFS;
      N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal2'Class) is
   begin
      null;
   end Before_Relative_Location_Path_nonterminal2;
   procedure After_Relative_Location_Path_nonterminal2(
      I : access DFS;
      N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal2'Class) is
   begin
      null;
   end After_Relative_Location_Path_nonterminal2;
   procedure Visit_Relative_Location_Path_nonterminal2(
         I : access DFS;
         N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Relative_Location_Path_nonterminal2", Entering => True));
      I_Classwide.Before_Relative_Location_Path_nonterminal2(N);
      N.Relative_Location_Path_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SLASH_part);
      N.Step_part.Acceptor(I);
      I_Classwide.After_Relative_Location_Path_nonterminal2(N);
      pragma Debug (Log_Visit ("Relative_Location_Path_nonterminal2", Entering => False));
   end Visit_Relative_Location_Path_nonterminal2;
   procedure Before_Relative_Location_Path_nonterminal3(
      I : access DFS;
      N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal3'Class) is
   begin
      null;
   end Before_Relative_Location_Path_nonterminal3;
   procedure After_Relative_Location_Path_nonterminal3(
      I : access DFS;
      N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal3'Class) is
   begin
      null;
   end After_Relative_Location_Path_nonterminal3;
   procedure Visit_Relative_Location_Path_nonterminal3(
         I : access DFS;
         N : access Relative_Location_Path_Model.Relative_Location_Path_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Relative_Location_Path_nonterminal3", Entering => True));
      I_Classwide.Before_Relative_Location_Path_nonterminal3(N);
      N.Abbreviated_Relative_Location_Path_part.Acceptor(I);
      I_Classwide.After_Relative_Location_Path_nonterminal3(N);
      pragma Debug (Log_Visit ("Relative_Location_Path_nonterminal3", Entering => False));
   end Visit_Relative_Location_Path_nonterminal3;
   procedure Before_Step_nonterminal1(
      I : access DFS;
      N : access Step_Model.Step_nonterminal1'Class) is
   begin
      null;
   end Before_Step_nonterminal1;
   procedure After_Step_nonterminal1(
      I : access DFS;
      N : access Step_Model.Step_nonterminal1'Class) is
   begin
      null;
   end After_Step_nonterminal1;
   procedure Visit_Step_nonterminal1(
         I : access DFS;
         N : access Step_Model.Step_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Step_nonterminal1", Entering => True));
      I_Classwide.Before_Step_nonterminal1(N);
      N.Step_Base_part.Acceptor(I);
      N.Predicates_part.Acceptor(I);
      I_Classwide.After_Step_nonterminal1(N);
      pragma Debug (Log_Visit ("Step_nonterminal1", Entering => False));
   end Visit_Step_nonterminal1;
   procedure Before_Step_nonterminal2(
      I : access DFS;
      N : access Step_Model.Step_nonterminal2'Class) is
   begin
      null;
   end Before_Step_nonterminal2;
   procedure After_Step_nonterminal2(
      I : access DFS;
      N : access Step_Model.Step_nonterminal2'Class) is
   begin
      null;
   end After_Step_nonterminal2;
   procedure Visit_Step_nonterminal2(
         I : access DFS;
         N : access Step_Model.Step_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Step_nonterminal2", Entering => True));
      I_Classwide.Before_Step_nonterminal2(N);
      N.Abbreviated_Step_part.Acceptor(I);
      I_Classwide.After_Step_nonterminal2(N);
      pragma Debug (Log_Visit ("Step_nonterminal2", Entering => False));
   end Visit_Step_nonterminal2;
   procedure Before_Predicates_nonterminal1(
      I : access DFS;
      N : access Predicates_Model.Predicates_nonterminal1'Class) is
   begin
      null;
   end Before_Predicates_nonterminal1;
   procedure After_Predicates_nonterminal1(
      I : access DFS;
      N : access Predicates_Model.Predicates_nonterminal1'Class) is
   begin
      null;
   end After_Predicates_nonterminal1;
   procedure Visit_Predicates_nonterminal1(
         I : access DFS;
         N : access Predicates_Model.Predicates_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Predicates_nonterminal1", Entering => True));
      I_Classwide.Before_Predicates_nonterminal1(N);
      I_Classwide.After_Predicates_nonterminal1(N);
      pragma Debug (Log_Visit ("Predicates_nonterminal1", Entering => False));
   end Visit_Predicates_nonterminal1;
   procedure Before_Predicates_nonterminal2(
      I : access DFS;
      N : access Predicates_Model.Predicates_nonterminal2'Class) is
   begin
      null;
   end Before_Predicates_nonterminal2;
   procedure After_Predicates_nonterminal2(
      I : access DFS;
      N : access Predicates_Model.Predicates_nonterminal2'Class) is
   begin
      null;
   end After_Predicates_nonterminal2;
   procedure Visit_Predicates_nonterminal2(
         I : access DFS;
         N : access Predicates_Model.Predicates_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Predicates_nonterminal2", Entering => True));
      I_Classwide.Before_Predicates_nonterminal2(N);
      N.Predicates_part.Acceptor(I);
      N.Predicate_part.Acceptor(I);
      I_Classwide.After_Predicates_nonterminal2(N);
      pragma Debug (Log_Visit ("Predicates_nonterminal2", Entering => False));
   end Visit_Predicates_nonterminal2;
   procedure Before_Step_Base_nonterminal1(
      I : access DFS;
      N : access Step_Base_Model.Step_Base_nonterminal1'Class) is
   begin
      null;
   end Before_Step_Base_nonterminal1;
   procedure After_Step_Base_nonterminal1(
      I : access DFS;
      N : access Step_Base_Model.Step_Base_nonterminal1'Class) is
   begin
      null;
   end After_Step_Base_nonterminal1;
   procedure Visit_Step_Base_nonterminal1(
         I : access DFS;
         N : access Step_Base_Model.Step_Base_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Step_Base_nonterminal1", Entering => True));
      I_Classwide.Before_Step_Base_nonterminal1(N);
      N.Axis_Specifier_part.Acceptor(I);
      N.Node_Test_part.Acceptor(I);
      I_Classwide.After_Step_Base_nonterminal1(N);
      pragma Debug (Log_Visit ("Step_Base_nonterminal1", Entering => False));
   end Visit_Step_Base_nonterminal1;
   procedure Before_Step_Base_nonterminal2(
      I : access DFS;
      N : access Step_Base_Model.Step_Base_nonterminal2'Class) is
   begin
      null;
   end Before_Step_Base_nonterminal2;
   procedure After_Step_Base_nonterminal2(
      I : access DFS;
      N : access Step_Base_Model.Step_Base_nonterminal2'Class) is
   begin
      null;
   end After_Step_Base_nonterminal2;
   procedure Visit_Step_Base_nonterminal2(
         I : access DFS;
         N : access Step_Base_Model.Step_Base_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Step_Base_nonterminal2", Entering => True));
      I_Classwide.Before_Step_Base_nonterminal2(N);
      N.Abbreviated_Step_Base_part.Acceptor(I);
      I_Classwide.After_Step_Base_nonterminal2(N);
      pragma Debug (Log_Visit ("Step_Base_nonterminal2", Entering => False));
   end Visit_Step_Base_nonterminal2;
   procedure Before_Abbreviated_Step_Base_nonterminal1(
      I : access DFS;
      N : access Abbreviated_Step_Base_Model.Abbreviated_Step_Base_nonterminal1'Class) is
   begin
      null;
   end Before_Abbreviated_Step_Base_nonterminal1;
   procedure After_Abbreviated_Step_Base_nonterminal1(
      I : access DFS;
      N : access Abbreviated_Step_Base_Model.Abbreviated_Step_Base_nonterminal1'Class) is
   begin
      null;
   end After_Abbreviated_Step_Base_nonterminal1;
   procedure Visit_Abbreviated_Step_Base_nonterminal1(
         I : access DFS;
         N : access Abbreviated_Step_Base_Model.Abbreviated_Step_Base_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Abbreviated_Step_Base_nonterminal1", Entering => True));
      I_Classwide.Before_Abbreviated_Step_Base_nonterminal1(N);
      N.Node_Test_part.Acceptor(I);
      I_Classwide.After_Abbreviated_Step_Base_nonterminal1(N);
      pragma Debug (Log_Visit ("Abbreviated_Step_Base_nonterminal1", Entering => False));
   end Visit_Abbreviated_Step_Base_nonterminal1;
   procedure Before_Abbreviated_Step_Base_nonterminal2(
      I : access DFS;
      N : access Abbreviated_Step_Base_Model.Abbreviated_Step_Base_nonterminal2'Class) is
   begin
      null;
   end Before_Abbreviated_Step_Base_nonterminal2;
   procedure After_Abbreviated_Step_Base_nonterminal2(
      I : access DFS;
      N : access Abbreviated_Step_Base_Model.Abbreviated_Step_Base_nonterminal2'Class) is
   begin
      null;
   end After_Abbreviated_Step_Base_nonterminal2;
   procedure Visit_Abbreviated_Step_Base_nonterminal2(
         I : access DFS;
         N : access Abbreviated_Step_Base_Model.Abbreviated_Step_Base_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Abbreviated_Step_Base_nonterminal2", Entering => True));
      I_Classwide.Before_Abbreviated_Step_Base_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.AT_SIGN_part);
      N.Node_Test_part.Acceptor(I);
      I_Classwide.After_Abbreviated_Step_Base_nonterminal2(N);
      pragma Debug (Log_Visit ("Abbreviated_Step_Base_nonterminal2", Entering => False));
   end Visit_Abbreviated_Step_Base_nonterminal2;
   procedure Before_Predicate_nonterminal(
      I : access DFS;
      N : access Predicate_Model.Predicate_nonterminal'Class) is
   begin
      null;
   end Before_Predicate_nonterminal;
   procedure After_Predicate_nonterminal(
      I : access DFS;
      N : access Predicate_Model.Predicate_nonterminal'Class) is
   begin
      null;
   end After_Predicate_nonterminal;
   procedure Visit_Predicate_nonterminal(
         I : access DFS;
         N : access Predicate_Model.Predicate_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Predicate_nonterminal", Entering => True));
      I_Classwide.Before_Predicate_nonterminal(N);
      N.L_Bracket_part.Acceptor(I);
      N.Predicate_Expr_part.Acceptor(I);
      N.R_Bracket_part.Acceptor(I);
      I_Classwide.After_Predicate_nonterminal(N);
      pragma Debug (Log_Visit ("Predicate_nonterminal", Entering => False));
   end Visit_Predicate_nonterminal;
   procedure Before_L_Bracket_nonterminal(
      I : access DFS;
      N : access L_Bracket_Model.L_Bracket_nonterminal'Class) is
   begin
      null;
   end Before_L_Bracket_nonterminal;
   procedure After_L_Bracket_nonterminal(
      I : access DFS;
      N : access L_Bracket_Model.L_Bracket_nonterminal'Class) is
   begin
      null;
   end After_L_Bracket_nonterminal;
   procedure Visit_L_Bracket_nonterminal(
         I : access DFS;
         N : access L_Bracket_Model.L_Bracket_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("L_Bracket_nonterminal", Entering => True));
      I_Classwide.Before_L_Bracket_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.L_BRACKET_T_part);
      I_Classwide.After_L_Bracket_nonterminal(N);
      pragma Debug (Log_Visit ("L_Bracket_nonterminal", Entering => False));
   end Visit_L_Bracket_nonterminal;
   procedure Before_R_Bracket_nonterminal(
      I : access DFS;
      N : access R_Bracket_Model.R_Bracket_nonterminal'Class) is
   begin
      null;
   end Before_R_Bracket_nonterminal;
   procedure After_R_Bracket_nonterminal(
      I : access DFS;
      N : access R_Bracket_Model.R_Bracket_nonterminal'Class) is
   begin
      null;
   end After_R_Bracket_nonterminal;
   procedure Visit_R_Bracket_nonterminal(
         I : access DFS;
         N : access R_Bracket_Model.R_Bracket_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("R_Bracket_nonterminal", Entering => True));
      I_Classwide.Before_R_Bracket_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.R_BRACKET_T_part);
      I_Classwide.After_R_Bracket_nonterminal(N);
      pragma Debug (Log_Visit ("R_Bracket_nonterminal", Entering => False));
   end Visit_R_Bracket_nonterminal;
   procedure Before_Axis_Specifier_nonterminal(
      I : access DFS;
      N : access Axis_Specifier_Model.Axis_Specifier_nonterminal'Class) is
   begin
      null;
   end Before_Axis_Specifier_nonterminal;
   procedure After_Axis_Specifier_nonterminal(
      I : access DFS;
      N : access Axis_Specifier_Model.Axis_Specifier_nonterminal'Class) is
   begin
      null;
   end After_Axis_Specifier_nonterminal;
   procedure Visit_Axis_Specifier_nonterminal(
         I : access DFS;
         N : access Axis_Specifier_Model.Axis_Specifier_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Axis_Specifier_nonterminal", Entering => True));
      I_Classwide.Before_Axis_Specifier_nonterminal(N);
      N.Axis_Name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.DOUBLE_COLON_part);
      I_Classwide.After_Axis_Specifier_nonterminal(N);
      pragma Debug (Log_Visit ("Axis_Specifier_nonterminal", Entering => False));
   end Visit_Axis_Specifier_nonterminal;
   procedure Before_Axis_Name_nonterminal1(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal1'Class) is
   begin
      null;
   end Before_Axis_Name_nonterminal1;
   procedure After_Axis_Name_nonterminal1(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal1'Class) is
   begin
      null;
   end After_Axis_Name_nonterminal1;
   procedure Visit_Axis_Name_nonterminal1(
         I : access DFS;
         N : access Axis_Name_Model.Axis_Name_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Axis_Name_nonterminal1", Entering => True));
      I_Classwide.Before_Axis_Name_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.ANCESTOR_part);
      I_Classwide.After_Axis_Name_nonterminal1(N);
      pragma Debug (Log_Visit ("Axis_Name_nonterminal1", Entering => False));
   end Visit_Axis_Name_nonterminal1;
   procedure Before_Axis_Name_nonterminal2(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal2'Class) is
   begin
      null;
   end Before_Axis_Name_nonterminal2;
   procedure After_Axis_Name_nonterminal2(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal2'Class) is
   begin
      null;
   end After_Axis_Name_nonterminal2;
   procedure Visit_Axis_Name_nonterminal2(
         I : access DFS;
         N : access Axis_Name_Model.Axis_Name_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Axis_Name_nonterminal2", Entering => True));
      I_Classwide.Before_Axis_Name_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.ANCESTOR_OR_SELF_part);
      I_Classwide.After_Axis_Name_nonterminal2(N);
      pragma Debug (Log_Visit ("Axis_Name_nonterminal2", Entering => False));
   end Visit_Axis_Name_nonterminal2;
   procedure Before_Axis_Name_nonterminal3(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal3'Class) is
   begin
      null;
   end Before_Axis_Name_nonterminal3;
   procedure After_Axis_Name_nonterminal3(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal3'Class) is
   begin
      null;
   end After_Axis_Name_nonterminal3;
   procedure Visit_Axis_Name_nonterminal3(
         I : access DFS;
         N : access Axis_Name_Model.Axis_Name_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Axis_Name_nonterminal3", Entering => True));
      I_Classwide.Before_Axis_Name_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.ATTRIBUTE_part);
      I_Classwide.After_Axis_Name_nonterminal3(N);
      pragma Debug (Log_Visit ("Axis_Name_nonterminal3", Entering => False));
   end Visit_Axis_Name_nonterminal3;
   procedure Before_Axis_Name_nonterminal4(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal4'Class) is
   begin
      null;
   end Before_Axis_Name_nonterminal4;
   procedure After_Axis_Name_nonterminal4(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal4'Class) is
   begin
      null;
   end After_Axis_Name_nonterminal4;
   procedure Visit_Axis_Name_nonterminal4(
         I : access DFS;
         N : access Axis_Name_Model.Axis_Name_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Axis_Name_nonterminal4", Entering => True));
      I_Classwide.Before_Axis_Name_nonterminal4(N);
      I_Classwide.Visit_Parseable_Token(N.CHILD_part);
      I_Classwide.After_Axis_Name_nonterminal4(N);
      pragma Debug (Log_Visit ("Axis_Name_nonterminal4", Entering => False));
   end Visit_Axis_Name_nonterminal4;
   procedure Before_Axis_Name_nonterminal5(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal5'Class) is
   begin
      null;
   end Before_Axis_Name_nonterminal5;
   procedure After_Axis_Name_nonterminal5(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal5'Class) is
   begin
      null;
   end After_Axis_Name_nonterminal5;
   procedure Visit_Axis_Name_nonterminal5(
         I : access DFS;
         N : access Axis_Name_Model.Axis_Name_nonterminal5'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Axis_Name_nonterminal5", Entering => True));
      I_Classwide.Before_Axis_Name_nonterminal5(N);
      I_Classwide.Visit_Parseable_Token(N.DESCENDANT_part);
      I_Classwide.After_Axis_Name_nonterminal5(N);
      pragma Debug (Log_Visit ("Axis_Name_nonterminal5", Entering => False));
   end Visit_Axis_Name_nonterminal5;
   procedure Before_Axis_Name_nonterminal6(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal6'Class) is
   begin
      null;
   end Before_Axis_Name_nonterminal6;
   procedure After_Axis_Name_nonterminal6(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal6'Class) is
   begin
      null;
   end After_Axis_Name_nonterminal6;
   procedure Visit_Axis_Name_nonterminal6(
         I : access DFS;
         N : access Axis_Name_Model.Axis_Name_nonterminal6'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Axis_Name_nonterminal6", Entering => True));
      I_Classwide.Before_Axis_Name_nonterminal6(N);
      I_Classwide.Visit_Parseable_Token(N.DESCENDANT_OR_SELF_part);
      I_Classwide.After_Axis_Name_nonterminal6(N);
      pragma Debug (Log_Visit ("Axis_Name_nonterminal6", Entering => False));
   end Visit_Axis_Name_nonterminal6;
   procedure Before_Axis_Name_nonterminal7(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal7'Class) is
   begin
      null;
   end Before_Axis_Name_nonterminal7;
   procedure After_Axis_Name_nonterminal7(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal7'Class) is
   begin
      null;
   end After_Axis_Name_nonterminal7;
   procedure Visit_Axis_Name_nonterminal7(
         I : access DFS;
         N : access Axis_Name_Model.Axis_Name_nonterminal7'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Axis_Name_nonterminal7", Entering => True));
      I_Classwide.Before_Axis_Name_nonterminal7(N);
      I_Classwide.Visit_Parseable_Token(N.FOLLOWING_part);
      I_Classwide.After_Axis_Name_nonterminal7(N);
      pragma Debug (Log_Visit ("Axis_Name_nonterminal7", Entering => False));
   end Visit_Axis_Name_nonterminal7;
   procedure Before_Axis_Name_nonterminal8(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal8'Class) is
   begin
      null;
   end Before_Axis_Name_nonterminal8;
   procedure After_Axis_Name_nonterminal8(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal8'Class) is
   begin
      null;
   end After_Axis_Name_nonterminal8;
   procedure Visit_Axis_Name_nonterminal8(
         I : access DFS;
         N : access Axis_Name_Model.Axis_Name_nonterminal8'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Axis_Name_nonterminal8", Entering => True));
      I_Classwide.Before_Axis_Name_nonterminal8(N);
      I_Classwide.Visit_Parseable_Token(N.FOLLOWING_SIBLING_part);
      I_Classwide.After_Axis_Name_nonterminal8(N);
      pragma Debug (Log_Visit ("Axis_Name_nonterminal8", Entering => False));
   end Visit_Axis_Name_nonterminal8;
   procedure Before_Axis_Name_nonterminal9(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal9'Class) is
   begin
      null;
   end Before_Axis_Name_nonterminal9;
   procedure After_Axis_Name_nonterminal9(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal9'Class) is
   begin
      null;
   end After_Axis_Name_nonterminal9;
   procedure Visit_Axis_Name_nonterminal9(
         I : access DFS;
         N : access Axis_Name_Model.Axis_Name_nonterminal9'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Axis_Name_nonterminal9", Entering => True));
      I_Classwide.Before_Axis_Name_nonterminal9(N);
      I_Classwide.Visit_Parseable_Token(N.NAMESPACE_part);
      I_Classwide.After_Axis_Name_nonterminal9(N);
      pragma Debug (Log_Visit ("Axis_Name_nonterminal9", Entering => False));
   end Visit_Axis_Name_nonterminal9;
   procedure Before_Axis_Name_nonterminal10(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal10'Class) is
   begin
      null;
   end Before_Axis_Name_nonterminal10;
   procedure After_Axis_Name_nonterminal10(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal10'Class) is
   begin
      null;
   end After_Axis_Name_nonterminal10;
   procedure Visit_Axis_Name_nonterminal10(
         I : access DFS;
         N : access Axis_Name_Model.Axis_Name_nonterminal10'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Axis_Name_nonterminal10", Entering => True));
      I_Classwide.Before_Axis_Name_nonterminal10(N);
      I_Classwide.Visit_Parseable_Token(N.PARENT_part);
      I_Classwide.After_Axis_Name_nonterminal10(N);
      pragma Debug (Log_Visit ("Axis_Name_nonterminal10", Entering => False));
   end Visit_Axis_Name_nonterminal10;
   procedure Before_Axis_Name_nonterminal11(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal11'Class) is
   begin
      null;
   end Before_Axis_Name_nonterminal11;
   procedure After_Axis_Name_nonterminal11(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal11'Class) is
   begin
      null;
   end After_Axis_Name_nonterminal11;
   procedure Visit_Axis_Name_nonterminal11(
         I : access DFS;
         N : access Axis_Name_Model.Axis_Name_nonterminal11'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Axis_Name_nonterminal11", Entering => True));
      I_Classwide.Before_Axis_Name_nonterminal11(N);
      I_Classwide.Visit_Parseable_Token(N.PRECEDING_part);
      I_Classwide.After_Axis_Name_nonterminal11(N);
      pragma Debug (Log_Visit ("Axis_Name_nonterminal11", Entering => False));
   end Visit_Axis_Name_nonterminal11;
   procedure Before_Axis_Name_nonterminal12(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal12'Class) is
   begin
      null;
   end Before_Axis_Name_nonterminal12;
   procedure After_Axis_Name_nonterminal12(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal12'Class) is
   begin
      null;
   end After_Axis_Name_nonterminal12;
   procedure Visit_Axis_Name_nonterminal12(
         I : access DFS;
         N : access Axis_Name_Model.Axis_Name_nonterminal12'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Axis_Name_nonterminal12", Entering => True));
      I_Classwide.Before_Axis_Name_nonterminal12(N);
      I_Classwide.Visit_Parseable_Token(N.PRECEDING_SIBLING_part);
      I_Classwide.After_Axis_Name_nonterminal12(N);
      pragma Debug (Log_Visit ("Axis_Name_nonterminal12", Entering => False));
   end Visit_Axis_Name_nonterminal12;
   procedure Before_Axis_Name_nonterminal13(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal13'Class) is
   begin
      null;
   end Before_Axis_Name_nonterminal13;
   procedure After_Axis_Name_nonterminal13(
      I : access DFS;
      N : access Axis_Name_Model.Axis_Name_nonterminal13'Class) is
   begin
      null;
   end After_Axis_Name_nonterminal13;
   procedure Visit_Axis_Name_nonterminal13(
         I : access DFS;
         N : access Axis_Name_Model.Axis_Name_nonterminal13'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Axis_Name_nonterminal13", Entering => True));
      I_Classwide.Before_Axis_Name_nonterminal13(N);
      I_Classwide.Visit_Parseable_Token(N.SELF_part);
      I_Classwide.After_Axis_Name_nonterminal13(N);
      pragma Debug (Log_Visit ("Axis_Name_nonterminal13", Entering => False));
   end Visit_Axis_Name_nonterminal13;
   procedure Before_Node_Test_nonterminal1(
      I : access DFS;
      N : access Node_Test_Model.Node_Test_nonterminal1'Class) is
   begin
      null;
   end Before_Node_Test_nonterminal1;
   procedure After_Node_Test_nonterminal1(
      I : access DFS;
      N : access Node_Test_Model.Node_Test_nonterminal1'Class) is
   begin
      null;
   end After_Node_Test_nonterminal1;
   procedure Visit_Node_Test_nonterminal1(
         I : access DFS;
         N : access Node_Test_Model.Node_Test_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Node_Test_nonterminal1", Entering => True));
      I_Classwide.Before_Node_Test_nonterminal1(N);
      N.Name_Test_part.Acceptor(I);
      I_Classwide.After_Node_Test_nonterminal1(N);
      pragma Debug (Log_Visit ("Node_Test_nonterminal1", Entering => False));
   end Visit_Node_Test_nonterminal1;
   procedure Before_Node_Test_nonterminal2(
      I : access DFS;
      N : access Node_Test_Model.Node_Test_nonterminal2'Class) is
   begin
      null;
   end Before_Node_Test_nonterminal2;
   procedure After_Node_Test_nonterminal2(
      I : access DFS;
      N : access Node_Test_Model.Node_Test_nonterminal2'Class) is
   begin
      null;
   end After_Node_Test_nonterminal2;
   procedure Visit_Node_Test_nonterminal2(
         I : access DFS;
         N : access Node_Test_Model.Node_Test_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Node_Test_nonterminal2", Entering => True));
      I_Classwide.Before_Node_Test_nonterminal2(N);
      N.Node_Type_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      I_Classwide.After_Node_Test_nonterminal2(N);
      pragma Debug (Log_Visit ("Node_Test_nonterminal2", Entering => False));
   end Visit_Node_Test_nonterminal2;
   procedure Before_Node_Test_nonterminal3(
      I : access DFS;
      N : access Node_Test_Model.Node_Test_nonterminal3'Class) is
   begin
      null;
   end Before_Node_Test_nonterminal3;
   procedure After_Node_Test_nonterminal3(
      I : access DFS;
      N : access Node_Test_Model.Node_Test_nonterminal3'Class) is
   begin
      null;
   end After_Node_Test_nonterminal3;
   procedure Visit_Node_Test_nonterminal3(
         I : access DFS;
         N : access Node_Test_Model.Node_Test_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Node_Test_nonterminal3", Entering => True));
      I_Classwide.Before_Node_Test_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.PROCESSING_INSTRUCTION_part);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      N.LITERAL_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      I_Classwide.After_Node_Test_nonterminal3(N);
      pragma Debug (Log_Visit ("Node_Test_nonterminal3", Entering => False));
   end Visit_Node_Test_nonterminal3;
   procedure Before_Node_Type_nonterminal1(
      I : access DFS;
      N : access Node_Type_Model.Node_Type_nonterminal1'Class) is
   begin
      null;
   end Before_Node_Type_nonterminal1;
   procedure After_Node_Type_nonterminal1(
      I : access DFS;
      N : access Node_Type_Model.Node_Type_nonterminal1'Class) is
   begin
      null;
   end After_Node_Type_nonterminal1;
   procedure Visit_Node_Type_nonterminal1(
         I : access DFS;
         N : access Node_Type_Model.Node_Type_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Node_Type_nonterminal1", Entering => True));
      I_Classwide.Before_Node_Type_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.COMMENT_part);
      I_Classwide.After_Node_Type_nonterminal1(N);
      pragma Debug (Log_Visit ("Node_Type_nonterminal1", Entering => False));
   end Visit_Node_Type_nonterminal1;
   procedure Before_Node_Type_nonterminal2(
      I : access DFS;
      N : access Node_Type_Model.Node_Type_nonterminal2'Class) is
   begin
      null;
   end Before_Node_Type_nonterminal2;
   procedure After_Node_Type_nonterminal2(
      I : access DFS;
      N : access Node_Type_Model.Node_Type_nonterminal2'Class) is
   begin
      null;
   end After_Node_Type_nonterminal2;
   procedure Visit_Node_Type_nonterminal2(
         I : access DFS;
         N : access Node_Type_Model.Node_Type_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Node_Type_nonterminal2", Entering => True));
      I_Classwide.Before_Node_Type_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.TEXT_part);
      I_Classwide.After_Node_Type_nonterminal2(N);
      pragma Debug (Log_Visit ("Node_Type_nonterminal2", Entering => False));
   end Visit_Node_Type_nonterminal2;
   procedure Before_Node_Type_nonterminal3(
      I : access DFS;
      N : access Node_Type_Model.Node_Type_nonterminal3'Class) is
   begin
      null;
   end Before_Node_Type_nonterminal3;
   procedure After_Node_Type_nonterminal3(
      I : access DFS;
      N : access Node_Type_Model.Node_Type_nonterminal3'Class) is
   begin
      null;
   end After_Node_Type_nonterminal3;
   procedure Visit_Node_Type_nonterminal3(
         I : access DFS;
         N : access Node_Type_Model.Node_Type_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Node_Type_nonterminal3", Entering => True));
      I_Classwide.Before_Node_Type_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.PROCESSING_INSTRUCTION_part);
      I_Classwide.After_Node_Type_nonterminal3(N);
      pragma Debug (Log_Visit ("Node_Type_nonterminal3", Entering => False));
   end Visit_Node_Type_nonterminal3;
   procedure Before_Node_Type_nonterminal4(
      I : access DFS;
      N : access Node_Type_Model.Node_Type_nonterminal4'Class) is
   begin
      null;
   end Before_Node_Type_nonterminal4;
   procedure After_Node_Type_nonterminal4(
      I : access DFS;
      N : access Node_Type_Model.Node_Type_nonterminal4'Class) is
   begin
      null;
   end After_Node_Type_nonterminal4;
   procedure Visit_Node_Type_nonterminal4(
         I : access DFS;
         N : access Node_Type_Model.Node_Type_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Node_Type_nonterminal4", Entering => True));
      I_Classwide.Before_Node_Type_nonterminal4(N);
      I_Classwide.Visit_Parseable_Token(N.NODE_part);
      I_Classwide.After_Node_Type_nonterminal4(N);
      pragma Debug (Log_Visit ("Node_Type_nonterminal4", Entering => False));
   end Visit_Node_Type_nonterminal4;
   procedure Before_Name_Test_nonterminal1(
      I : access DFS;
      N : access Name_Test_Model.Name_Test_nonterminal1'Class) is
   begin
      null;
   end Before_Name_Test_nonterminal1;
   procedure After_Name_Test_nonterminal1(
      I : access DFS;
      N : access Name_Test_Model.Name_Test_nonterminal1'Class) is
   begin
      null;
   end After_Name_Test_nonterminal1;
   procedure Visit_Name_Test_nonterminal1(
         I : access DFS;
         N : access Name_Test_Model.Name_Test_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Name_Test_nonterminal1", Entering => True));
      I_Classwide.Before_Name_Test_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.STAR_part);
      I_Classwide.After_Name_Test_nonterminal1(N);
      pragma Debug (Log_Visit ("Name_Test_nonterminal1", Entering => False));
   end Visit_Name_Test_nonterminal1;
   procedure Before_Name_Test_nonterminal2(
      I : access DFS;
      N : access Name_Test_Model.Name_Test_nonterminal2'Class) is
   begin
      null;
   end Before_Name_Test_nonterminal2;
   procedure After_Name_Test_nonterminal2(
      I : access DFS;
      N : access Name_Test_Model.Name_Test_nonterminal2'Class) is
   begin
      null;
   end After_Name_Test_nonterminal2;
   procedure Visit_Name_Test_nonterminal2(
         I : access DFS;
         N : access Name_Test_Model.Name_Test_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Name_Test_nonterminal2", Entering => True));
      I_Classwide.Before_Name_Test_nonterminal2(N);
      N.QName_part.Acceptor(I);
      I_Classwide.After_Name_Test_nonterminal2(N);
      pragma Debug (Log_Visit ("Name_Test_nonterminal2", Entering => False));
   end Visit_Name_Test_nonterminal2;
   procedure Before_Name_Test_nonterminal3(
      I : access DFS;
      N : access Name_Test_Model.Name_Test_nonterminal3'Class) is
   begin
      null;
   end Before_Name_Test_nonterminal3;
   procedure After_Name_Test_nonterminal3(
      I : access DFS;
      N : access Name_Test_Model.Name_Test_nonterminal3'Class) is
   begin
      null;
   end After_Name_Test_nonterminal3;
   procedure Visit_Name_Test_nonterminal3(
         I : access DFS;
         N : access Name_Test_Model.Name_Test_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Name_Test_nonterminal3", Entering => True));
      I_Classwide.Before_Name_Test_nonterminal3(N);
      N.NCNAME_Or_ID_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.COLON_part);
      I_Classwide.Visit_Parseable_Token(N.STAR_part);
      I_Classwide.After_Name_Test_nonterminal3(N);
      pragma Debug (Log_Visit ("Name_Test_nonterminal3", Entering => False));
   end Visit_Name_Test_nonterminal3;
   procedure Before_QName_nonterminal1(
      I : access DFS;
      N : access QName_Model.QName_nonterminal1'Class) is
   begin
      null;
   end Before_QName_nonterminal1;
   procedure After_QName_nonterminal1(
      I : access DFS;
      N : access QName_Model.QName_nonterminal1'Class) is
   begin
      null;
   end After_QName_nonterminal1;
   procedure Visit_QName_nonterminal1(
         I : access DFS;
         N : access QName_Model.QName_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("QName_nonterminal1", Entering => True));
      I_Classwide.Before_QName_nonterminal1(N);
      N.NCNAME_Or_ID_part.Acceptor(I);
      I_Classwide.After_QName_nonterminal1(N);
      pragma Debug (Log_Visit ("QName_nonterminal1", Entering => False));
   end Visit_QName_nonterminal1;
   procedure Before_QName_nonterminal2(
      I : access DFS;
      N : access QName_Model.QName_nonterminal2'Class) is
   begin
      null;
   end Before_QName_nonterminal2;
   procedure After_QName_nonterminal2(
      I : access DFS;
      N : access QName_Model.QName_nonterminal2'Class) is
   begin
      null;
   end After_QName_nonterminal2;
   procedure Visit_QName_nonterminal2(
         I : access DFS;
         N : access QName_Model.QName_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("QName_nonterminal2", Entering => True));
      I_Classwide.Before_QName_nonterminal2(N);
      N.NCNAME_Or_ID_part1.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.COLON_part);
      N.NCNAME_Or_ID_part2.Acceptor(I);
      I_Classwide.After_QName_nonterminal2(N);
      pragma Debug (Log_Visit ("QName_nonterminal2", Entering => False));
   end Visit_QName_nonterminal2;
   procedure Before_NCNAME_Or_ID_nonterminal1(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal1'Class) is
   begin
      null;
   end Before_NCNAME_Or_ID_nonterminal1;
   procedure After_NCNAME_Or_ID_nonterminal1(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal1'Class) is
   begin
      null;
   end After_NCNAME_Or_ID_nonterminal1;
   procedure Visit_NCNAME_Or_ID_nonterminal1(
         I : access DFS;
         N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("NCNAME_Or_ID_nonterminal1", Entering => True));
      I_Classwide.Before_NCNAME_Or_ID_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.NCNAME_part);
      I_Classwide.After_NCNAME_Or_ID_nonterminal1(N);
      pragma Debug (Log_Visit ("NCNAME_Or_ID_nonterminal1", Entering => False));
   end Visit_NCNAME_Or_ID_nonterminal1;
   procedure Before_NCNAME_Or_ID_nonterminal2(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal2'Class) is
   begin
      null;
   end Before_NCNAME_Or_ID_nonterminal2;
   procedure After_NCNAME_Or_ID_nonterminal2(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal2'Class) is
   begin
      null;
   end After_NCNAME_Or_ID_nonterminal2;
   procedure Visit_NCNAME_Or_ID_nonterminal2(
         I : access DFS;
         N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("NCNAME_Or_ID_nonterminal2", Entering => True));
      I_Classwide.Before_NCNAME_Or_ID_nonterminal2(N);
      N.Axis_Name_part.Acceptor(I);
      I_Classwide.After_NCNAME_Or_ID_nonterminal2(N);
      pragma Debug (Log_Visit ("NCNAME_Or_ID_nonterminal2", Entering => False));
   end Visit_NCNAME_Or_ID_nonterminal2;
   procedure Before_NCNAME_Or_ID_nonterminal3(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal3'Class) is
   begin
      null;
   end Before_NCNAME_Or_ID_nonterminal3;
   procedure After_NCNAME_Or_ID_nonterminal3(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal3'Class) is
   begin
      null;
   end After_NCNAME_Or_ID_nonterminal3;
   procedure Visit_NCNAME_Or_ID_nonterminal3(
         I : access DFS;
         N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("NCNAME_Or_ID_nonterminal3", Entering => True));
      I_Classwide.Before_NCNAME_Or_ID_nonterminal3(N);
      N.Node_Type_part.Acceptor(I);
      I_Classwide.After_NCNAME_Or_ID_nonterminal3(N);
      pragma Debug (Log_Visit ("NCNAME_Or_ID_nonterminal3", Entering => False));
   end Visit_NCNAME_Or_ID_nonterminal3;
   procedure Before_NCNAME_Or_ID_nonterminal4(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal4'Class) is
   begin
      null;
   end Before_NCNAME_Or_ID_nonterminal4;
   procedure After_NCNAME_Or_ID_nonterminal4(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal4'Class) is
   begin
      null;
   end After_NCNAME_Or_ID_nonterminal4;
   procedure Visit_NCNAME_Or_ID_nonterminal4(
         I : access DFS;
         N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("NCNAME_Or_ID_nonterminal4", Entering => True));
      I_Classwide.Before_NCNAME_Or_ID_nonterminal4(N);
      I_Classwide.Visit_Parseable_Token(N.AND_part);
      I_Classwide.After_NCNAME_Or_ID_nonterminal4(N);
      pragma Debug (Log_Visit ("NCNAME_Or_ID_nonterminal4", Entering => False));
   end Visit_NCNAME_Or_ID_nonterminal4;
   procedure Before_NCNAME_Or_ID_nonterminal5(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal5'Class) is
   begin
      null;
   end Before_NCNAME_Or_ID_nonterminal5;
   procedure After_NCNAME_Or_ID_nonterminal5(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal5'Class) is
   begin
      null;
   end After_NCNAME_Or_ID_nonterminal5;
   procedure Visit_NCNAME_Or_ID_nonterminal5(
         I : access DFS;
         N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal5'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("NCNAME_Or_ID_nonterminal5", Entering => True));
      I_Classwide.Before_NCNAME_Or_ID_nonterminal5(N);
      I_Classwide.Visit_Parseable_Token(N.OR_part);
      I_Classwide.After_NCNAME_Or_ID_nonterminal5(N);
      pragma Debug (Log_Visit ("NCNAME_Or_ID_nonterminal5", Entering => False));
   end Visit_NCNAME_Or_ID_nonterminal5;
   procedure Before_NCNAME_Or_ID_nonterminal6(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal6'Class) is
   begin
      null;
   end Before_NCNAME_Or_ID_nonterminal6;
   procedure After_NCNAME_Or_ID_nonterminal6(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal6'Class) is
   begin
      null;
   end After_NCNAME_Or_ID_nonterminal6;
   procedure Visit_NCNAME_Or_ID_nonterminal6(
         I : access DFS;
         N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal6'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("NCNAME_Or_ID_nonterminal6", Entering => True));
      I_Classwide.Before_NCNAME_Or_ID_nonterminal6(N);
      I_Classwide.Visit_Parseable_Token(N.MOD_part);
      I_Classwide.After_NCNAME_Or_ID_nonterminal6(N);
      pragma Debug (Log_Visit ("NCNAME_Or_ID_nonterminal6", Entering => False));
   end Visit_NCNAME_Or_ID_nonterminal6;
   procedure Before_NCNAME_Or_ID_nonterminal7(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal7'Class) is
   begin
      null;
   end Before_NCNAME_Or_ID_nonterminal7;
   procedure After_NCNAME_Or_ID_nonterminal7(
      I : access DFS;
      N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal7'Class) is
   begin
      null;
   end After_NCNAME_Or_ID_nonterminal7;
   procedure Visit_NCNAME_Or_ID_nonterminal7(
         I : access DFS;
         N : access NCNAME_Or_ID_Model.NCNAME_Or_ID_nonterminal7'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("NCNAME_Or_ID_nonterminal7", Entering => True));
      I_Classwide.Before_NCNAME_Or_ID_nonterminal7(N);
      I_Classwide.Visit_Parseable_Token(N.DIV_part);
      I_Classwide.After_NCNAME_Or_ID_nonterminal7(N);
      pragma Debug (Log_Visit ("NCNAME_Or_ID_nonterminal7", Entering => False));
   end Visit_NCNAME_Or_ID_nonterminal7;
   procedure Before_Predicate_Expr_nonterminal(
      I : access DFS;
      N : access Predicate_Expr_Model.Predicate_Expr_nonterminal'Class) is
   begin
      null;
   end Before_Predicate_Expr_nonterminal;
   procedure After_Predicate_Expr_nonterminal(
      I : access DFS;
      N : access Predicate_Expr_Model.Predicate_Expr_nonterminal'Class) is
   begin
      null;
   end After_Predicate_Expr_nonterminal;
   procedure Visit_Predicate_Expr_nonterminal(
         I : access DFS;
         N : access Predicate_Expr_Model.Predicate_Expr_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Predicate_Expr_nonterminal", Entering => True));
      I_Classwide.Before_Predicate_Expr_nonterminal(N);
      N.Expr_part.Acceptor(I);
      I_Classwide.After_Predicate_Expr_nonterminal(N);
      pragma Debug (Log_Visit ("Predicate_Expr_nonterminal", Entering => False));
   end Visit_Predicate_Expr_nonterminal;
   procedure Before_Abbreviated_Absolute_Location_Path_nonterminal(
      I : access DFS;
      N : access Abbreviated_Absolute_Location_Path_Model.Abbreviated_Absolute_Location_Path_nonterminal'Class) is
   begin
      null;
   end Before_Abbreviated_Absolute_Location_Path_nonterminal;
   procedure After_Abbreviated_Absolute_Location_Path_nonterminal(
      I : access DFS;
      N : access Abbreviated_Absolute_Location_Path_Model.Abbreviated_Absolute_Location_Path_nonterminal'Class) is
   begin
      null;
   end After_Abbreviated_Absolute_Location_Path_nonterminal;
   procedure Visit_Abbreviated_Absolute_Location_Path_nonterminal(
         I : access DFS;
         N : access Abbreviated_Absolute_Location_Path_Model.Abbreviated_Absolute_Location_Path_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Abbreviated_Absolute_Location_Path_nonterminal", Entering => True));
      I_Classwide.Before_Abbreviated_Absolute_Location_Path_nonterminal(N);
      N.Double_Slash_part.Acceptor(I);
      N.Relative_Location_Path_part.Acceptor(I);
      I_Classwide.After_Abbreviated_Absolute_Location_Path_nonterminal(N);
      pragma Debug (Log_Visit ("Abbreviated_Absolute_Location_Path_nonterminal", Entering => False));
   end Visit_Abbreviated_Absolute_Location_Path_nonterminal;
   procedure Before_Double_Slash_nonterminal(
      I : access DFS;
      N : access Double_Slash_Model.Double_Slash_nonterminal'Class) is
   begin
      null;
   end Before_Double_Slash_nonterminal;
   procedure After_Double_Slash_nonterminal(
      I : access DFS;
      N : access Double_Slash_Model.Double_Slash_nonterminal'Class) is
   begin
      null;
   end After_Double_Slash_nonterminal;
   procedure Visit_Double_Slash_nonterminal(
         I : access DFS;
         N : access Double_Slash_Model.Double_Slash_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Double_Slash_nonterminal", Entering => True));
      I_Classwide.Before_Double_Slash_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.DOUBLE_SLASH_T_part);
      I_Classwide.After_Double_Slash_nonterminal(N);
      pragma Debug (Log_Visit ("Double_Slash_nonterminal", Entering => False));
   end Visit_Double_Slash_nonterminal;
   procedure Before_Abbreviated_Relative_Location_Path_nonterminal(
      I : access DFS;
      N : access Abbreviated_Relative_Location_Path_Model.Abbreviated_Relative_Location_Path_nonterminal'Class) is
   begin
      null;
   end Before_Abbreviated_Relative_Location_Path_nonterminal;
   procedure After_Abbreviated_Relative_Location_Path_nonterminal(
      I : access DFS;
      N : access Abbreviated_Relative_Location_Path_Model.Abbreviated_Relative_Location_Path_nonterminal'Class) is
   begin
      null;
   end After_Abbreviated_Relative_Location_Path_nonterminal;
   procedure Visit_Abbreviated_Relative_Location_Path_nonterminal(
         I : access DFS;
         N : access Abbreviated_Relative_Location_Path_Model.Abbreviated_Relative_Location_Path_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Abbreviated_Relative_Location_Path_nonterminal", Entering => True));
      I_Classwide.Before_Abbreviated_Relative_Location_Path_nonterminal(N);
      N.Relative_Location_Path_part.Acceptor(I);
      N.Double_Slash_part.Acceptor(I);
      N.Step_part.Acceptor(I);
      I_Classwide.After_Abbreviated_Relative_Location_Path_nonterminal(N);
      pragma Debug (Log_Visit ("Abbreviated_Relative_Location_Path_nonterminal", Entering => False));
   end Visit_Abbreviated_Relative_Location_Path_nonterminal;
   procedure Before_Abbreviated_Step_nonterminal1(
      I : access DFS;
      N : access Abbreviated_Step_Model.Abbreviated_Step_nonterminal1'Class) is
   begin
      null;
   end Before_Abbreviated_Step_nonterminal1;
   procedure After_Abbreviated_Step_nonterminal1(
      I : access DFS;
      N : access Abbreviated_Step_Model.Abbreviated_Step_nonterminal1'Class) is
   begin
      null;
   end After_Abbreviated_Step_nonterminal1;
   procedure Visit_Abbreviated_Step_nonterminal1(
         I : access DFS;
         N : access Abbreviated_Step_Model.Abbreviated_Step_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Abbreviated_Step_nonterminal1", Entering => True));
      I_Classwide.Before_Abbreviated_Step_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.DOT_part);
      I_Classwide.After_Abbreviated_Step_nonterminal1(N);
      pragma Debug (Log_Visit ("Abbreviated_Step_nonterminal1", Entering => False));
   end Visit_Abbreviated_Step_nonterminal1;
   procedure Before_Abbreviated_Step_nonterminal2(
      I : access DFS;
      N : access Abbreviated_Step_Model.Abbreviated_Step_nonterminal2'Class) is
   begin
      null;
   end Before_Abbreviated_Step_nonterminal2;
   procedure After_Abbreviated_Step_nonterminal2(
      I : access DFS;
      N : access Abbreviated_Step_Model.Abbreviated_Step_nonterminal2'Class) is
   begin
      null;
   end After_Abbreviated_Step_nonterminal2;
   procedure Visit_Abbreviated_Step_nonterminal2(
         I : access DFS;
         N : access Abbreviated_Step_Model.Abbreviated_Step_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Abbreviated_Step_nonterminal2", Entering => True));
      I_Classwide.Before_Abbreviated_Step_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.DOUBLE_DOT_part);
      I_Classwide.After_Abbreviated_Step_nonterminal2(N);
      pragma Debug (Log_Visit ("Abbreviated_Step_nonterminal2", Entering => False));
   end Visit_Abbreviated_Step_nonterminal2;
   procedure Before_Expr_nonterminal(
      I : access DFS;
      N : access Expr_Model.Expr_nonterminal'Class) is
   begin
      null;
   end Before_Expr_nonterminal;
   procedure After_Expr_nonterminal(
      I : access DFS;
      N : access Expr_Model.Expr_nonterminal'Class) is
   begin
      null;
   end After_Expr_nonterminal;
   procedure Visit_Expr_nonterminal(
         I : access DFS;
         N : access Expr_Model.Expr_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Expr_nonterminal", Entering => True));
      I_Classwide.Before_Expr_nonterminal(N);
      N.Or_Expr_part.Acceptor(I);
      I_Classwide.After_Expr_nonterminal(N);
      pragma Debug (Log_Visit ("Expr_nonterminal", Entering => False));
   end Visit_Expr_nonterminal;
   procedure Before_Primary_Expr_nonterminal1(
      I : access DFS;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal1'Class) is
   begin
      null;
   end Before_Primary_Expr_nonterminal1;
   procedure After_Primary_Expr_nonterminal1(
      I : access DFS;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal1'Class) is
   begin
      null;
   end After_Primary_Expr_nonterminal1;
   procedure Visit_Primary_Expr_nonterminal1(
         I : access DFS;
         N : access Primary_Expr_Model.Primary_Expr_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Primary_Expr_nonterminal1", Entering => True));
      I_Classwide.Before_Primary_Expr_nonterminal1(N);
      N.Variable_Reference_part.Acceptor(I);
      I_Classwide.After_Primary_Expr_nonterminal1(N);
      pragma Debug (Log_Visit ("Primary_Expr_nonterminal1", Entering => False));
   end Visit_Primary_Expr_nonterminal1;
   procedure Before_Primary_Expr_nonterminal2(
      I : access DFS;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal2'Class) is
   begin
      null;
   end Before_Primary_Expr_nonterminal2;
   procedure After_Primary_Expr_nonterminal2(
      I : access DFS;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal2'Class) is
   begin
      null;
   end After_Primary_Expr_nonterminal2;
   procedure Visit_Primary_Expr_nonterminal2(
         I : access DFS;
         N : access Primary_Expr_Model.Primary_Expr_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Primary_Expr_nonterminal2", Entering => True));
      I_Classwide.Before_Primary_Expr_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      N.Expr_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      I_Classwide.After_Primary_Expr_nonterminal2(N);
      pragma Debug (Log_Visit ("Primary_Expr_nonterminal2", Entering => False));
   end Visit_Primary_Expr_nonterminal2;
   procedure Before_Primary_Expr_nonterminal3(
      I : access DFS;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal3'Class) is
   begin
      null;
   end Before_Primary_Expr_nonterminal3;
   procedure After_Primary_Expr_nonterminal3(
      I : access DFS;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal3'Class) is
   begin
      null;
   end After_Primary_Expr_nonterminal3;
   procedure Visit_Primary_Expr_nonterminal3(
         I : access DFS;
         N : access Primary_Expr_Model.Primary_Expr_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Primary_Expr_nonterminal3", Entering => True));
      I_Classwide.Before_Primary_Expr_nonterminal3(N);
      N.LITERAL_part.Acceptor(I);
      I_Classwide.After_Primary_Expr_nonterminal3(N);
      pragma Debug (Log_Visit ("Primary_Expr_nonterminal3", Entering => False));
   end Visit_Primary_Expr_nonterminal3;
   procedure Before_Primary_Expr_nonterminal4(
      I : access DFS;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal4'Class) is
   begin
      null;
   end Before_Primary_Expr_nonterminal4;
   procedure After_Primary_Expr_nonterminal4(
      I : access DFS;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal4'Class) is
   begin
      null;
   end After_Primary_Expr_nonterminal4;
   procedure Visit_Primary_Expr_nonterminal4(
         I : access DFS;
         N : access Primary_Expr_Model.Primary_Expr_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Primary_Expr_nonterminal4", Entering => True));
      I_Classwide.Before_Primary_Expr_nonterminal4(N);
      N.Number_part.Acceptor(I);
      I_Classwide.After_Primary_Expr_nonterminal4(N);
      pragma Debug (Log_Visit ("Primary_Expr_nonterminal4", Entering => False));
   end Visit_Primary_Expr_nonterminal4;
   procedure Before_Primary_Expr_nonterminal5(
      I : access DFS;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal5'Class) is
   begin
      null;
   end Before_Primary_Expr_nonterminal5;
   procedure After_Primary_Expr_nonterminal5(
      I : access DFS;
      N : access Primary_Expr_Model.Primary_Expr_nonterminal5'Class) is
   begin
      null;
   end After_Primary_Expr_nonterminal5;
   procedure Visit_Primary_Expr_nonterminal5(
         I : access DFS;
         N : access Primary_Expr_Model.Primary_Expr_nonterminal5'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Primary_Expr_nonterminal5", Entering => True));
      I_Classwide.Before_Primary_Expr_nonterminal5(N);
      N.Function_Call_part.Acceptor(I);
      I_Classwide.After_Primary_Expr_nonterminal5(N);
      pragma Debug (Log_Visit ("Primary_Expr_nonterminal5", Entering => False));
   end Visit_Primary_Expr_nonterminal5;
   procedure Before_Variable_Reference_nonterminal(
      I : access DFS;
      N : access Variable_Reference_Model.Variable_Reference_nonterminal'Class) is
   begin
      null;
   end Before_Variable_Reference_nonterminal;
   procedure After_Variable_Reference_nonterminal(
      I : access DFS;
      N : access Variable_Reference_Model.Variable_Reference_nonterminal'Class) is
   begin
      null;
   end After_Variable_Reference_nonterminal;
   procedure Visit_Variable_Reference_nonterminal(
         I : access DFS;
         N : access Variable_Reference_Model.Variable_Reference_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Variable_Reference_nonterminal", Entering => True));
      I_Classwide.Before_Variable_Reference_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.DOLLAR_part);
      N.QName_part.Acceptor(I);
      I_Classwide.After_Variable_Reference_nonterminal(N);
      pragma Debug (Log_Visit ("Variable_Reference_nonterminal", Entering => False));
   end Visit_Variable_Reference_nonterminal;
   procedure Before_Function_Call_nonterminal(
      I : access DFS;
      N : access Function_Call_Model.Function_Call_nonterminal'Class) is
   begin
      null;
   end Before_Function_Call_nonterminal;
   procedure After_Function_Call_nonterminal(
      I : access DFS;
      N : access Function_Call_Model.Function_Call_nonterminal'Class) is
   begin
      null;
   end After_Function_Call_nonterminal;
   procedure Visit_Function_Call_nonterminal(
         I : access DFS;
         N : access Function_Call_Model.Function_Call_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Function_Call_nonterminal", Entering => True));
      I_Classwide.Before_Function_Call_nonterminal(N);
      N.Function_Name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      N.Arguments_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      I_Classwide.After_Function_Call_nonterminal(N);
      pragma Debug (Log_Visit ("Function_Call_nonterminal", Entering => False));
   end Visit_Function_Call_nonterminal;
   procedure Before_Arguments_nonterminal1(
      I : access DFS;
      N : access Arguments_Model.Arguments_nonterminal1'Class) is
   begin
      null;
   end Before_Arguments_nonterminal1;
   procedure After_Arguments_nonterminal1(
      I : access DFS;
      N : access Arguments_Model.Arguments_nonterminal1'Class) is
   begin
      null;
   end After_Arguments_nonterminal1;
   procedure Visit_Arguments_nonterminal1(
         I : access DFS;
         N : access Arguments_Model.Arguments_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Arguments_nonterminal1", Entering => True));
      I_Classwide.Before_Arguments_nonterminal1(N);
      I_Classwide.After_Arguments_nonterminal1(N);
      pragma Debug (Log_Visit ("Arguments_nonterminal1", Entering => False));
   end Visit_Arguments_nonterminal1;
   procedure Before_Arguments_nonterminal2(
      I : access DFS;
      N : access Arguments_Model.Arguments_nonterminal2'Class) is
   begin
      null;
   end Before_Arguments_nonterminal2;
   procedure After_Arguments_nonterminal2(
      I : access DFS;
      N : access Arguments_Model.Arguments_nonterminal2'Class) is
   begin
      null;
   end After_Arguments_nonterminal2;
   procedure Visit_Arguments_nonterminal2(
         I : access DFS;
         N : access Arguments_Model.Arguments_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Arguments_nonterminal2", Entering => True));
      I_Classwide.Before_Arguments_nonterminal2(N);
      N.Argument_part.Acceptor(I);
      I_Classwide.After_Arguments_nonterminal2(N);
      pragma Debug (Log_Visit ("Arguments_nonterminal2", Entering => False));
   end Visit_Arguments_nonterminal2;
   procedure Before_Arguments_nonterminal3(
      I : access DFS;
      N : access Arguments_Model.Arguments_nonterminal3'Class) is
   begin
      null;
   end Before_Arguments_nonterminal3;
   procedure After_Arguments_nonterminal3(
      I : access DFS;
      N : access Arguments_Model.Arguments_nonterminal3'Class) is
   begin
      null;
   end After_Arguments_nonterminal3;
   procedure Visit_Arguments_nonterminal3(
         I : access DFS;
         N : access Arguments_Model.Arguments_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Arguments_nonterminal3", Entering => True));
      I_Classwide.Before_Arguments_nonterminal3(N);
      N.Arguments_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.COMMA_part);
      N.Argument_part.Acceptor(I);
      I_Classwide.After_Arguments_nonterminal3(N);
      pragma Debug (Log_Visit ("Arguments_nonterminal3", Entering => False));
   end Visit_Arguments_nonterminal3;
   procedure Before_Argument_nonterminal(
      I : access DFS;
      N : access Argument_Model.Argument_nonterminal'Class) is
   begin
      null;
   end Before_Argument_nonterminal;
   procedure After_Argument_nonterminal(
      I : access DFS;
      N : access Argument_Model.Argument_nonterminal'Class) is
   begin
      null;
   end After_Argument_nonterminal;
   procedure Visit_Argument_nonterminal(
         I : access DFS;
         N : access Argument_Model.Argument_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Argument_nonterminal", Entering => True));
      I_Classwide.Before_Argument_nonterminal(N);
      N.Expr_part.Acceptor(I);
      I_Classwide.After_Argument_nonterminal(N);
      pragma Debug (Log_Visit ("Argument_nonterminal", Entering => False));
   end Visit_Argument_nonterminal;
   procedure Before_Function_Name_nonterminal(
      I : access DFS;
      N : access Function_Name_Model.Function_Name_nonterminal'Class) is
   begin
      null;
   end Before_Function_Name_nonterminal;
   procedure After_Function_Name_nonterminal(
      I : access DFS;
      N : access Function_Name_Model.Function_Name_nonterminal'Class) is
   begin
      null;
   end After_Function_Name_nonterminal;
   procedure Visit_Function_Name_nonterminal(
         I : access DFS;
         N : access Function_Name_Model.Function_Name_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Function_Name_nonterminal", Entering => True));
      I_Classwide.Before_Function_Name_nonterminal(N);
      N.QName_part.Acceptor(I);
      I_Classwide.After_Function_Name_nonterminal(N);
      pragma Debug (Log_Visit ("Function_Name_nonterminal", Entering => False));
   end Visit_Function_Name_nonterminal;
   procedure Before_Union_Expr_nonterminal1(
      I : access DFS;
      N : access Union_Expr_Model.Union_Expr_nonterminal1'Class) is
   begin
      null;
   end Before_Union_Expr_nonterminal1;
   procedure After_Union_Expr_nonterminal1(
      I : access DFS;
      N : access Union_Expr_Model.Union_Expr_nonterminal1'Class) is
   begin
      null;
   end After_Union_Expr_nonterminal1;
   procedure Visit_Union_Expr_nonterminal1(
         I : access DFS;
         N : access Union_Expr_Model.Union_Expr_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Union_Expr_nonterminal1", Entering => True));
      I_Classwide.Before_Union_Expr_nonterminal1(N);
      N.Path_Expr_part.Acceptor(I);
      I_Classwide.After_Union_Expr_nonterminal1(N);
      pragma Debug (Log_Visit ("Union_Expr_nonterminal1", Entering => False));
   end Visit_Union_Expr_nonterminal1;
   procedure Before_Union_Expr_nonterminal2(
      I : access DFS;
      N : access Union_Expr_Model.Union_Expr_nonterminal2'Class) is
   begin
      null;
   end Before_Union_Expr_nonterminal2;
   procedure After_Union_Expr_nonterminal2(
      I : access DFS;
      N : access Union_Expr_Model.Union_Expr_nonterminal2'Class) is
   begin
      null;
   end After_Union_Expr_nonterminal2;
   procedure Visit_Union_Expr_nonterminal2(
         I : access DFS;
         N : access Union_Expr_Model.Union_Expr_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Union_Expr_nonterminal2", Entering => True));
      I_Classwide.Before_Union_Expr_nonterminal2(N);
      N.Union_Expr_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.V_BAR_part);
      N.Path_Expr_part.Acceptor(I);
      I_Classwide.After_Union_Expr_nonterminal2(N);
      pragma Debug (Log_Visit ("Union_Expr_nonterminal2", Entering => False));
   end Visit_Union_Expr_nonterminal2;
   procedure Before_Path_Expr_nonterminal1(
      I : access DFS;
      N : access Path_Expr_Model.Path_Expr_nonterminal1'Class) is
   begin
      null;
   end Before_Path_Expr_nonterminal1;
   procedure After_Path_Expr_nonterminal1(
      I : access DFS;
      N : access Path_Expr_Model.Path_Expr_nonterminal1'Class) is
   begin
      null;
   end After_Path_Expr_nonterminal1;
   procedure Visit_Path_Expr_nonterminal1(
         I : access DFS;
         N : access Path_Expr_Model.Path_Expr_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Path_Expr_nonterminal1", Entering => True));
      I_Classwide.Before_Path_Expr_nonterminal1(N);
      N.Location_Path_part.Acceptor(I);
      I_Classwide.After_Path_Expr_nonterminal1(N);
      pragma Debug (Log_Visit ("Path_Expr_nonterminal1", Entering => False));
   end Visit_Path_Expr_nonterminal1;
   procedure Before_Path_Expr_nonterminal2(
      I : access DFS;
      N : access Path_Expr_Model.Path_Expr_nonterminal2'Class) is
   begin
      null;
   end Before_Path_Expr_nonterminal2;
   procedure After_Path_Expr_nonterminal2(
      I : access DFS;
      N : access Path_Expr_Model.Path_Expr_nonterminal2'Class) is
   begin
      null;
   end After_Path_Expr_nonterminal2;
   procedure Visit_Path_Expr_nonterminal2(
         I : access DFS;
         N : access Path_Expr_Model.Path_Expr_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Path_Expr_nonterminal2", Entering => True));
      I_Classwide.Before_Path_Expr_nonterminal2(N);
      N.Filter_Expr_part.Acceptor(I);
      I_Classwide.After_Path_Expr_nonterminal2(N);
      pragma Debug (Log_Visit ("Path_Expr_nonterminal2", Entering => False));
   end Visit_Path_Expr_nonterminal2;
   procedure Before_Path_Expr_nonterminal3(
      I : access DFS;
      N : access Path_Expr_Model.Path_Expr_nonterminal3'Class) is
   begin
      null;
   end Before_Path_Expr_nonterminal3;
   procedure After_Path_Expr_nonterminal3(
      I : access DFS;
      N : access Path_Expr_Model.Path_Expr_nonterminal3'Class) is
   begin
      null;
   end After_Path_Expr_nonterminal3;
   procedure Visit_Path_Expr_nonterminal3(
         I : access DFS;
         N : access Path_Expr_Model.Path_Expr_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Path_Expr_nonterminal3", Entering => True));
      I_Classwide.Before_Path_Expr_nonterminal3(N);
      N.Filter_Expr_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SLASH_part);
      N.Relative_Location_Path_part.Acceptor(I);
      I_Classwide.After_Path_Expr_nonterminal3(N);
      pragma Debug (Log_Visit ("Path_Expr_nonterminal3", Entering => False));
   end Visit_Path_Expr_nonterminal3;
   procedure Before_Path_Expr_nonterminal4(
      I : access DFS;
      N : access Path_Expr_Model.Path_Expr_nonterminal4'Class) is
   begin
      null;
   end Before_Path_Expr_nonterminal4;
   procedure After_Path_Expr_nonterminal4(
      I : access DFS;
      N : access Path_Expr_Model.Path_Expr_nonterminal4'Class) is
   begin
      null;
   end After_Path_Expr_nonterminal4;
   procedure Visit_Path_Expr_nonterminal4(
         I : access DFS;
         N : access Path_Expr_Model.Path_Expr_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Path_Expr_nonterminal4", Entering => True));
      I_Classwide.Before_Path_Expr_nonterminal4(N);
      N.Filter_Expr_part.Acceptor(I);
      N.DOUBLE_SLASH_part.Acceptor(I);
      N.Relative_Location_Path_part.Acceptor(I);
      I_Classwide.After_Path_Expr_nonterminal4(N);
      pragma Debug (Log_Visit ("Path_Expr_nonterminal4", Entering => False));
   end Visit_Path_Expr_nonterminal4;
   procedure Before_Filter_Expr_nonterminal1(
      I : access DFS;
      N : access Filter_Expr_Model.Filter_Expr_nonterminal1'Class) is
   begin
      null;
   end Before_Filter_Expr_nonterminal1;
   procedure After_Filter_Expr_nonterminal1(
      I : access DFS;
      N : access Filter_Expr_Model.Filter_Expr_nonterminal1'Class) is
   begin
      null;
   end After_Filter_Expr_nonterminal1;
   procedure Visit_Filter_Expr_nonterminal1(
         I : access DFS;
         N : access Filter_Expr_Model.Filter_Expr_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Filter_Expr_nonterminal1", Entering => True));
      I_Classwide.Before_Filter_Expr_nonterminal1(N);
      N.Primary_Expr_part.Acceptor(I);
      I_Classwide.After_Filter_Expr_nonterminal1(N);
      pragma Debug (Log_Visit ("Filter_Expr_nonterminal1", Entering => False));
   end Visit_Filter_Expr_nonterminal1;
   procedure Before_Filter_Expr_nonterminal2(
      I : access DFS;
      N : access Filter_Expr_Model.Filter_Expr_nonterminal2'Class) is
   begin
      null;
   end Before_Filter_Expr_nonterminal2;
   procedure After_Filter_Expr_nonterminal2(
      I : access DFS;
      N : access Filter_Expr_Model.Filter_Expr_nonterminal2'Class) is
   begin
      null;
   end After_Filter_Expr_nonterminal2;
   procedure Visit_Filter_Expr_nonterminal2(
         I : access DFS;
         N : access Filter_Expr_Model.Filter_Expr_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Filter_Expr_nonterminal2", Entering => True));
      I_Classwide.Before_Filter_Expr_nonterminal2(N);
      N.Filter_Expr_part.Acceptor(I);
      N.Predicate_part.Acceptor(I);
      I_Classwide.After_Filter_Expr_nonterminal2(N);
      pragma Debug (Log_Visit ("Filter_Expr_nonterminal2", Entering => False));
   end Visit_Filter_Expr_nonterminal2;
   procedure Before_Or_Expr_nonterminal1(
      I : access DFS;
      N : access Or_Expr_Model.Or_Expr_nonterminal1'Class) is
   begin
      null;
   end Before_Or_Expr_nonterminal1;
   procedure After_Or_Expr_nonterminal1(
      I : access DFS;
      N : access Or_Expr_Model.Or_Expr_nonterminal1'Class) is
   begin
      null;
   end After_Or_Expr_nonterminal1;
   procedure Visit_Or_Expr_nonterminal1(
         I : access DFS;
         N : access Or_Expr_Model.Or_Expr_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Or_Expr_nonterminal1", Entering => True));
      I_Classwide.Before_Or_Expr_nonterminal1(N);
      N.And_Expr_part.Acceptor(I);
      I_Classwide.After_Or_Expr_nonterminal1(N);
      pragma Debug (Log_Visit ("Or_Expr_nonterminal1", Entering => False));
   end Visit_Or_Expr_nonterminal1;
   procedure Before_Or_Expr_nonterminal2(
      I : access DFS;
      N : access Or_Expr_Model.Or_Expr_nonterminal2'Class) is
   begin
      null;
   end Before_Or_Expr_nonterminal2;
   procedure After_Or_Expr_nonterminal2(
      I : access DFS;
      N : access Or_Expr_Model.Or_Expr_nonterminal2'Class) is
   begin
      null;
   end After_Or_Expr_nonterminal2;
   procedure Visit_Or_Expr_nonterminal2(
         I : access DFS;
         N : access Or_Expr_Model.Or_Expr_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Or_Expr_nonterminal2", Entering => True));
      I_Classwide.Before_Or_Expr_nonterminal2(N);
      N.Or_Expr_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.OR_part);
      N.And_Expr_part.Acceptor(I);
      I_Classwide.After_Or_Expr_nonterminal2(N);
      pragma Debug (Log_Visit ("Or_Expr_nonterminal2", Entering => False));
   end Visit_Or_Expr_nonterminal2;
   procedure Before_And_Expr_nonterminal1(
      I : access DFS;
      N : access And_Expr_Model.And_Expr_nonterminal1'Class) is
   begin
      null;
   end Before_And_Expr_nonterminal1;
   procedure After_And_Expr_nonterminal1(
      I : access DFS;
      N : access And_Expr_Model.And_Expr_nonterminal1'Class) is
   begin
      null;
   end After_And_Expr_nonterminal1;
   procedure Visit_And_Expr_nonterminal1(
         I : access DFS;
         N : access And_Expr_Model.And_Expr_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("And_Expr_nonterminal1", Entering => True));
      I_Classwide.Before_And_Expr_nonterminal1(N);
      N.Equality_Expr_part.Acceptor(I);
      I_Classwide.After_And_Expr_nonterminal1(N);
      pragma Debug (Log_Visit ("And_Expr_nonterminal1", Entering => False));
   end Visit_And_Expr_nonterminal1;
   procedure Before_And_Expr_nonterminal2(
      I : access DFS;
      N : access And_Expr_Model.And_Expr_nonterminal2'Class) is
   begin
      null;
   end Before_And_Expr_nonterminal2;
   procedure After_And_Expr_nonterminal2(
      I : access DFS;
      N : access And_Expr_Model.And_Expr_nonterminal2'Class) is
   begin
      null;
   end After_And_Expr_nonterminal2;
   procedure Visit_And_Expr_nonterminal2(
         I : access DFS;
         N : access And_Expr_Model.And_Expr_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("And_Expr_nonterminal2", Entering => True));
      I_Classwide.Before_And_Expr_nonterminal2(N);
      N.And_Expr_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.AND_part);
      N.Equality_Expr_part.Acceptor(I);
      I_Classwide.After_And_Expr_nonterminal2(N);
      pragma Debug (Log_Visit ("And_Expr_nonterminal2", Entering => False));
   end Visit_And_Expr_nonterminal2;
   procedure Before_Equality_Expr_nonterminal1(
      I : access DFS;
      N : access Equality_Expr_Model.Equality_Expr_nonterminal1'Class) is
   begin
      null;
   end Before_Equality_Expr_nonterminal1;
   procedure After_Equality_Expr_nonterminal1(
      I : access DFS;
      N : access Equality_Expr_Model.Equality_Expr_nonterminal1'Class) is
   begin
      null;
   end After_Equality_Expr_nonterminal1;
   procedure Visit_Equality_Expr_nonterminal1(
         I : access DFS;
         N : access Equality_Expr_Model.Equality_Expr_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Equality_Expr_nonterminal1", Entering => True));
      I_Classwide.Before_Equality_Expr_nonterminal1(N);
      N.Relational_Expr_part.Acceptor(I);
      I_Classwide.After_Equality_Expr_nonterminal1(N);
      pragma Debug (Log_Visit ("Equality_Expr_nonterminal1", Entering => False));
   end Visit_Equality_Expr_nonterminal1;
   procedure Before_Equality_Expr_nonterminal2(
      I : access DFS;
      N : access Equality_Expr_Model.Equality_Expr_nonterminal2'Class) is
   begin
      null;
   end Before_Equality_Expr_nonterminal2;
   procedure After_Equality_Expr_nonterminal2(
      I : access DFS;
      N : access Equality_Expr_Model.Equality_Expr_nonterminal2'Class) is
   begin
      null;
   end After_Equality_Expr_nonterminal2;
   procedure Visit_Equality_Expr_nonterminal2(
         I : access DFS;
         N : access Equality_Expr_Model.Equality_Expr_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Equality_Expr_nonterminal2", Entering => True));
      I_Classwide.Before_Equality_Expr_nonterminal2(N);
      N.Equality_Expr_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.EQ_part);
      N.Relational_Expr_part.Acceptor(I);
      I_Classwide.After_Equality_Expr_nonterminal2(N);
      pragma Debug (Log_Visit ("Equality_Expr_nonterminal2", Entering => False));
   end Visit_Equality_Expr_nonterminal2;
   procedure Before_Equality_Expr_nonterminal3(
      I : access DFS;
      N : access Equality_Expr_Model.Equality_Expr_nonterminal3'Class) is
   begin
      null;
   end Before_Equality_Expr_nonterminal3;
   procedure After_Equality_Expr_nonterminal3(
      I : access DFS;
      N : access Equality_Expr_Model.Equality_Expr_nonterminal3'Class) is
   begin
      null;
   end After_Equality_Expr_nonterminal3;
   procedure Visit_Equality_Expr_nonterminal3(
         I : access DFS;
         N : access Equality_Expr_Model.Equality_Expr_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Equality_Expr_nonterminal3", Entering => True));
      I_Classwide.Before_Equality_Expr_nonterminal3(N);
      N.Equality_Expr_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.NE_part);
      N.Relational_Expr_part.Acceptor(I);
      I_Classwide.After_Equality_Expr_nonterminal3(N);
      pragma Debug (Log_Visit ("Equality_Expr_nonterminal3", Entering => False));
   end Visit_Equality_Expr_nonterminal3;
   procedure Before_Relational_Expr_nonterminal1(
      I : access DFS;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal1'Class) is
   begin
      null;
   end Before_Relational_Expr_nonterminal1;
   procedure After_Relational_Expr_nonterminal1(
      I : access DFS;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal1'Class) is
   begin
      null;
   end After_Relational_Expr_nonterminal1;
   procedure Visit_Relational_Expr_nonterminal1(
         I : access DFS;
         N : access Relational_Expr_Model.Relational_Expr_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Relational_Expr_nonterminal1", Entering => True));
      I_Classwide.Before_Relational_Expr_nonterminal1(N);
      N.Additive_Expr_part.Acceptor(I);
      I_Classwide.After_Relational_Expr_nonterminal1(N);
      pragma Debug (Log_Visit ("Relational_Expr_nonterminal1", Entering => False));
   end Visit_Relational_Expr_nonterminal1;
   procedure Before_Relational_Expr_nonterminal2(
      I : access DFS;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal2'Class) is
   begin
      null;
   end Before_Relational_Expr_nonterminal2;
   procedure After_Relational_Expr_nonterminal2(
      I : access DFS;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal2'Class) is
   begin
      null;
   end After_Relational_Expr_nonterminal2;
   procedure Visit_Relational_Expr_nonterminal2(
         I : access DFS;
         N : access Relational_Expr_Model.Relational_Expr_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Relational_Expr_nonterminal2", Entering => True));
      I_Classwide.Before_Relational_Expr_nonterminal2(N);
      N.Relational_Expr_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.LT_part);
      N.Additive_Expr_part.Acceptor(I);
      I_Classwide.After_Relational_Expr_nonterminal2(N);
      pragma Debug (Log_Visit ("Relational_Expr_nonterminal2", Entering => False));
   end Visit_Relational_Expr_nonterminal2;
   procedure Before_Relational_Expr_nonterminal3(
      I : access DFS;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal3'Class) is
   begin
      null;
   end Before_Relational_Expr_nonterminal3;
   procedure After_Relational_Expr_nonterminal3(
      I : access DFS;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal3'Class) is
   begin
      null;
   end After_Relational_Expr_nonterminal3;
   procedure Visit_Relational_Expr_nonterminal3(
         I : access DFS;
         N : access Relational_Expr_Model.Relational_Expr_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Relational_Expr_nonterminal3", Entering => True));
      I_Classwide.Before_Relational_Expr_nonterminal3(N);
      N.Relational_Expr_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.GT_part);
      N.Additive_Expr_part.Acceptor(I);
      I_Classwide.After_Relational_Expr_nonterminal3(N);
      pragma Debug (Log_Visit ("Relational_Expr_nonterminal3", Entering => False));
   end Visit_Relational_Expr_nonterminal3;
   procedure Before_Relational_Expr_nonterminal4(
      I : access DFS;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal4'Class) is
   begin
      null;
   end Before_Relational_Expr_nonterminal4;
   procedure After_Relational_Expr_nonterminal4(
      I : access DFS;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal4'Class) is
   begin
      null;
   end After_Relational_Expr_nonterminal4;
   procedure Visit_Relational_Expr_nonterminal4(
         I : access DFS;
         N : access Relational_Expr_Model.Relational_Expr_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Relational_Expr_nonterminal4", Entering => True));
      I_Classwide.Before_Relational_Expr_nonterminal4(N);
      N.Relational_Expr_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.LE_part);
      N.Additive_Expr_part.Acceptor(I);
      I_Classwide.After_Relational_Expr_nonterminal4(N);
      pragma Debug (Log_Visit ("Relational_Expr_nonterminal4", Entering => False));
   end Visit_Relational_Expr_nonterminal4;
   procedure Before_Relational_Expr_nonterminal5(
      I : access DFS;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal5'Class) is
   begin
      null;
   end Before_Relational_Expr_nonterminal5;
   procedure After_Relational_Expr_nonterminal5(
      I : access DFS;
      N : access Relational_Expr_Model.Relational_Expr_nonterminal5'Class) is
   begin
      null;
   end After_Relational_Expr_nonterminal5;
   procedure Visit_Relational_Expr_nonterminal5(
         I : access DFS;
         N : access Relational_Expr_Model.Relational_Expr_nonterminal5'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Relational_Expr_nonterminal5", Entering => True));
      I_Classwide.Before_Relational_Expr_nonterminal5(N);
      N.Relational_Expr_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.GE_part);
      N.Additive_Expr_part.Acceptor(I);
      I_Classwide.After_Relational_Expr_nonterminal5(N);
      pragma Debug (Log_Visit ("Relational_Expr_nonterminal5", Entering => False));
   end Visit_Relational_Expr_nonterminal5;
   procedure Before_Additive_Expr_nonterminal1(
      I : access DFS;
      N : access Additive_Expr_Model.Additive_Expr_nonterminal1'Class) is
   begin
      null;
   end Before_Additive_Expr_nonterminal1;
   procedure After_Additive_Expr_nonterminal1(
      I : access DFS;
      N : access Additive_Expr_Model.Additive_Expr_nonterminal1'Class) is
   begin
      null;
   end After_Additive_Expr_nonterminal1;
   procedure Visit_Additive_Expr_nonterminal1(
         I : access DFS;
         N : access Additive_Expr_Model.Additive_Expr_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Additive_Expr_nonterminal1", Entering => True));
      I_Classwide.Before_Additive_Expr_nonterminal1(N);
      N.Multiplicative_Expr_part.Acceptor(I);
      I_Classwide.After_Additive_Expr_nonterminal1(N);
      pragma Debug (Log_Visit ("Additive_Expr_nonterminal1", Entering => False));
   end Visit_Additive_Expr_nonterminal1;
   procedure Before_Additive_Expr_nonterminal2(
      I : access DFS;
      N : access Additive_Expr_Model.Additive_Expr_nonterminal2'Class) is
   begin
      null;
   end Before_Additive_Expr_nonterminal2;
   procedure After_Additive_Expr_nonterminal2(
      I : access DFS;
      N : access Additive_Expr_Model.Additive_Expr_nonterminal2'Class) is
   begin
      null;
   end After_Additive_Expr_nonterminal2;
   procedure Visit_Additive_Expr_nonterminal2(
         I : access DFS;
         N : access Additive_Expr_Model.Additive_Expr_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Additive_Expr_nonterminal2", Entering => True));
      I_Classwide.Before_Additive_Expr_nonterminal2(N);
      N.Additive_Expr_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.PLUS_part);
      N.Multiplicative_Expr_part.Acceptor(I);
      I_Classwide.After_Additive_Expr_nonterminal2(N);
      pragma Debug (Log_Visit ("Additive_Expr_nonterminal2", Entering => False));
   end Visit_Additive_Expr_nonterminal2;
   procedure Before_Additive_Expr_nonterminal3(
      I : access DFS;
      N : access Additive_Expr_Model.Additive_Expr_nonterminal3'Class) is
   begin
      null;
   end Before_Additive_Expr_nonterminal3;
   procedure After_Additive_Expr_nonterminal3(
      I : access DFS;
      N : access Additive_Expr_Model.Additive_Expr_nonterminal3'Class) is
   begin
      null;
   end After_Additive_Expr_nonterminal3;
   procedure Visit_Additive_Expr_nonterminal3(
         I : access DFS;
         N : access Additive_Expr_Model.Additive_Expr_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Additive_Expr_nonterminal3", Entering => True));
      I_Classwide.Before_Additive_Expr_nonterminal3(N);
      N.Additive_Expr_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.MINUS_part);
      N.Multiplicative_Expr_part.Acceptor(I);
      I_Classwide.After_Additive_Expr_nonterminal3(N);
      pragma Debug (Log_Visit ("Additive_Expr_nonterminal3", Entering => False));
   end Visit_Additive_Expr_nonterminal3;
   procedure Before_Multiplicative_Expr_nonterminal1(
      I : access DFS;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal1'Class) is
   begin
      null;
   end Before_Multiplicative_Expr_nonterminal1;
   procedure After_Multiplicative_Expr_nonterminal1(
      I : access DFS;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal1'Class) is
   begin
      null;
   end After_Multiplicative_Expr_nonterminal1;
   procedure Visit_Multiplicative_Expr_nonterminal1(
         I : access DFS;
         N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Multiplicative_Expr_nonterminal1", Entering => True));
      I_Classwide.Before_Multiplicative_Expr_nonterminal1(N);
      N.Unary_Expr_part.Acceptor(I);
      I_Classwide.After_Multiplicative_Expr_nonterminal1(N);
      pragma Debug (Log_Visit ("Multiplicative_Expr_nonterminal1", Entering => False));
   end Visit_Multiplicative_Expr_nonterminal1;
   procedure Before_Multiplicative_Expr_nonterminal2(
      I : access DFS;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal2'Class) is
   begin
      null;
   end Before_Multiplicative_Expr_nonterminal2;
   procedure After_Multiplicative_Expr_nonterminal2(
      I : access DFS;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal2'Class) is
   begin
      null;
   end After_Multiplicative_Expr_nonterminal2;
   procedure Visit_Multiplicative_Expr_nonterminal2(
         I : access DFS;
         N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Multiplicative_Expr_nonterminal2", Entering => True));
      I_Classwide.Before_Multiplicative_Expr_nonterminal2(N);
      N.Multiplicative_Expr_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.STAR_part);
      N.Unary_Expr_part.Acceptor(I);
      I_Classwide.After_Multiplicative_Expr_nonterminal2(N);
      pragma Debug (Log_Visit ("Multiplicative_Expr_nonterminal2", Entering => False));
   end Visit_Multiplicative_Expr_nonterminal2;
   procedure Before_Multiplicative_Expr_nonterminal3(
      I : access DFS;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal3'Class) is
   begin
      null;
   end Before_Multiplicative_Expr_nonterminal3;
   procedure After_Multiplicative_Expr_nonterminal3(
      I : access DFS;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal3'Class) is
   begin
      null;
   end After_Multiplicative_Expr_nonterminal3;
   procedure Visit_Multiplicative_Expr_nonterminal3(
         I : access DFS;
         N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Multiplicative_Expr_nonterminal3", Entering => True));
      I_Classwide.Before_Multiplicative_Expr_nonterminal3(N);
      N.Multiplicative_Expr_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.DIV_part);
      N.Unary_Expr_part.Acceptor(I);
      I_Classwide.After_Multiplicative_Expr_nonterminal3(N);
      pragma Debug (Log_Visit ("Multiplicative_Expr_nonterminal3", Entering => False));
   end Visit_Multiplicative_Expr_nonterminal3;
   procedure Before_Multiplicative_Expr_nonterminal4(
      I : access DFS;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal4'Class) is
   begin
      null;
   end Before_Multiplicative_Expr_nonterminal4;
   procedure After_Multiplicative_Expr_nonterminal4(
      I : access DFS;
      N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal4'Class) is
   begin
      null;
   end After_Multiplicative_Expr_nonterminal4;
   procedure Visit_Multiplicative_Expr_nonterminal4(
         I : access DFS;
         N : access Multiplicative_Expr_Model.Multiplicative_Expr_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Multiplicative_Expr_nonterminal4", Entering => True));
      I_Classwide.Before_Multiplicative_Expr_nonterminal4(N);
      N.Multiplicative_Expr_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.MOD_part);
      N.Unary_Expr_part.Acceptor(I);
      I_Classwide.After_Multiplicative_Expr_nonterminal4(N);
      pragma Debug (Log_Visit ("Multiplicative_Expr_nonterminal4", Entering => False));
   end Visit_Multiplicative_Expr_nonterminal4;
   procedure Before_Unary_Expr_nonterminal1(
      I : access DFS;
      N : access Unary_Expr_Model.Unary_Expr_nonterminal1'Class) is
   begin
      null;
   end Before_Unary_Expr_nonterminal1;
   procedure After_Unary_Expr_nonterminal1(
      I : access DFS;
      N : access Unary_Expr_Model.Unary_Expr_nonterminal1'Class) is
   begin
      null;
   end After_Unary_Expr_nonterminal1;
   procedure Visit_Unary_Expr_nonterminal1(
         I : access DFS;
         N : access Unary_Expr_Model.Unary_Expr_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Unary_Expr_nonterminal1", Entering => True));
      I_Classwide.Before_Unary_Expr_nonterminal1(N);
      N.Union_Expr_part.Acceptor(I);
      I_Classwide.After_Unary_Expr_nonterminal1(N);
      pragma Debug (Log_Visit ("Unary_Expr_nonterminal1", Entering => False));
   end Visit_Unary_Expr_nonterminal1;
   procedure Before_Unary_Expr_nonterminal2(
      I : access DFS;
      N : access Unary_Expr_Model.Unary_Expr_nonterminal2'Class) is
   begin
      null;
   end Before_Unary_Expr_nonterminal2;
   procedure After_Unary_Expr_nonterminal2(
      I : access DFS;
      N : access Unary_Expr_Model.Unary_Expr_nonterminal2'Class) is
   begin
      null;
   end After_Unary_Expr_nonterminal2;
   procedure Visit_Unary_Expr_nonterminal2(
         I : access DFS;
         N : access Unary_Expr_Model.Unary_Expr_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Unary_Expr_nonterminal2", Entering => True));
      I_Classwide.Before_Unary_Expr_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.MINUS_part);
      N.Unary_Expr_part.Acceptor(I);
      I_Classwide.After_Unary_Expr_nonterminal2(N);
      pragma Debug (Log_Visit ("Unary_Expr_nonterminal2", Entering => False));
   end Visit_Unary_Expr_nonterminal2;
   procedure Before_Number_nonterminal1(
      I : access DFS;
      N : access Number_Model.Number_nonterminal1'Class) is
   begin
      null;
   end Before_Number_nonterminal1;
   procedure After_Number_nonterminal1(
      I : access DFS;
      N : access Number_Model.Number_nonterminal1'Class) is
   begin
      null;
   end After_Number_nonterminal1;
   procedure Visit_Number_nonterminal1(
         I : access DFS;
         N : access Number_Model.Number_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Number_nonterminal1", Entering => True));
      I_Classwide.Before_Number_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.INTEGER_part);
      I_Classwide.After_Number_nonterminal1(N);
      pragma Debug (Log_Visit ("Number_nonterminal1", Entering => False));
   end Visit_Number_nonterminal1;
   procedure Before_Number_nonterminal2(
      I : access DFS;
      N : access Number_Model.Number_nonterminal2'Class) is
   begin
      null;
   end Before_Number_nonterminal2;
   procedure After_Number_nonterminal2(
      I : access DFS;
      N : access Number_Model.Number_nonterminal2'Class) is
   begin
      null;
   end After_Number_nonterminal2;
   procedure Visit_Number_nonterminal2(
         I : access DFS;
         N : access Number_Model.Number_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Number_nonterminal2", Entering => True));
      I_Classwide.Before_Number_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.DECIMAL_LITERAL_part);
      I_Classwide.After_Number_nonterminal2(N);
      pragma Debug (Log_Visit ("Number_nonterminal2", Entering => False));
   end Visit_Number_nonterminal2;
   procedure Before_Literal_nonterminal1(
      I : access DFS;
      N : access Literal_Model.Literal_nonterminal1'Class) is
   begin
      null;
   end Before_Literal_nonterminal1;
   procedure After_Literal_nonterminal1(
      I : access DFS;
      N : access Literal_Model.Literal_nonterminal1'Class) is
   begin
      null;
   end After_Literal_nonterminal1;
   procedure Visit_Literal_nonterminal1(
         I : access DFS;
         N : access Literal_Model.Literal_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Literal_nonterminal1", Entering => True));
      I_Classwide.Before_Literal_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.DQ_LITERAL_part);
      I_Classwide.After_Literal_nonterminal1(N);
      pragma Debug (Log_Visit ("Literal_nonterminal1", Entering => False));
   end Visit_Literal_nonterminal1;
   procedure Before_Literal_nonterminal2(
      I : access DFS;
      N : access Literal_Model.Literal_nonterminal2'Class) is
   begin
      null;
   end Before_Literal_nonterminal2;
   procedure After_Literal_nonterminal2(
      I : access DFS;
      N : access Literal_Model.Literal_nonterminal2'Class) is
   begin
      null;
   end After_Literal_nonterminal2;
   procedure Visit_Literal_nonterminal2(
         I : access DFS;
         N : access Literal_Model.Literal_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("Literal_nonterminal2", Entering => True));
      I_Classwide.Before_Literal_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.SQ_LITERAL_part);
      I_Classwide.After_Literal_nonterminal2(N);
      pragma Debug (Log_Visit ("Literal_nonterminal2", Entering => False));
   end Visit_Literal_nonterminal2;
end XPath_DFS;
