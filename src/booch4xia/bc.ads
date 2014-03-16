--  Copyright 1994 Grady Booch
--  Copyright 1994-1997 David Weller
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

--  $RCSfile: bc.ads,v $
--  $Revision: 1.8.2.3 $
--  $Date: 2002/12/24 11:42:44 $
--  $Author: simon $

package BC is

   --  This is the top level package in the Booch Component Hierarchy.

   --  The following exceptions may be raised by improper use of the
   --  Components.

   Duplicate : exception;
   --  Attempt to insert an item in a Map under a  duplicate key.

   Is_Null : exception;
   --  A Graph, List, or Tree isn't designating any actual Container.

   Not_Found : exception;
   --  Raised when a "done" Iterator is used.

   Not_Root : exception;
   --  Attempt to insert, append or join Lists or Trees other than at
   --  an "end".

   Overflow : exception;
   --  Attempt to fill a bounded Container beyond its capacity.

   Range_Error : exception;
   --  Attempt to Insert or Append at an invalid position.

   Referenced : exception;
   --  Attempt to Remove a List element that's aliased by another
   --  List.

   Sort_Error : exception;
   --  Attempt to sort an inappropriate Container (Bag, Map, Set).

   Storage_Error : exception;
   --  Raised by BC.Support.Managed_Storage when the requested size is
   --  too large or zero.

   Underflow : exception;
   --  Raised on attempts to access elements in an empty Container.

   Should_Have_Been_Overridden : exception;
   --  Raised if the Components have failed to override a primitive
   --  subprogram that should have been overridden for a derived type.
   --  Used only where the subprogram is private (and therefore can't
   --  be abstract).

   Not_Yet_Implemented : exception;
   --  Raised when a feature hasn't yet been implemented.

end BC;

