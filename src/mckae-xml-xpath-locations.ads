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

with Ada.Containers.Vectors;
with Ada.Strings.Unbounded;
with McKae.XML.XPath.Predicates;
with Unicode.CES;
with Xpath_Model;

package McKae.XML.XPath.Locations is

   use Ada.Strings.Unbounded;
   use McKae.XML.XPath;

   --  XPath axes
   type Axes is
     (Child_Axis,
      Parent_Axis,
      Self_Axis,
      Preceding_Sibling_Axis,
      Following_Sibling_Axis,
      Ancestor_Axis,
      Ancestor_Or_Self_Axis,
      Namespace_Axis,
      Attribute_Axis,

      Descendant_Or_Self_Axis,
      Descendant_Axis,
      Following_Axis,

      Preceding_Axis);

   --  No explicit axis implies the child axis
   No_Axis : constant Axes := Child_Axis;

   --  Axes whose traversal consists of immediate, direct traversals
   subtype Immediate_Axes is Axes range Child_Axis .. Attribute_Axis;

   --  Axes whose traversal requires the traversal of branchings
   subtype Branched_Axes
     is Axes range Descendant_Or_Self_Axis .. Preceding_Axis;

   type Axes_Directionality is array (Axes) of Boolean;

   Reverse_Axis : constant Axes_Directionality :=
     (Ancestor_Axis           |
        Ancestor_Or_Self_Axis |
        Preceding_Axis        |
        Preceding_Sibling_Axis => True,
      others => False);
   Forward_Axis : constant Axes_Directionality := not Reverse_Axis;

   --  Kinds of node tests.
   --
   --  Note that Expression_Node_Test isn't really a _test_; it's used
   --  after the second alternative of Primary_Expr (L_PAREN Expr
   --  R_PAREN) so that the predicate in a query such as
   --    (a//b/*)[1]
   --  is applied to the whole node set, rather than to the results
   --  of applying the query to each input node.
   type Node_Tests is
     (No_Node_Test,
      QName_Node_Test,
      NCName_Node_Test,
      Text_Node_Test,
      Comment_Node_Test,
      Processing_Instruction_Node_Test,
      Node_Node_Test,
      Expression_Node_Test);

   --  Node tests that are specifiable in the XPath syntax
   subtype Specifiable_Node_Tests
     is Node_Tests range Text_Node_Test .. Node_Node_Test;

   ----------------------------------------------------------------

   --  Specification of the node test portion of a location step
   type Node_Test_Specification
     (Node_Test : Node_Tests := No_Node_Test) is
      record
         Name : Unbounded_String;
         case Node_Test is
            when QName_Node_Test =>
               Prefix : Unbounded_String;
            when No_Node_Test                  |
              NCName_Node_Test                 |
              Text_Node_Test                   |
              Comment_Node_Test                |
              Processing_Instruction_Node_Test |
              Node_Node_Test                   |
              Expression_Node_Test =>
               null;
         end case;
      end record;

   --  For debug
   function Image (Object : Node_Test_Specification) return String;

   --  Location step, the part in between '/'s
   type Location_Steps is record
      Axis                : Axes := No_Axis;
      Node_Test           : Node_Test_Specification
        := (Node_Test => No_Node_Test,
            Name      => Null_Unbounded_String);
      Location_Predicates : Predicates.Predicate_List
        := Predicates.Null_Predicate;
      Output_Step         : Boolean := False;
   end record;

   --  For debug
   function Image (Object : Location_Steps) return String;

   --  A sequence of location steps
   package Location_Steps_Management is new
     Ada.Containers.Vectors (Positive, Location_Steps);

   type Location_Paths is
      record
         Absolute : Boolean;
         Path     : Location_Steps_Management.Vector;
      end record;

   --  For debug
   function Image (Object : Location_Paths) return String;

   --  Redefinition of strings to be compatible with the DOM interface
   subtype XPath_String is Unicode.CES.Byte_Sequence;

   --  Add a newly defined location step to the path (unless we're in
   --  a predicate).
   procedure Add (Location_Step : in Location_Steps);

   --  Adds Predicate to the last-added Step
   procedure Add_Predicate (Predicate : Xpath_Model.Parseable_Ptr);

   --  The following steps are in a predicate, NOT in the query's path
   procedure Begin_Predicate;

   --  Add the predicate to the last step, revert to accumulating path
   --  steps for the query
   procedure End_Predicate;

   --  Return the location path structure generated by parsing the
   --  Xpath query.  IMPORTANT!  The Location_Path returned by this
   --  function must be subsequently freed using the corresponding
   --  Free procedure.    XXXX why?
   function Get_Path return Location_Paths;

   --  Release the resources used by the construction of a location path
   procedure Free (Location_Path : in out Location_Paths);

   --  Reset the location path processing for a new query.  This must
   --  be called before invoking the Xia_Parser_Model.Pathify  XXXX
   --  procedure.
   procedure Reset_For_Parsing;

end McKae.XML.XPath.Locations;
