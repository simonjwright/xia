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

with Mckae.XML.XPath.Locations;
with Xpath_Model;

package Mckae.XML.XPath.Query_Handling is

   use McKae.XML.XPath;

   --  Decode the string representation of the location path into its
   --  component parts
   function Pathify (Xpath_Query : Locations.Xpath_String)
                    return Locations.Location_Paths;

   --  Release the resources used by the construction of a location path
   procedure Free (Location_Path : in out Locations.Location_Paths);

   --  Exception raised when the query does not conform to XPath syntax
   Malformed_Query : exception;

   Parse_Tree : Xpath_Model.Parseable_Ptr;

end Mckae.XML.XPath.Query_Handling;
