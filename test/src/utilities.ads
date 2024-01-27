--  Copyright (C) 2024 Simon Wright <simon@pushface.org>
--  Licence: GPL-3.0-or-later

with Ada.Strings.Unbounded;
with DOM.Readers;

package Utilities is

   function Run_Query (Document : DOM.Readers.Tree_Reader;
                       Query : String; Matches : out Natural)
                      return Ada.Strings.Unbounded.Unbounded_String;

end Utilities;
