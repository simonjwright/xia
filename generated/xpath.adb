
with XPath_IO;
package body XPath is
   Current_Line : Natural := 1;
   Current_Column : Natural := 1;
   procedure Reset(Filename : in String) is
   begin
      Current_Line := 1;
      Current_Column := 1;
      XPath_IO.Open_Input (Filename);
      XPath_IO.Create_Output;
   end Reset;

   procedure Close_Files is
   begin
      XPath_IO.Close_Input;
      XPath_IO.Close_Output;
   end Close_Files;

function YYLex return Token is
subtype short is integer range -32768..32767;
    yy_act : integer;
    yy_c : short;

-- returned upon end-of-file
YY_END_TOK : constant integer := 0;
YY_END_OF_BUFFER : constant := 54;
subtype yy_state_type is integer;
yy_current_state : yy_state_type;
INITIAL : constant := 0;
yy_accept : constant array(0..185) of short :=
    (   0,
       50,   50,   54,   53,   50,   50,   50,   53,   53,   37,
       53,   22,   23,   26,   27,   36,   28,   29,   31,   47,
       33,   43,   39,   41,   35,   49,   24,   25,   49,   49,
       49,   49,   49,   49,   49,   49,   49,   49,   38,   50,
       40,    0,   46,    0,   45,   30,   48,   32,   47,   47,
       34,   44,   42,   49,   49,   49,   49,   49,   49,   49,
       49,   49,   49,   49,   21,   49,   49,   49,   49,   49,
       18,   49,   49,   49,   49,   19,   49,   20,   49,   49,
       49,   49,   49,   49,   49,   49,   49,   49,   49,   49,
       49,   49,   17,   49,   49,   49,   13,   15,   49,   49,

        4,   49,   49,   49,   49,   49,   49,   49,   49,   49,
       49,   49,   49,   49,   10,   49,   49,   49,   49,   14,
       49,   49,   49,   49,   49,    1,   49,   49,   49,   49,
       49,   49,   49,    3,   49,    7,    9,   11,   49,   49,
        5,   49,   49,   49,   49,   49,   49,   49,   49,   49,
       49,   49,   49,   49,   49,   49,   49,   49,   49,   49,
       49,   49,   49,   49,   49,   49,   49,   49,   49,    2,
       49,   49,   49,   49,   49,    8,   12,   49,    6,   49,
       49,   49,   49,   16,    0
    ) ;

yy_ec : constant array(CHARACTER'FIRST..ASCII.DEL) of short :=
    (   0,
        1,    1,    1,    1,    1,    1,    1,    1,    2,    3,
        1,    1,    4,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    2,    5,    6,    1,    7,    1,    1,    8,    9,
       10,   11,   12,   13,   14,   15,   16,   17,   17,   17,
       17,   17,   17,   17,   17,   17,   17,   18,    1,   19,
       20,   21,    1,   22,   23,   23,   23,   23,   23,   23,
       23,   23,   23,   23,   23,   23,   23,   23,   23,   23,
       23,   23,   23,   23,   23,   23,   23,   23,   23,   23,
       24,    1,   25,    1,   26,    1,   27,   28,   29,   30,

       31,   32,   33,   34,   35,   23,   23,   36,   37,   38,
       39,   40,   23,   41,   42,   43,   44,   45,   46,   47,
       23,   23,    1,   48,    1,    1,    1
    ) ;

yy_meta : constant array(0..48) of short :=
    (   0,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    2,    2,    1,    2,    1,    1,    1,
        1,    1,    2,    1,    1,    2,    2,    2,    2,    2,
        2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
        2,    2,    2,    2,    2,    2,    2,    1
    ) ;

yy_base : constant array(0..188) of short :=
    (   0,
        0,    0,  213,  214,   47,   50,   53,  192,  205,  214,
      202,  214,  214,  214,  214,  214,  214,   43,  193,   44,
      190,  187,  214,  186,  214,    0,  214,  214,   24,   29,
       34,  166,  165,   37,  162,   39,  171,  170,  214,   68,
      214,  194,  214,  191,  214,  214,  181,  214,  180,   58,
      214,  214,  214,    0,   48,  153,  160,  157,  151,  147,
      155,  160,  152,  158,    0,  146,   43,  150,  138,  153,
        0,  142,  146,  144,  151,    0,  143,    0,  147,  146,
      145,  146,  145,  141,  129,  129,  135,  139,  137,  136,
      127,  123,    0,  126,  132,  131,    0,    0,  118,  132,

        0,  121,  120,  111,  116,  112,  124,  111,  113,  107,
      107,  119,  113,  120,    0,  111,  103,  103,  100,    0,
      115,  103,  111,  101,  103,  123,  105,   97,  101,  102,
       99,   93,   91,    0,   86,  114,    0,  113,   93,   84,
      110,   81,   80,  107,  106,   80,   83,   82,   81,   73,
       73,   85,   84,   73,   79,   95,   72,   71,   64,   69,
       62,   68,   67,   58,   68,   68,   60,   59,   55,    0,
       59,   61,   60,   48,   59,    0,    0,   61,    0,   46,
       53,   48,   43,    0,  214,   82,   84,   77
    ) ;

yy_def : constant array(0..188) of short :=
    (   0,
      185,    1,  185,  185,  185,  185,  185,  185,  186,  185,
      187,  185,  185,  185,  185,  185,  185,  185,  185,  185,
      185,  185,  185,  185,  185,  188,  185,  185,  188,  188,
      188,  188,  188,  188,  188,  188,  188,  188,  185,  185,
      185,  186,  185,  187,  185,  185,  185,  185,  185,  185,
      185,  185,  185,  188,  188,  188,  188,  188,  188,  188,
      188,  188,  188,  188,  188,  188,  188,  188,  188,  188,
      188,  188,  188,  188,  188,  188,  188,  188,  188,  188,
      188,  188,  188,  188,  188,  188,  188,  188,  188,  188,
      188,  188,  188,  188,  188,  188,  188,  188,  188,  188,

      188,  188,  188,  188,  188,  188,  188,  188,  188,  188,
      188,  188,  188,  188,  188,  188,  188,  188,  188,  188,
      188,  188,  188,  188,  188,  188,  188,  188,  188,  188,
      188,  188,  188,  188,  188,  188,  188,  188,  188,  188,
      188,  188,  188,  188,  188,  188,  188,  188,  188,  188,
      188,  188,  188,  188,  188,  188,  188,  188,  188,  188,
      188,  188,  188,  188,  188,  188,  188,  188,  188,  188,
      188,  188,  188,  188,  188,  188,  188,  188,  188,  188,
      188,  188,  188,  188,    0,  185,  185,  185
    ) ;

yy_nxt : constant array(0..262) of short :=
    (   0,
        4,    5,    6,    7,    8,    9,   10,   11,   12,   13,
       14,   15,   16,   17,   18,   19,   20,   21,   22,   23,
       24,   25,   26,   27,   28,   26,   29,   26,   30,   31,
       26,   32,   26,   26,   26,   26,   33,   34,   35,   36,
       26,   37,   38,   26,   26,   26,   26,   39,   40,   40,
       40,   40,   40,   40,   40,   40,   40,   46,   49,   47,
       50,   55,   57,   63,   59,   66,   56,   58,   60,   40,
       40,   40,   49,   82,   50,   64,   70,   71,   54,   67,
      184,   83,   42,   42,   44,   44,  183,  182,  181,  180,
      179,  178,  177,  176,  175,  174,  173,  172,  171,  170,

      169,  168,  167,  166,  165,  164,  163,  162,  161,  160,
      159,  158,  157,  156,  155,  154,  153,  152,  151,  150,
      149,  148,  147,  146,  145,  144,  143,  142,  141,  140,
      139,  138,  137,  136,  135,  134,  133,  132,  131,  130,
      129,  128,  127,  126,  125,  124,  123,  122,  121,  120,
      119,  118,  117,  116,  115,  114,  113,  112,  111,  110,
      109,  108,  107,  106,  105,  104,  103,  102,  101,  100,
       99,   98,   97,   96,   95,   94,   93,   92,   91,   90,
       89,   88,   87,   86,   85,   84,   81,   80,   79,   78,
       77,   76,   75,   74,   73,   72,   47,   47,   45,   43,

       69,   68,   65,   62,   61,   53,   52,   51,   48,   45,
       43,   41,  185,    3,  185,  185,  185,  185,  185,  185,
      185,  185,  185,  185,  185,  185,  185,  185,  185,  185,
      185,  185,  185,  185,  185,  185,  185,  185,  185,  185,
      185,  185,  185,  185,  185,  185,  185,  185,  185,  185,
      185,  185,  185,  185,  185,  185,  185,  185,  185,  185,
      185,  185
    ) ;

yy_chk : constant array(0..262) of short :=
    (   0,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    5,    5,
        5,    6,    6,    6,    7,    7,    7,   18,   20,   18,
       20,   29,   30,   34,   31,   36,   29,   30,   31,   40,
       40,   40,   50,   67,   50,   34,   55,   55,  188,   36,
      183,   67,  186,  186,  187,  187,  182,  181,  180,  178,
      175,  174,  173,  172,  171,  169,  168,  167,  166,  165,

      164,  163,  162,  161,  160,  159,  158,  157,  156,  155,
      154,  153,  152,  151,  150,  149,  148,  147,  146,  145,
      144,  143,  142,  141,  140,  139,  138,  136,  135,  133,
      132,  131,  130,  129,  128,  127,  126,  125,  124,  123,
      122,  121,  119,  118,  117,  116,  114,  113,  112,  111,
      110,  109,  108,  107,  106,  105,  104,  103,  102,  100,
       99,   96,   95,   94,   92,   91,   90,   89,   88,   87,
       86,   85,   84,   83,   82,   81,   80,   79,   77,   75,
       74,   73,   72,   70,   69,   68,   66,   64,   63,   62,
       61,   60,   59,   58,   57,   56,   49,   47,   44,   42,

       38,   37,   35,   33,   32,   24,   22,   21,   19,   11,
        9,    8,    3,  185,  185,  185,  185,  185,  185,  185,
      185,  185,  185,  185,  185,  185,  185,  185,  185,  185,
      185,  185,  185,  185,  185,  185,  185,  185,  185,  185,
      185,  185,  185,  185,  185,  185,  185,  185,  185,  185,
      185,  185,  185,  185,  185,  185,  185,  185,  185,  185,
      185,  185
    ) ;


-- copy whatever the last rule matched to the standard output

procedure ECHO is
begin
   if (text_io.is_open(user_output_file)) then
     text_io.put( user_output_file, yytext );
   else
     text_io.put( yytext );
   end if;
end ECHO;

-- enter a start condition.
-- Using procedure requires a () after the ENTER, but makes everything
-- much neater.

procedure ENTER( state : integer ) is
begin
     yy_start := 1 + 2 * state;
end ENTER;

-- action number for EOF rule of a given start state
function YY_STATE_EOF(state : integer) return integer is
begin
     return YY_END_OF_BUFFER + state + 1;
end YY_STATE_EOF;

-- return all but the first 'n' matched characters back to the input stream
procedure yyless(n : integer) is
begin
        yy_ch_buf(yy_cp) := yy_hold_char; -- undo effects of setting up yytext
        yy_cp := yy_bp + n;
        yy_c_buf_p := yy_cp;
        YY_DO_BEFORE_ACTION; -- set up yytext again
end yyless;

-- redefine this if you have something you want each time.
procedure YY_USER_ACTION is
begin
        null;
end;

-- yy_get_previous_state - get the state just before the EOB char was reached

function yy_get_previous_state return yy_state_type is
    yy_current_state : yy_state_type;
    yy_c : short;
begin
    yy_current_state := yy_start;

    for yy_cp in yytext_ptr..yy_c_buf_p - 1 loop
	yy_c := yy_ec(yy_ch_buf(yy_cp));
	if ( yy_accept(yy_current_state) /= 0 ) then
	    yy_last_accepting_state := yy_current_state;
	    yy_last_accepting_cpos := yy_cp;
	end if;
	while ( yy_chk(yy_base(yy_current_state) + yy_c) /= yy_current_state ) loop
	    yy_current_state := yy_def(yy_current_state);
	    if ( yy_current_state >= 186 ) then
		yy_c := yy_meta(yy_c);
	    end if;
	end loop;
	yy_current_state := yy_nxt(yy_base(yy_current_state) + yy_c);
    end loop;

    return yy_current_state;
end yy_get_previous_state;

procedure yyrestart( input_file : file_type ) is
begin
   open_input(text_io.name(input_file));
end yyrestart;

begin -- of YYLex
<<new_file>>
        -- this is where we enter upon encountering an end-of-file and
        -- yywrap() indicating that we should continue processing

    if ( yy_init ) then
        if ( yy_start = 0 ) then
            yy_start := 1;      -- first start state
        end if;

        -- we put in the '\n' and start reading from [1] so that an
        -- initial match-at-newline will be true.

        yy_ch_buf(0) := ASCII.LF;
        yy_n_chars := 1;

        -- we always need two end-of-buffer characters.  The first causes
        -- a transition to the end-of-buffer state.  The second causes
        -- a jam in that state.

        yy_ch_buf(yy_n_chars) := YY_END_OF_BUFFER_CHAR;
        yy_ch_buf(yy_n_chars + 1) := YY_END_OF_BUFFER_CHAR;

        yy_eof_has_been_seen := false;

        yytext_ptr := 1;
        yy_c_buf_p := yytext_ptr;
        yy_hold_char := yy_ch_buf(yy_c_buf_p);
        yy_init := false;
    end if; -- yy_init

    loop                -- loops until end-of-file is reached
        yy_cp := yy_c_buf_p;

        -- support of yytext
        yy_ch_buf(yy_cp) := yy_hold_char;

        -- yy_bp points to the position in yy_ch_buf of the start of the
        -- current run.
	yy_bp := yy_cp;
	yy_current_state := yy_start;
	loop
		yy_c := yy_ec(yy_ch_buf(yy_cp));
		if ( yy_accept(yy_current_state) /= 0 ) then
		    yy_last_accepting_state := yy_current_state;
		    yy_last_accepting_cpos := yy_cp;
		end if;
		while ( yy_chk(yy_base(yy_current_state) + yy_c) /= yy_current_state ) loop
		    yy_current_state := yy_def(yy_current_state);
		    if ( yy_current_state >= 186 ) then
			yy_c := yy_meta(yy_c);
		    end if;
		end loop;
		yy_current_state := yy_nxt(yy_base(yy_current_state) + yy_c);
	    yy_cp := yy_cp + 1;
if ( yy_current_state = 185 ) then
    exit;
end if;
	end loop;
	yy_cp := yy_last_accepting_cpos;
	yy_current_state := yy_last_accepting_state;

<<next_action>>
	    yy_act := yy_accept(yy_current_state);
            YY_DO_BEFORE_ACTION;
            YY_USER_ACTION;

        if aflex_debug then  -- output acceptance info. for (-d) debug mode
            text_io.put("--accepting rule #" );
            text_io.put(INTEGER'IMAGE(yy_act) );
            text_io.put_line("(""" & yytext & """)");
        end if;

<<do_action>>   -- this label is used only to access EOF actions
            case yy_act is
		when 0 => -- must backtrack
		-- undo the effects of YY_DO_BEFORE_ACTION
		yy_ch_buf(yy_cp) := yy_hold_char;
		yy_cp := yy_last_accepting_cpos;
		yy_current_state := yy_last_accepting_state;
		goto next_action;


when 1 => 
--# line 15 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (ANCESTOR_token);

when 2 => 
--# line 16 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (ANCESTOR_OR_SELF_token);

when 3 => 
--# line 17 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (ATTRIBUTE_token);

when 4 => 
--# line 18 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (CHILD_token);

when 5 => 
--# line 19 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (DESCENDANT_token);

when 6 => 
--# line 20 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (DESCENDANT_OR_SELF_token);

when 7 => 
--# line 21 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (FOLLOWING_token);

when 8 => 
--# line 22 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (FOLLOWING_SIBLING_token);

when 9 => 
--# line 23 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (NAMESPACE_token);

when 10 => 
--# line 24 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (PARENT_token);

when 11 => 
--# line 25 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (PRECEDING_token);

when 12 => 
--# line 26 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (PRECEDING_SIBLING_token);

when 13 => 
--# line 27 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (SELF_token);

when 14 => 
--# line 28 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (COMMENT_token);

when 15 => 
--# line 29 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (TEXT_token);

when 16 => 
--# line 30 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (PROCESSING_INSTRUCTION_token);

when 17 => 
--# line 31 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (NODE_token);

when 18 => 
--# line 32 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (AND_token);

when 19 => 
--# line 33 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (DIV_token);

when 20 => 
--# line 34 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (MOD_token);

when 21 => 
--# line 35 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (OR_token);

when 22 => 
--# line 36 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (L_PAREN_token);

when 23 => 
--# line 37 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (R_PAREN_token);

when 24 => 
--# line 38 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (L_BRACKET_T_token);

when 25 => 
--# line 39 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (R_BRACKET_T_token);

when 26 => 
--# line 40 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (STAR_token);

when 27 => 
--# line 41 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (PLUS_token);

when 28 => 
--# line 42 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (MINUS_token);

when 29 => 
--# line 43 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (DOT_token);

when 30 => 
--# line 44 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (DOUBLE_DOT_token);

when 31 => 
--# line 45 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (SLASH_token);

when 32 => 
--# line 46 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (DOUBLE_SLASH_T_token);

when 33 => 
--# line 47 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (COLON_token);

when 34 => 
--# line 48 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (DOUBLE_COLON_token);

when 35 => 
--# line 49 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (AT_SIGN_token);

when 36 => 
--# line 50 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (COMMA_token);

when 37 => 
--# line 51 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (DOLLAR_token);

when 38 => 
--# line 52 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (V_BAR_token);

when 39 => 
--# line 53 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (EQ_token);

when 40 => 
--# line 54 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (NE_token);

when 41 => 
--# line 55 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (GT_token);

when 42 => 
--# line 56 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (GE_token);

when 43 => 
--# line 57 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (LT_token);

when 44 => 
--# line 58 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (LE_token);

when 45 => 
--# line 59 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (SQ_LITERAL_token);

when 46 => 
--# line 60 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (DQ_LITERAL_token);

when 47 => 
--# line 61 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (INTEGER_token);

when 48 => 
--# line 62 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (DECIMAL_LITERAL_token);

when 49 => 
--# line 63 "XPath.l"
Current_Column := Current_Column + YYText'Length; return (NCNAME_token);

when 50 => 
--# line 64 "XPath.l"
Current_Column := Current_Column + YYText'Length;

when 51 => 
--# line 65 "XPath.l"
Current_Column := Current_Column + 1;

when 52 => 
--# line 66 "XPath.l"
Current_Line := Current_Line + 1; Current_Column := 1;

when 53 => 
--# line 67 "XPath.l"
ECHO;
when YY_END_OF_BUFFER + INITIAL + 1 => 
    return End_Of_Input;
                when YY_END_OF_BUFFER =>
                    -- undo the effects of YY_DO_BEFORE_ACTION
                    yy_ch_buf(yy_cp) := yy_hold_char;

                    yytext_ptr := yy_bp;

                    case yy_get_next_buffer is
                        when EOB_ACT_END_OF_FILE =>
                            begin
                            if ( yywrap ) then
                                -- note: because we've taken care in
                                -- yy_get_next_buffer() to have set up yytext,
                                -- we can now set up yy_c_buf_p so that if some
                                -- total hoser (like aflex itself) wants
                                -- to call the scanner after we return the
                                -- End_Of_Input, it'll still work - another
                                -- End_Of_Input will get returned.

                                yy_c_buf_p := yytext_ptr;

                                yy_act := YY_STATE_EOF((yy_start - 1) / 2);

                                goto do_action;
                            else
                                --  start processing a new file
                                yy_init := true;
                                goto new_file;
                            end if;
                            end;
                        when EOB_ACT_RESTART_SCAN =>
                            yy_c_buf_p := yytext_ptr;
                            yy_hold_char := yy_ch_buf(yy_c_buf_p);
                        when EOB_ACT_LAST_MATCH =>
                            yy_c_buf_p := yy_n_chars;
                            yy_current_state := yy_get_previous_state;

                            yy_cp := yy_c_buf_p;
                            yy_bp := yytext_ptr;
                            goto next_action;
                        when others => null;
                        end case; -- case yy_get_next_buffer()
                when others =>
                    text_io.put( "action # " );
                    text_io.put( INTEGER'IMAGE(yy_act) );
                    text_io.new_line;
                    raise AFLEX_INTERNAL_ERROR;
            end case; -- case (yy_act)
        end loop; -- end of loop waiting for end of file
end YYLex;
--# line 67 "XPath.l"

   function Get_Token return Token is
   begin
      return YYLex;
   exception when Constraint_Error =>
      raise Invalid_Character;
   end Get_Token;

   function Get_Token_String return String is
   begin
      return YYText;
   end Get_Token_String;

   function Get_Current_Line return Natural is
   begin
      return Current_Line;
   end Get_Current_Line;

   function Get_Current_Column return Natural is
   begin
      return Current_Column;
   end Get_Current_Column;

end XPath;

