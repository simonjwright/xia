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

----------------------------------------------------------------------
--
--  Known limitations:
--
--  The core library function "id" is not yet implemented, as the
--  XMLAda function Get_Element_By_ID is not yet implemented.
--  Therefore invoking "id" will always result in an empty node-set.
--
----------------------------------------------------------------------

with Dom.Core;

package McKae.XML.XPath.XIA is

   function XPath_Query
     (N     : Dom.Core.Node;
      XPath : String)
     return Dom.Core.Node_List;
   --  Apply an XPath query 'XPath', starting with the given node 'N',
   --  in the case of a relative XPath query, or the document that
   --  contains the given node, otherwise.  Returns a list of nodes,
   --  which may be empty, that meet the XPath specification.  If the
   --  query does not follow XPath syntax, the Malformed_XPath
   --  exception is raised.

   Malformed_XPath : exception;
   -- Raised when the XPath query does not conform to XPath syntax.

   Inappropriate_Node : exception;
   -- Raised when the starting node does not correspond to the type of query

end McKae.XML.XPath.XIA;
