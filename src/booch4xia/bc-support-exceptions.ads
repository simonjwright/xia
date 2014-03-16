--  Copyright 1994 Grady Booch
--  Copyright 1998-2002 Simon Wright <simon@pushface.org>

--  This package is free software; you can redistribute it and/or
--  modify it under terms of the GNU General Public License as
--  published by the Free Software Foundation; either version 2, or
--  (at your option) any later version. This package is distributed in
--  the hope that it will be useful, but WITHOUT ANY WARRANTY; without
--  even the implied warranty of MERCHANTABILITY or FITNESS FOR A
--  PARTICULAR PURPOSE. See the GNU General Public License for more
--  details. You should have received a copy of the GNU General Public
--  License distributed with this package; see file COPYING.  If not,
--  write to the Free Software Foundation, 59 Temple Place - Suite
--  330, Boston, MA 02111-1307, USA.

--  As a special exception, if other files instantiate generics from
--  this unit, or you link this unit with other files to produce an
--  executable, this unit does not by itself cause the resulting
--  executable to be covered by the GNU General Public License.  This
--  exception does not however invalidate any other reasons why the
--  executable file might be covered by the GNU Public License.

--  $RCSfile: bc-support-exceptions.ads,v $
--  $Revision: 1.5.2.1 $
--  $Date: 2002/12/26 14:48:11 $
--  $Author: simon $

with Ada.Exceptions;
with Ada.Text_IO;

package BC.Support.Exceptions is

   pragma Elaborate_Body;

   --  These codes are shorthand for standard messages
   type Reason is (No_Reason_Given,
                   Disjoint,
                   Duplicate,
                   Empty,
                   Full,
                   Illegal,
                   Invalid_Index,
                   Invalid_Number,
                   Missing,
                   Not_Empty,
                   Not_Root,
                   Is_Null,
                   Out_Of_Memory,
                   Referenced,
                   Timing,
                   Too_Large,
                   Too_Small);

   generic
      Module : String;
   procedure Assert (Condition : Boolean;
                     Raising_If_False : Ada.Exceptions.Exception_Id;
                     From_Subprogram : String;
                     With_Reason : Reason := No_Reason_Given);
   pragma Inline (Assert);

   procedure Report
     (The_Exception : Ada.Exceptions.Exception_Occurrence;
      To : Ada.Text_IO.File_Type := Ada.Text_IO.Standard_Output);

end BC.Support.Exceptions;
