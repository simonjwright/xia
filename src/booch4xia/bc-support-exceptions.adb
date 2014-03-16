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

--  $RCSfile: bc-support-exceptions.adb,v $
--  $Revision: 1.5.2.1 $
--  $Date: 2002/12/26 14:48:10 $
--  $Author: simon $

package body BC.Support.Exceptions is


   function Reason_Message (For_The_Reason : Reason) return String;

   function Reason_Message (For_The_Reason : Reason) return String is
   begin
      case For_The_Reason is
         when No_Reason_Given => return "";
         when Disjoint => return "objects are members of different structures";
         when Duplicate => return "object already exists";
         when Empty => return "object is empty";
         when Full => return "object is full";
         when Illegal => return "illegal pattern";
         when Invalid_Index => return "index is out of range";
         when Invalid_Number => return "string does not denote a valid number";
         when Missing => return "object does not exist";
         when Not_Empty => return "object is not empty";
         when Not_Root => return "object is not at root of structure";
         when Is_Null => return "object is null";
         when Out_Of_Memory => return "storage requested not available";
         when Referenced =>
            return "object is referenced and cannot be destroyed";
         when Timing => return "possible race condition";
         when Too_Large => return "object is too large";
         when Too_Small => return "object is too small";
      end case;
   end Reason_Message;


   procedure Assert (Condition : Boolean;
                     Raising_If_False : Ada.Exceptions.Exception_Id;
                     From_Subprogram : String;
                     With_Reason : Reason := No_Reason_Given) is
   begin
      if not Condition then
         if With_Reason = No_Reason_Given then
            Ada.Exceptions.Raise_Exception
              (Raising_If_False,
               Module & "." & From_Subprogram);
         else
            Ada.Exceptions.Raise_Exception
              (Raising_If_False,
               Module & "." & From_Subprogram & ": "
               & Reason_Message (With_Reason));
         end if;
      end if;
   end Assert;


   procedure Report
     (The_Exception : Ada.Exceptions.Exception_Occurrence;
      To : Ada.Text_IO.File_Type := Ada.Text_IO.Standard_Output) is
      use Ada.Text_IO;
   begin
      if Ada.Exceptions.Exception_Message (The_Exception)'Length = 0 then
         Put_Line (File => To,
                   Item => "Exception "
                     & Ada.Exceptions.Exception_Name (The_Exception)
                     & " occurred.");
      else
         Put_Line (File => To,
                   Item => "Exception "
                     & Ada.Exceptions.Exception_Name (The_Exception)
                     & " ("
                     & Ada.Exceptions.Exception_Message (The_Exception)
                     & ") occurred.");
      end if;
   end Report;


end BC.Support.Exceptions;
