
with Text_IO;
use Text_IO;
with XPath;
use XPath;
with XPath_Goto;
use XPath_Goto;
with XPath_Shift_Reduce;
use XPath_Shift_Reduce;
with XPath_Tokens;
use XPath_Tokens;
with Literal_model;
use Literal_model;
with Number_model;
use Number_model;
with Unary_Expr_model;
use Unary_Expr_model;
with Multiplicative_Expr_model;
use Multiplicative_Expr_model;
with Additive_Expr_model;
use Additive_Expr_model;
with Relational_Expr_model;
use Relational_Expr_model;
with Equality_Expr_model;
use Equality_Expr_model;
with And_Expr_model;
use And_Expr_model;
with Or_Expr_model;
use Or_Expr_model;
with Filter_Expr_model;
use Filter_Expr_model;
with Path_Expr_model;
use Path_Expr_model;
with Union_Expr_model;
use Union_Expr_model;
with Function_Name_model;
use Function_Name_model;
with Argument_model;
use Argument_model;
with Arguments_model;
use Arguments_model;
with Function_Call_model;
use Function_Call_model;
with Variable_Reference_model;
use Variable_Reference_model;
with Primary_Expr_model;
use Primary_Expr_model;
with Expr_model;
use Expr_model;
with Abbreviated_Step_model;
use Abbreviated_Step_model;
with Abbreviated_Relative_Location_Path_model;
use Abbreviated_Relative_Location_Path_model;
with Double_Slash_model;
use Double_Slash_model;
with Abbreviated_Absolute_Location_Path_model;
use Abbreviated_Absolute_Location_Path_model;
with Predicate_Expr_model;
use Predicate_Expr_model;
with NCNAME_Or_ID_model;
use NCNAME_Or_ID_model;
with QName_model;
use QName_model;
with Name_Test_model;
use Name_Test_model;
with Node_Type_model;
use Node_Type_model;
with Node_Test_model;
use Node_Test_model;
with Axis_Name_model;
use Axis_Name_model;
with Axis_Specifier_model;
use Axis_Specifier_model;
with R_Bracket_model;
use R_Bracket_model;
with L_Bracket_model;
use L_Bracket_model;
with Predicate_model;
use Predicate_model;
with Abbreviated_Step_Base_model;
use Abbreviated_Step_Base_model;
with Step_Base_model;
use Step_Base_model;
with Predicates_model;
use Predicates_model;
with Step_model;
use Step_model;
with Relative_Location_Path_model;
use Relative_Location_Path_model;
with Absolute_Location_Path_model;
use Absolute_Location_Path_model;
with Location_Path_model;
use Location_Path_model;
package body XPath_Parser is
   package Language_YY2_Lexical_Analyzer renames XPath;
   use Language_YY2_Lexical_Analyzer;

   type Literal_Nonterminal_Ptr is access all
      Literal_model.Literal_Nonterminal'Class;
   type Number_Nonterminal_Ptr is access all
      Number_model.Number_Nonterminal'Class;
   type Unary_Expr_Nonterminal_Ptr is access all
      Unary_Expr_model.Unary_Expr_Nonterminal'Class;
   type Multiplicative_Expr_Nonterminal_Ptr is access all
      Multiplicative_Expr_model.Multiplicative_Expr_Nonterminal'Class;
   type Additive_Expr_Nonterminal_Ptr is access all
      Additive_Expr_model.Additive_Expr_Nonterminal'Class;
   type Relational_Expr_Nonterminal_Ptr is access all
      Relational_Expr_model.Relational_Expr_Nonterminal'Class;
   type Equality_Expr_Nonterminal_Ptr is access all
      Equality_Expr_model.Equality_Expr_Nonterminal'Class;
   type And_Expr_Nonterminal_Ptr is access all
      And_Expr_model.And_Expr_Nonterminal'Class;
   type Or_Expr_Nonterminal_Ptr is access all
      Or_Expr_model.Or_Expr_Nonterminal'Class;
   type Filter_Expr_Nonterminal_Ptr is access all
      Filter_Expr_model.Filter_Expr_Nonterminal'Class;
   type Path_Expr_Nonterminal_Ptr is access all
      Path_Expr_model.Path_Expr_Nonterminal'Class;
   type Union_Expr_Nonterminal_Ptr is access all
      Union_Expr_model.Union_Expr_Nonterminal'Class;
   type Function_Name_Nonterminal_Ptr is access all
      Function_Name_model.Function_Name_Nonterminal'Class;
   type Argument_Nonterminal_Ptr is access all
      Argument_model.Argument_Nonterminal'Class;
   type Arguments_Nonterminal_Ptr is access all
      Arguments_model.Arguments_Nonterminal'Class;
   type Function_Call_Nonterminal_Ptr is access all
      Function_Call_model.Function_Call_Nonterminal'Class;
   type Variable_Reference_Nonterminal_Ptr is access all
      Variable_Reference_model.Variable_Reference_Nonterminal'Class;
   type Primary_Expr_Nonterminal_Ptr is access all
      Primary_Expr_model.Primary_Expr_Nonterminal'Class;
   type Expr_Nonterminal_Ptr is access all
      Expr_model.Expr_Nonterminal'Class;
   type Abbreviated_Step_Nonterminal_Ptr is access all
      Abbreviated_Step_model.Abbreviated_Step_Nonterminal'Class;
   type Abbreviated_Relative_Location_Path_Nonterminal_Ptr is access all
      Abbreviated_Relative_Location_Path_model.Abbreviated_Relative_Location_Path_Nonterminal'Class;
   type Double_Slash_Nonterminal_Ptr is access all
      Double_Slash_model.Double_Slash_Nonterminal'Class;
   type Abbreviated_Absolute_Location_Path_Nonterminal_Ptr is access all
      Abbreviated_Absolute_Location_Path_model.Abbreviated_Absolute_Location_Path_Nonterminal'Class;
   type Predicate_Expr_Nonterminal_Ptr is access all
      Predicate_Expr_model.Predicate_Expr_Nonterminal'Class;
   type NCNAME_Or_ID_Nonterminal_Ptr is access all
      NCNAME_Or_ID_model.NCNAME_Or_ID_Nonterminal'Class;
   type QName_Nonterminal_Ptr is access all
      QName_model.QName_Nonterminal'Class;
   type Name_Test_Nonterminal_Ptr is access all
      Name_Test_model.Name_Test_Nonterminal'Class;
   type Node_Type_Nonterminal_Ptr is access all
      Node_Type_model.Node_Type_Nonterminal'Class;
   type Node_Test_Nonterminal_Ptr is access all
      Node_Test_model.Node_Test_Nonterminal'Class;
   type Axis_Name_Nonterminal_Ptr is access all
      Axis_Name_model.Axis_Name_Nonterminal'Class;
   type Axis_Specifier_Nonterminal_Ptr is access all
      Axis_Specifier_model.Axis_Specifier_Nonterminal'Class;
   type R_Bracket_Nonterminal_Ptr is access all
      R_Bracket_model.R_Bracket_Nonterminal'Class;
   type L_Bracket_Nonterminal_Ptr is access all
      L_Bracket_model.L_Bracket_Nonterminal'Class;
   type Predicate_Nonterminal_Ptr is access all
      Predicate_model.Predicate_Nonterminal'Class;
   type Abbreviated_Step_Base_Nonterminal_Ptr is access all
      Abbreviated_Step_Base_model.Abbreviated_Step_Base_Nonterminal'Class;
   type Step_Base_Nonterminal_Ptr is access all
      Step_Base_model.Step_Base_Nonterminal'Class;
   type Predicates_Nonterminal_Ptr is access all
      Predicates_model.Predicates_Nonterminal'Class;
   type Step_Nonterminal_Ptr is access all
      Step_model.Step_Nonterminal'Class;
   type Relative_Location_Path_Nonterminal_Ptr is access all
      Relative_Location_Path_model.Relative_Location_Path_Nonterminal'Class;
   type Absolute_Location_Path_Nonterminal_Ptr is access all
      Absolute_Location_Path_model.Absolute_Location_Path_Nonterminal'Class;
   type Location_Path_Nonterminal_Ptr is access all
      Location_Path_model.Location_Path_Nonterminal'Class;
   Parse_Tree : Parseable_Ptr;
   Token_String : String_Ptr;

   procedure YYError(S : in String := "Syntax Error") is
   begin
      raise Syntax_Error with S & " on line " & integer'image(xpath.Get_Current_Line);
   end YYError;

procedure YYParse is

   -- Rename User Defined Packages to Internal Names.
    package yy_goto_tables         renames
      Xpath_Goto;
    package yy_shift_reduce_tables renames
      Xpath_Shift_Reduce;
    package yy_tokens              renames
      Xpath_Tokens;

   package yy2_tokens renames Language_YY2_Lexical_Analyzer;
   use yy2_tokens;
   use yy_tokens, yy_goto_tables, yy_shift_reduce_tables;

   procedure yyerrok;
   procedure yyclearin;


   package yy is

       -- the size of the value and state stacks
       stack_size : constant Natural := 300;

       -- subtype rule         is natural;
       subtype parse_state  is natural;
       -- subtype nonterminal  is integer;

       -- encryption constants
       default           : constant := -1;
       first_shift_entry : constant :=  0;
       accept_code       : constant := -6001;
       error_code        : constant := -6000;

       -- stack data used by the parser
       tos                : natural := 0;
       value_stack        : array(0..stack_size) of yy_tokens.yystype;
       state_stack        : array(0..stack_size) of parse_state;

       -- current input symbol and action the parser is on
       action             : integer;
       rule_id            : rule;
       input_symbol       : yy2_tokens.token;


       -- error recovery flag
       error_flag : natural := 0;
          -- indicates  3 - (number of valid shifts after an error occurs)

       look_ahead : boolean := true;
       index      : integer;

       -- Is Debugging option on or off
        DEBUG : constant boolean := FALSE;

    end yy;


    function goto_state
      (state : yy.parse_state;
       sym   : nonterminal) return yy.parse_state;

    function parse_action
      (state : yy.parse_state;
       t     : yy2_tokens.token) return integer;

    pragma inline(goto_state, parse_action);


    function goto_state(state : yy.parse_state;
                        sym   : nonterminal) return yy.parse_state is
        index : integer;
    begin
        index := goto_offset(state);
        while  integer(goto_matrix(index).nonterm) /= sym loop
            index := index + 1;
        end loop;
        return integer(goto_matrix(index).newstate);
    end goto_state;


    function parse_action(state : yy.parse_state;
                          t     : yy2_tokens.token) return integer is
        index      : integer;
        tok_pos    : integer;
        default    : constant integer := -1;
    begin
        tok_pos := yy2_tokens.token'pos(t);
        index   := shift_reduce_offset(state);
        while integer(shift_reduce_matrix(index).t) /= tok_pos and then
              integer(shift_reduce_matrix(index).t) /= default
        loop
            index := index + 1;
        end loop;
        return integer(shift_reduce_matrix(index).act);
    end parse_action;

-- error recovery stuff

    procedure handle_error is
      temp_action : integer;
    begin

      if yy.error_flag = 3 then -- no shift yet, clobber input.
      if yy.debug then
          text_io.put_line("Ayacc.YYParse: Error Recovery Clobbers " &
                   yy2_tokens.token'image(yy.input_symbol));
      end if;
        if yy.input_symbol = yy2_tokens.end_of_input then  -- don't discard,
        if yy.debug then
            text_io.put_line("Ayacc.YYParse: Can't discard END_OF_INPUT, quiting...");
        end if;
        raise yy_tokens.syntax_error;
        end if;

            yy.look_ahead := true;   -- get next token
        return;                  -- and try again...
    end if;

    if yy.error_flag = 0 then -- brand new error
        yyerror("Syntax Error");
    end if;

    yy.error_flag := 3;

    -- find state on stack where error is a valid shift --

    if yy.debug then
        text_io.put_line("Ayacc.YYParse: Looking for state with error as valid shift");
    end if;

    loop
        if yy.debug then
          text_io.put_line("Ayacc.YYParse: Examining State " &
               yy.parse_state'image(yy.state_stack(yy.tos)));
        end if;
        temp_action := parse_action(yy.state_stack(yy.tos), error);

            if temp_action >= yy.first_shift_entry then
                if yy.tos = yy.stack_size then
                    text_io.put_line(" Stack size exceeded on state_stack");
                    raise yy_Tokens.syntax_error;
                end if;
                yy.tos := yy.tos + 1;
                yy.state_stack(yy.tos) := temp_action;
                exit;
            end if;

        Decrement_Stack_Pointer :
        begin
          yy.tos := yy.tos - 1;
        exception
          when Constraint_Error =>
            yy.tos := 0;
        end Decrement_Stack_Pointer;

        if yy.tos = 0 then
          if yy.debug then
            text_io.put_line("Ayacc.YYParse: Error recovery popped entire stack, aborting...");
          end if;
          raise yy_tokens.syntax_error;
        end if;
    end loop;

    if yy.debug then
        text_io.put_line("Ayacc.YYParse: Shifted error token in state " &
              yy.parse_state'image(yy.state_stack(yy.tos)));
    end if;

    end handle_error;

   -- print debugging information for a shift operation
   procedure shift_debug(state_id: yy.parse_state; lexeme: yy2_tokens.token) is
   begin
       text_io.put_line("Ayacc.YYParse: Shift "& yy.parse_state'image(state_id)&" on input symbol "&
               yy2_tokens.token'image(lexeme) );
   end;

   -- print debugging information for a reduce operation
   procedure reduce_debug(rule_id: rule; state_id: yy.parse_state) is
   begin
       text_io.put_line("Ayacc.YYParse: Reduce by rule "&rule'image(rule_id)&" goto state "&
               yy.parse_state'image(state_id));
   end;

   -- make the parser believe that 3 valid shifts have occured.
   -- used for error recovery.
   procedure yyerrok is
   begin
       yy.error_flag := 0;
   end yyerrok;

   -- called to clear input symbol that caused an error.
   procedure yyclearin is
   begin
       -- yy.input_symbol := Get_Token;
       yy.look_ahead := true;
   end yyclearin;


begin
    -- initialize by pushing state 0 and getting the first input symbol
    yy.state_stack(yy.tos) := 0;


    loop

        yy.index := shift_reduce_offset(yy.state_stack(yy.tos));
        if integer(shift_reduce_matrix(yy.index).t) = yy.default then
            yy.action := integer(shift_reduce_matrix(yy.index).act);
        else
            if yy.look_ahead then
                yy.look_ahead   := false;

                yy.input_symbol := Get_Token;
            end if;
            yy.action :=
             parse_action(yy.state_stack(yy.tos), yy.input_symbol);
        end if;


        if yy.action >= yy.first_shift_entry then  -- SHIFT

            if yy.debug then
                shift_debug(yy.action, yy.input_symbol);
            end if;

            -- Enter new state
            if yy.tos = yy.stack_size then
                text_io.put_line(" Stack size exceeded on state_stack");
                raise yy_Tokens.syntax_error;
            end if;
            yy.tos := yy.tos + 1;
            yy.state_stack(yy.tos) := yy.action;
              yy.value_stack(yy.tos) := yylval;

        if yy.error_flag > 0 then  -- indicate a valid shift
            yy.error_flag := yy.error_flag - 1;
        end if;

            -- Advance lookahead
            yy.look_ahead := true;

        elsif yy.action = yy.error_code then       -- ERROR

            handle_error;

        elsif yy.action = yy.accept_code then
            if yy.debug then
                text_io.put_line("Ayacc.YYParse: Accepting Grammar...");
            end if;
            exit;

        else -- Reduce Action

            -- Convert action into a rule
            yy.rule_id  := -1 * yy.action;

            -- Execute User Action
            -- user_action(yy.rule_id);


                case yy.rule_id is

when  1 =>
--#line  70
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,NCNAME_token); 

when  2 =>
--#line  74
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DECIMAL_LITERAL_token); 

when  3 =>
--#line  78
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,INTEGER_token); 

when  4 =>
--#line  82
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DQ_LITERAL_token); 

when  5 =>
--#line  86
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,SQ_LITERAL_token); 

when  6 =>
--#line  90
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,LE_token); 

when  7 =>
--#line  94
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,LT_token); 

when  8 =>
--#line  98
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,GE_token); 

when  9 =>
--#line  102
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,GT_token); 

when  10 =>
--#line  106
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,NE_token); 

when  11 =>
--#line  110
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,EQ_token); 

when  12 =>
--#line  114
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,V_BAR_token); 

when  13 =>
--#line  118
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DOLLAR_token); 

when  14 =>
--#line  122
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,COMMA_token); 

when  15 =>
--#line  126
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,AT_SIGN_token); 

when  16 =>
--#line  130
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DOUBLE_COLON_token); 

when  17 =>
--#line  134
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,COLON_token); 

when  18 =>
--#line  138
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DOUBLE_SLASH_T_token); 

when  19 =>
--#line  142
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,SLASH_token); 

when  20 =>
--#line  146
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DOUBLE_DOT_token); 

when  21 =>
--#line  150
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DOT_token); 

when  22 =>
--#line  154
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,MINUS_token); 

when  23 =>
--#line  158
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PLUS_token); 

when  24 =>
--#line  162
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,STAR_token); 

when  25 =>
--#line  166
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,R_BRACKET_T_token); 

when  26 =>
--#line  170
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,L_BRACKET_T_token); 

when  27 =>
--#line  174
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,R_PAREN_token); 

when  28 =>
--#line  178
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,L_PAREN_token); 

when  29 =>
--#line  182
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OR_token); 

when  30 =>
--#line  186
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,MOD_token); 

when  31 =>
--#line  190
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DIV_token); 

when  32 =>
--#line  194
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,AND_token); 

when  33 =>
--#line  198
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,NODE_token); 

when  34 =>
--#line  202
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PROCESSING_INSTRUCTION_token); 

when  35 =>
--#line  206
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,TEXT_token); 

when  36 =>
--#line  210
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,COMMENT_token); 

when  37 =>
--#line  214
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,SELF_token); 

when  38 =>
--#line  218
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PRECEDING_SIBLING_token); 

when  39 =>
--#line  222
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PRECEDING_token); 

when  40 =>
--#line  226
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PARENT_token); 

when  41 =>
--#line  230
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,NAMESPACE_token); 

when  42 =>
--#line  234
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,FOLLOWING_SIBLING_token); 

when  43 =>
--#line  238
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,FOLLOWING_token); 

when  44 =>
--#line  242
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DESCENDANT_OR_SELF_token); 

when  45 =>
--#line  246
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DESCENDANT_token); 

when  46 =>
--#line  250
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,CHILD_token); 

when  47 =>
--#line  254
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ATTRIBUTE_token); 

when  48 =>
--#line  258
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ANCESTOR_OR_SELF_token); 

when  49 =>
--#line  262
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ANCESTOR_token); 

when  50 =>
--#line  267
 Parse_Tree := 
yy.value_stack(yy.tos); 

when  51 =>
--#line  270

   
yyval := new Location_Path_nonterminal1;
   Location_Path_nonterminal1(
yyval.all).Relative_Location_Path_part :=    Relative_Location_Path_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  52 =>
--#line  274

   
yyval := new Location_Path_nonterminal2;
   Location_Path_nonterminal2(
yyval.all).Absolute_Location_Path_part :=    Absolute_Location_Path_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  53 =>
--#line  280

   
yyval := new Absolute_Location_Path_nonterminal1;
   Absolute_Location_Path_nonterminal1(
yyval.all).SLASH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  54 =>
--#line  284

   
yyval := new Absolute_Location_Path_nonterminal2;
   Absolute_Location_Path_nonterminal2(
yyval.all).SLASH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   Absolute_Location_Path_nonterminal2(
yyval.all).Relative_Location_Path_part :=    Relative_Location_Path_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  55 =>
--#line  289

   
yyval := new Absolute_Location_Path_nonterminal3;
   Absolute_Location_Path_nonterminal3(
yyval.all).Abbreviated_Absolute_Location_Path_part :=    Abbreviated_Absolute_Location_Path_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  56 =>
--#line  295

   
yyval := new Relative_Location_Path_nonterminal1;
   Relative_Location_Path_nonterminal1(
yyval.all).Step_part :=    Step_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  57 =>
--#line  299

   
yyval := new Relative_Location_Path_nonterminal2;
   Relative_Location_Path_nonterminal2(
yyval.all).Relative_Location_Path_part :=    Relative_Location_Path_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   Relative_Location_Path_nonterminal2(
yyval.all).SLASH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   Relative_Location_Path_nonterminal2(
yyval.all).Step_part :=    Step_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  58 =>
--#line  305

   
yyval := new Relative_Location_Path_nonterminal3;
   Relative_Location_Path_nonterminal3(
yyval.all).Abbreviated_Relative_Location_Path_part :=    Abbreviated_Relative_Location_Path_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  59 =>
--#line  311

   
yyval := new Step_nonterminal1;
   Step_nonterminal1(
yyval.all).Step_Base_part :=    Step_Base_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   Step_nonterminal1(
yyval.all).Predicates_part :=    Predicates_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  60 =>
--#line  316

   
yyval := new Step_nonterminal2;
   Step_nonterminal2(
yyval.all).Abbreviated_Step_part :=    Abbreviated_Step_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  61 =>
--#line  322

   
yyval := new Predicates_nonterminal1;
   

when  62 =>
--#line  325

   
yyval := new Predicates_nonterminal2;
   Predicates_nonterminal2(
yyval.all).Predicates_part :=    Predicates_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   Predicates_nonterminal2(
yyval.all).Predicate_part :=    Predicate_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  63 =>
--#line  332

   
yyval := new Step_Base_nonterminal1;
   Step_Base_nonterminal1(
yyval.all).Axis_Specifier_part :=    Axis_Specifier_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   Step_Base_nonterminal1(
yyval.all).Node_Test_part :=    Node_Test_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  64 =>
--#line  337

   
yyval := new Step_Base_nonterminal2;
   Step_Base_nonterminal2(
yyval.all).Abbreviated_Step_Base_part :=    Abbreviated_Step_Base_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  65 =>
--#line  343

   
yyval := new Abbreviated_Step_Base_nonterminal1;
   Abbreviated_Step_Base_nonterminal1(
yyval.all).Node_Test_part :=    Node_Test_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  66 =>
--#line  347

   
yyval := new Abbreviated_Step_Base_nonterminal2;
   Abbreviated_Step_Base_nonterminal2(
yyval.all).AT_SIGN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   Abbreviated_Step_Base_nonterminal2(
yyval.all).Node_Test_part :=    Node_Test_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  67 =>
--#line  354

   
yyval := new Predicate_nonterminal;
   Predicate_nonterminal(
yyval.all).L_Bracket_part :=    L_Bracket_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   Predicate_nonterminal(
yyval.all).Predicate_Expr_part :=    Predicate_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   Predicate_nonterminal(
yyval.all).R_Bracket_part :=    R_Bracket_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  68 =>
--#line  362

   
yyval := new L_Bracket_nonterminal;
   L_Bracket_nonterminal(
yyval.all).L_BRACKET_T_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  69 =>
--#line  368

   
yyval := new R_Bracket_nonterminal;
   R_Bracket_nonterminal(
yyval.all).R_BRACKET_T_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  70 =>
--#line  374

   
yyval := new Axis_Specifier_nonterminal;
   Axis_Specifier_nonterminal(
yyval.all).Axis_Name_part :=    Axis_Name_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   Axis_Specifier_nonterminal(
yyval.all).DOUBLE_COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  71 =>
--#line  381

   
yyval := new Axis_Name_nonterminal1;
   Axis_Name_nonterminal1(
yyval.all).ANCESTOR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  72 =>
--#line  385

   
yyval := new Axis_Name_nonterminal2;
   Axis_Name_nonterminal2(
yyval.all).ANCESTOR_OR_SELF_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  73 =>
--#line  389

   
yyval := new Axis_Name_nonterminal3;
   Axis_Name_nonterminal3(
yyval.all).ATTRIBUTE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  74 =>
--#line  393

   
yyval := new Axis_Name_nonterminal4;
   Axis_Name_nonterminal4(
yyval.all).CHILD_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  75 =>
--#line  397

   
yyval := new Axis_Name_nonterminal5;
   Axis_Name_nonterminal5(
yyval.all).DESCENDANT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  76 =>
--#line  401

   
yyval := new Axis_Name_nonterminal6;
   Axis_Name_nonterminal6(
yyval.all).DESCENDANT_OR_SELF_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  77 =>
--#line  405

   
yyval := new Axis_Name_nonterminal7;
   Axis_Name_nonterminal7(
yyval.all).FOLLOWING_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  78 =>
--#line  409

   
yyval := new Axis_Name_nonterminal8;
   Axis_Name_nonterminal8(
yyval.all).FOLLOWING_SIBLING_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  79 =>
--#line  413

   
yyval := new Axis_Name_nonterminal9;
   Axis_Name_nonterminal9(
yyval.all).NAMESPACE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  80 =>
--#line  417

   
yyval := new Axis_Name_nonterminal10;
   Axis_Name_nonterminal10(
yyval.all).PARENT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  81 =>
--#line  421

   
yyval := new Axis_Name_nonterminal11;
   Axis_Name_nonterminal11(
yyval.all).PRECEDING_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  82 =>
--#line  425

   
yyval := new Axis_Name_nonterminal12;
   Axis_Name_nonterminal12(
yyval.all).PRECEDING_SIBLING_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  83 =>
--#line  429

   
yyval := new Axis_Name_nonterminal13;
   Axis_Name_nonterminal13(
yyval.all).SELF_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  84 =>
--#line  435

   
yyval := new Node_Test_nonterminal1;
   Node_Test_nonterminal1(
yyval.all).Name_Test_part :=    Name_Test_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  85 =>
--#line  439

   
yyval := new Node_Test_nonterminal2;
   Node_Test_nonterminal2(
yyval.all).Node_Type_part :=    Node_Type_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   Node_Test_nonterminal2(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   Node_Test_nonterminal2(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  86 =>
--#line  445

   
yyval := new Node_Test_nonterminal3;
   Node_Test_nonterminal3(
yyval.all).PROCESSING_INSTRUCTION_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   Node_Test_nonterminal3(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   Node_Test_nonterminal3(
yyval.all).LITERAL_part :=    LITERAL_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   Node_Test_nonterminal3(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  87 =>
--#line  454

   
yyval := new Node_Type_nonterminal1;
   Node_Type_nonterminal1(
yyval.all).COMMENT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  88 =>
--#line  458

   
yyval := new Node_Type_nonterminal2;
   Node_Type_nonterminal2(
yyval.all).TEXT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  89 =>
--#line  462

   
yyval := new Node_Type_nonterminal3;
   Node_Type_nonterminal3(
yyval.all).PROCESSING_INSTRUCTION_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  90 =>
--#line  466

   
yyval := new Node_Type_nonterminal4;
   Node_Type_nonterminal4(
yyval.all).NODE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  91 =>
--#line  472

   
yyval := new Name_Test_nonterminal1;
   Name_Test_nonterminal1(
yyval.all).STAR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  92 =>
--#line  476

   
yyval := new Name_Test_nonterminal2;
   Name_Test_nonterminal2(
yyval.all).QName_part :=    QName_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  93 =>
--#line  480

   
yyval := new Name_Test_nonterminal3;
   Name_Test_nonterminal3(
yyval.all).NCNAME_Or_ID_part :=    NCNAME_Or_ID_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   Name_Test_nonterminal3(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   Name_Test_nonterminal3(
yyval.all).STAR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  94 =>
--#line  488

   
yyval := new QName_nonterminal1;
   QName_nonterminal1(
yyval.all).NCNAME_Or_ID_part :=    NCNAME_Or_ID_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  95 =>
--#line  492

   
yyval := new QName_nonterminal2;
   QName_nonterminal2(
yyval.all).NCNAME_Or_ID_part1 :=    NCNAME_Or_ID_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   QName_nonterminal2(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   QName_nonterminal2(
yyval.all).NCNAME_Or_ID_part2 :=    NCNAME_Or_ID_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  96 =>
--#line  500

   
yyval := new NCNAME_Or_ID_nonterminal1;
   NCNAME_Or_ID_nonterminal1(
yyval.all).NCNAME_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  97 =>
--#line  504

   
yyval := new NCNAME_Or_ID_nonterminal2;
   NCNAME_Or_ID_nonterminal2(
yyval.all).Axis_Name_part :=    Axis_Name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  98 =>
--#line  508

   
yyval := new NCNAME_Or_ID_nonterminal3;
   NCNAME_Or_ID_nonterminal3(
yyval.all).Node_Type_part :=    Node_Type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  99 =>
--#line  512

   
yyval := new NCNAME_Or_ID_nonterminal4;
   NCNAME_Or_ID_nonterminal4(
yyval.all).AND_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  100 =>
--#line  516

   
yyval := new NCNAME_Or_ID_nonterminal5;
   NCNAME_Or_ID_nonterminal5(
yyval.all).OR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  101 =>
--#line  520

   
yyval := new NCNAME_Or_ID_nonterminal6;
   NCNAME_Or_ID_nonterminal6(
yyval.all).MOD_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  102 =>
--#line  524

   
yyval := new NCNAME_Or_ID_nonterminal7;
   NCNAME_Or_ID_nonterminal7(
yyval.all).DIV_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  103 =>
--#line  530

   
yyval := new Predicate_Expr_nonterminal;
   Predicate_Expr_nonterminal(
yyval.all).Expr_part :=    Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  104 =>
--#line  536

   
yyval := new Abbreviated_Absolute_Location_Path_nonterminal;
   Abbreviated_Absolute_Location_Path_nonterminal(
yyval.all).Double_Slash_part :=    Double_Slash_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   Abbreviated_Absolute_Location_Path_nonterminal(
yyval.all).Relative_Location_Path_part :=    Relative_Location_Path_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  105 =>
--#line  543

   
yyval := new Double_Slash_nonterminal;
   Double_Slash_nonterminal(
yyval.all).DOUBLE_SLASH_T_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  106 =>
--#line  549

   
yyval := new Abbreviated_Relative_Location_Path_nonterminal;
   Abbreviated_Relative_Location_Path_nonterminal(
yyval.all).Relative_Location_Path_part :=    Relative_Location_Path_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   Abbreviated_Relative_Location_Path_nonterminal(
yyval.all).Double_Slash_part :=    Double_Slash_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   Abbreviated_Relative_Location_Path_nonterminal(
yyval.all).Step_part :=    Step_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  107 =>
--#line  557

   
yyval := new Abbreviated_Step_nonterminal1;
   Abbreviated_Step_nonterminal1(
yyval.all).DOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  108 =>
--#line  561

   
yyval := new Abbreviated_Step_nonterminal2;
   Abbreviated_Step_nonterminal2(
yyval.all).DOUBLE_DOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  109 =>
--#line  567

   
yyval := new Expr_nonterminal;
   Expr_nonterminal(
yyval.all).Or_Expr_part :=    Or_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  110 =>
--#line  573

   
yyval := new Primary_Expr_nonterminal1;
   Primary_Expr_nonterminal1(
yyval.all).Variable_Reference_part :=    Variable_Reference_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  111 =>
--#line  577

   
yyval := new Primary_Expr_nonterminal2;
   Primary_Expr_nonterminal2(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   Primary_Expr_nonterminal2(
yyval.all).Expr_part :=    Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   Primary_Expr_nonterminal2(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  112 =>
--#line  583

   
yyval := new Primary_Expr_nonterminal3;
   Primary_Expr_nonterminal3(
yyval.all).LITERAL_part :=    LITERAL_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  113 =>
--#line  587

   
yyval := new Primary_Expr_nonterminal4;
   Primary_Expr_nonterminal4(
yyval.all).Number_part :=    Number_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  114 =>
--#line  591

   
yyval := new Primary_Expr_nonterminal5;
   Primary_Expr_nonterminal5(
yyval.all).Function_Call_part :=    Function_Call_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  115 =>
--#line  597

   
yyval := new Variable_Reference_nonterminal;
   Variable_Reference_nonterminal(
yyval.all).DOLLAR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   Variable_Reference_nonterminal(
yyval.all).QName_part :=    QName_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  116 =>
--#line  604

   
yyval := new Function_Call_nonterminal;
   Function_Call_nonterminal(
yyval.all).Function_Name_part :=    Function_Name_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   Function_Call_nonterminal(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   Function_Call_nonterminal(
yyval.all).Arguments_part :=    Arguments_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   Function_Call_nonterminal(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  117 =>
--#line  613

   
yyval := new Arguments_nonterminal1;
   

when  118 =>
--#line  616

   
yyval := new Arguments_nonterminal2;
   Arguments_nonterminal2(
yyval.all).Argument_part :=    Argument_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  119 =>
--#line  620

   
yyval := new Arguments_nonterminal3;
   Arguments_nonterminal3(
yyval.all).Arguments_part :=    Arguments_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   Arguments_nonterminal3(
yyval.all).COMMA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   Arguments_nonterminal3(
yyval.all).Argument_part :=    Argument_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  120 =>
--#line  628

   
yyval := new Argument_nonterminal;
   Argument_nonterminal(
yyval.all).Expr_part :=    Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  121 =>
--#line  634

   
yyval := new Function_Name_nonterminal;
   Function_Name_nonterminal(
yyval.all).QName_part :=    QName_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  122 =>
--#line  640

   
yyval := new Union_Expr_nonterminal1;
   Union_Expr_nonterminal1(
yyval.all).Path_Expr_part :=    Path_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  123 =>
--#line  644

   
yyval := new Union_Expr_nonterminal2;
   Union_Expr_nonterminal2(
yyval.all).Union_Expr_part :=    Union_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   Union_Expr_nonterminal2(
yyval.all).V_BAR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   Union_Expr_nonterminal2(
yyval.all).Path_Expr_part :=    Path_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  124 =>
--#line  652

   
yyval := new Path_Expr_nonterminal1;
   Path_Expr_nonterminal1(
yyval.all).Location_Path_part :=    Location_Path_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  125 =>
--#line  656

   
yyval := new Path_Expr_nonterminal2;
   Path_Expr_nonterminal2(
yyval.all).Filter_Expr_part :=    Filter_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  126 =>
--#line  660

   
yyval := new Path_Expr_nonterminal3;
   Path_Expr_nonterminal3(
yyval.all).Filter_Expr_part :=    Filter_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   Path_Expr_nonterminal3(
yyval.all).SLASH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   Path_Expr_nonterminal3(
yyval.all).Relative_Location_Path_part :=    Relative_Location_Path_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  127 =>
--#line  666

   
yyval := new Path_Expr_nonterminal4;
   Path_Expr_nonterminal4(
yyval.all).Filter_Expr_part :=    Filter_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   Path_Expr_nonterminal4(
yyval.all).DOUBLE_SLASH_part :=    DOUBLE_SLASH_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   Path_Expr_nonterminal4(
yyval.all).Relative_Location_Path_part :=    Relative_Location_Path_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  128 =>
--#line  674

   
yyval := new Filter_Expr_nonterminal1;
   Filter_Expr_nonterminal1(
yyval.all).Primary_Expr_part :=    Primary_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  129 =>
--#line  678

   
yyval := new Filter_Expr_nonterminal2;
   Filter_Expr_nonterminal2(
yyval.all).Filter_Expr_part :=    Filter_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   Filter_Expr_nonterminal2(
yyval.all).Predicate_part :=    Predicate_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  130 =>
--#line  685

   
yyval := new Or_Expr_nonterminal1;
   Or_Expr_nonterminal1(
yyval.all).And_Expr_part :=    And_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  131 =>
--#line  689

   
yyval := new Or_Expr_nonterminal2;
   Or_Expr_nonterminal2(
yyval.all).Or_Expr_part :=    Or_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   Or_Expr_nonterminal2(
yyval.all).OR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   Or_Expr_nonterminal2(
yyval.all).And_Expr_part :=    And_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  132 =>
--#line  697

   
yyval := new And_Expr_nonterminal1;
   And_Expr_nonterminal1(
yyval.all).Equality_Expr_part :=    Equality_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  133 =>
--#line  701

   
yyval := new And_Expr_nonterminal2;
   And_Expr_nonterminal2(
yyval.all).And_Expr_part :=    And_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   And_Expr_nonterminal2(
yyval.all).AND_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   And_Expr_nonterminal2(
yyval.all).Equality_Expr_part :=    Equality_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  134 =>
--#line  709

   
yyval := new Equality_Expr_nonterminal1;
   Equality_Expr_nonterminal1(
yyval.all).Relational_Expr_part :=    Relational_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  135 =>
--#line  713

   
yyval := new Equality_Expr_nonterminal2;
   Equality_Expr_nonterminal2(
yyval.all).Equality_Expr_part :=    Equality_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   Equality_Expr_nonterminal2(
yyval.all).EQ_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   Equality_Expr_nonterminal2(
yyval.all).Relational_Expr_part :=    Relational_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  136 =>
--#line  719

   
yyval := new Equality_Expr_nonterminal3;
   Equality_Expr_nonterminal3(
yyval.all).Equality_Expr_part :=    Equality_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   Equality_Expr_nonterminal3(
yyval.all).NE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   Equality_Expr_nonterminal3(
yyval.all).Relational_Expr_part :=    Relational_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  137 =>
--#line  727

   
yyval := new Relational_Expr_nonterminal1;
   Relational_Expr_nonterminal1(
yyval.all).Additive_Expr_part :=    Additive_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  138 =>
--#line  731

   
yyval := new Relational_Expr_nonterminal2;
   Relational_Expr_nonterminal2(
yyval.all).Relational_Expr_part :=    Relational_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   Relational_Expr_nonterminal2(
yyval.all).LT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   Relational_Expr_nonterminal2(
yyval.all).Additive_Expr_part :=    Additive_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  139 =>
--#line  737

   
yyval := new Relational_Expr_nonterminal3;
   Relational_Expr_nonterminal3(
yyval.all).Relational_Expr_part :=    Relational_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   Relational_Expr_nonterminal3(
yyval.all).GT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   Relational_Expr_nonterminal3(
yyval.all).Additive_Expr_part :=    Additive_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  140 =>
--#line  743

   
yyval := new Relational_Expr_nonterminal4;
   Relational_Expr_nonterminal4(
yyval.all).Relational_Expr_part :=    Relational_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   Relational_Expr_nonterminal4(
yyval.all).LE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   Relational_Expr_nonterminal4(
yyval.all).Additive_Expr_part :=    Additive_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  141 =>
--#line  749

   
yyval := new Relational_Expr_nonterminal5;
   Relational_Expr_nonterminal5(
yyval.all).Relational_Expr_part :=    Relational_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   Relational_Expr_nonterminal5(
yyval.all).GE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   Relational_Expr_nonterminal5(
yyval.all).Additive_Expr_part :=    Additive_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  142 =>
--#line  757

   
yyval := new Additive_Expr_nonterminal1;
   Additive_Expr_nonterminal1(
yyval.all).Multiplicative_Expr_part :=    Multiplicative_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  143 =>
--#line  761

   
yyval := new Additive_Expr_nonterminal2;
   Additive_Expr_nonterminal2(
yyval.all).Additive_Expr_part :=    Additive_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   Additive_Expr_nonterminal2(
yyval.all).PLUS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   Additive_Expr_nonterminal2(
yyval.all).Multiplicative_Expr_part :=    Multiplicative_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  144 =>
--#line  767

   
yyval := new Additive_Expr_nonterminal3;
   Additive_Expr_nonterminal3(
yyval.all).Additive_Expr_part :=    Additive_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   Additive_Expr_nonterminal3(
yyval.all).MINUS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   Additive_Expr_nonterminal3(
yyval.all).Multiplicative_Expr_part :=    Multiplicative_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  145 =>
--#line  775

   
yyval := new Multiplicative_Expr_nonterminal1;
   Multiplicative_Expr_nonterminal1(
yyval.all).Unary_Expr_part :=    Unary_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  146 =>
--#line  779

   
yyval := new Multiplicative_Expr_nonterminal2;
   Multiplicative_Expr_nonterminal2(
yyval.all).Multiplicative_Expr_part :=    Multiplicative_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   Multiplicative_Expr_nonterminal2(
yyval.all).STAR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   Multiplicative_Expr_nonterminal2(
yyval.all).Unary_Expr_part :=    Unary_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  147 =>
--#line  785

   
yyval := new Multiplicative_Expr_nonterminal3;
   Multiplicative_Expr_nonterminal3(
yyval.all).Multiplicative_Expr_part :=    Multiplicative_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   Multiplicative_Expr_nonterminal3(
yyval.all).DIV_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   Multiplicative_Expr_nonterminal3(
yyval.all).Unary_Expr_part :=    Unary_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  148 =>
--#line  791

   
yyval := new Multiplicative_Expr_nonterminal4;
   Multiplicative_Expr_nonterminal4(
yyval.all).Multiplicative_Expr_part :=    Multiplicative_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   Multiplicative_Expr_nonterminal4(
yyval.all).MOD_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   Multiplicative_Expr_nonterminal4(
yyval.all).Unary_Expr_part :=    Unary_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  149 =>
--#line  799

   
yyval := new Unary_Expr_nonterminal1;
   Unary_Expr_nonterminal1(
yyval.all).Union_Expr_part :=    Union_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  150 =>
--#line  803

   
yyval := new Unary_Expr_nonterminal2;
   Unary_Expr_nonterminal2(
yyval.all).MINUS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   Unary_Expr_nonterminal2(
yyval.all).Unary_Expr_part :=    Unary_Expr_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  151 =>
--#line  810

   
yyval := new Number_nonterminal1;
   Number_nonterminal1(
yyval.all).INTEGER_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  152 =>
--#line  814

   
yyval := new Number_nonterminal2;
   Number_nonterminal2(
yyval.all).DECIMAL_LITERAL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  153 =>
--#line  820

   
yyval := new Literal_nonterminal1;
   Literal_nonterminal1(
yyval.all).DQ_LITERAL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  154 =>
--#line  824

   
yyval := new Literal_nonterminal2;
   Literal_nonterminal2(
yyval.all).SQ_LITERAL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

                    when others => null;
                end case;


            -- Pop RHS states and goto next state
            yy.tos      := yy.tos - rule_length(yy.rule_id) + 1;
            if yy.tos > yy.stack_size then
                text_io.put_line(" Stack size exceeded on state_stack");
                raise yy_Tokens.syntax_error;
            end if;
            yy.state_stack(yy.tos) := goto_state(yy.state_stack(yy.tos-1) ,
                                 get_lhs_rule(yy.rule_id));

              yy.value_stack(yy.tos) := yyval;

            if yy.debug then
                reduce_debug(yy.rule_id,
                    goto_state(yy.state_stack(yy.tos - 1),
                               get_lhs_rule(yy.rule_id)));
            end if;

        end if;


    end loop;


end yyparse;

   procedure Run(Filename : in String) is
   begin
      XPath.Reset(Filename);
      begin
         YYParse;
      exception
         when Invalid_Character => YYError("Invalid Character");
         when others => YYError;
      end;
      XPath.Close_Files;
   exception
      when others  =>
         XPath.Close_Files;
         raise;
   end Run;

   function Get_Parse_Tree return Parseable_Ptr is
   begin
      return Parse_Tree;
   end Get_Parse_Tree;
end XPath_Parser;
