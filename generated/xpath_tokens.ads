

with XPath_Model;
use XPath_Model;

package XPath_tokens is


subtype YYSTYPE is XPath_Model.Parseable_Ptr;

    YYLVal, YYVal : YYSType; 
    type Token is
        (End_Of_Input, Error, Ncname_Token, Decimal_Literal_Token,
         Integer_Token, Dq_Literal_Token, Sq_Literal_Token,
         Le_Token, Lt_Token, Ge_Token,
         Gt_Token, Ne_Token, Eq_Token,
         V_Bar_Token, Dollar_Token, Comma_Token,
         At_Sign_Token, Double_Colon_Token, Colon_Token,
         Double_Slash_T_Token, Slash_Token, Double_Dot_Token,
         Dot_Token, Minus_Token, Plus_Token,
         Star_Token, R_Bracket_T_Token, L_Bracket_T_Token,
         R_Paren_Token, L_Paren_Token, Or_Token,
         Mod_Token, Div_Token, And_Token,
         Node_Token, Processing_Instruction_Token, Text_Token,
         Comment_Token, Self_Token, Preceding_Sibling_Token,
         Preceding_Token, Parent_Token, Namespace_Token,
         Following_Sibling_Token, Following_Token, Descendant_Or_Self_Token,
         Descendant_Token, Child_Token, Attribute_Token,
         Ancestor_Or_Self_Token, Ancestor_Token );

    Syntax_Error : exception;

end Xpath_Tokens;
