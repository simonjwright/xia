-------------------------------------------------------------------------------
--                                                                           --
--            XPATH IN ADA Copyright (C) 2003, McKae Technologies            --
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
use  Ada.Strings.Unbounded;
with Dom.Core;

package McKae.XML.XPath.Expressions is

   type Node_Items is
      record
         N             : Dom.Core.Node;
         Node_Position : Natural := 0;
         Node_Set_Size : Natural := 0;
      end record;

   --  Types of expression values
   type Expression_Value_Types is
     (As_String,
      As_Number,
      As_Boolean,
      As_Node_List,
      As_Expr_Text
     );
   subtype Value_Types is Expression_Value_Types range As_String .. As_Node_List;

   -- Special otherwise non-representable numeric values
   type Special_Number_Values is
     (NaN,
      Positive_Infinity,
      Negative_Infinity,
      Normal);
   subtype Special_Numbers is Special_Number_Values range NaN .. Negative_Infinity;

   --  Container for the value of an expression
   type Expression_Values (Value_Type : Expression_Value_Types := As_String) is
      record
         case Value_Type is
            when As_String | As_Expr_Text =>
               S : Unbounded_String;
            when As_Number =>
               F : Long_Float                  := 0.0;
               Special : Special_Number_Values := Normal;
            when As_Boolean =>
               B : Boolean := False;
            when As_Node_List =>
               Ns: Dom.Core.Node_List;
         end case;
      end record;

   --  For debug
   function Image (Object : Expression_Values) return String;

   --  List in which function call arguments values are stored
   type Argument_List is array (Natural range <>) of Expression_Values;

   --  Empty argument list
   No_Arguments : Argument_List(1..0);

   --  Force the value to take on a value consistent with the specified
   --  target type.  If there is no reasonable value for that type,
   --  raise the Invalid_Coercion exception.
   procedure Coerce
     (Value   : in out Expression_Values;
      -- The value to coerce into a value consistent with the target type

      To_Type : in     Value_Types       := As_String
      -- Target type for the value
     );

   Invalid_Coercion : exception;
   --  Raised when an expression cannot be coerced to the requested type

   --  Relational operators between two expressions
   type Relational_Operators is
     (Less_Than,
      Less_Or_Equal,
      Equal,
      Not_Equal,
      Greater_Or_Equal,
      Greater_Than);

   --  Relationally compare the two expressions, at most one of which
   --  is required to be a node set.
   --
   --  If there is a node set, returns
   --  an As_Node_Set expression with just those members of the
   --  original node set that have the specified relationship with the
   --  other expression.
   --
   --  If not, returns an As_Boolean expression indicating the result
   --  of the comparison.
   --
   -- XXX Maybe should think of a better name.
   function Compare
     (Expr1 : Expression_Values;
      -- Comparison operand 1

      Expr2 : Expression_Values;
      -- Comparison operand 2

      Operator : Relational_Operators
      -- The relationship to evaluate between the two expressions
      ) return Expression_Values;


   --  Basic math computations that can be performed on expressions
   type Computations is
     (Add, Subtract, Multiply, Divide, Modulo, Negate);

   --  Perform the designated computations on the two expression
   --  operands.  The operands will have their types harmonized, so if
   --  that cannot be accomplished, Invalid_Coercion will be raised.
   --  For unary minus (negation), Expr2 will be ignored.
   function Compute
     (Expr1 : Expression_Values;
      -- Comparison operand 1

      Expr2 : Expression_Values;
      -- Comparison operand 2

      Computation : Computations
      -- The mathematical operation to perform
      ) return Expression_Values;


   Invalid_Expression : exception;
   --  Raised when there are problems evaluating an expression, such as
   --  wrong number of arguments, incorrect argument types, or simply
   --  an unrecognized function name.

   --  Evaluate the core library function in the context of the given
   --  node.
   procedure Evaluate_Function (Function_Name : in     String;
                                Context_Node  : in     Node_Items;
                                Args          : in out Argument_List;
                                Result        :    out Expression_Values);

end McKae.XML.XPath.Expressions;
