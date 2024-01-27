--  Copyright (C) 2024 Simon Wright <simon@pushface.org>
--  Licence: GPL-3.0-or-later

with AUnit.Assertions; use AUnit.Assertions;
with AUnit.Test_Cases; use AUnit.Test_Cases;

with Ada.Strings.Unbounded;
with DOM.Readers;
with Input_Sources.File;

with XIA;

with Utilities;

package body Wikipedia_Tests is

   use Ada.Strings.Unbounded;
   use DOM;
   use XIA;

   XML_Source_Reader : DOM.Readers.Tree_Reader;

   package Tests is
      type T is new Test_Case with null record;
      overriding function Name (C : T) return AUnit.Message_String;
      overriding procedure Register_Tests (C : in out T);
      --  procedure Set_Up (C : in out T);
      --  procedure Tear_Down (C : in out t);
   end Tests;

   use AUnit;

   package body Tests is
      overriding function Name (C : T) return AUnit.Message_String
        is (Format ("Wikipedia"));

      procedure Malformed (Unused : in out AUnit.Test_Cases.Test_Case'Class)
      is
         Unused_Matches : Natural;
         Unused_Result : Unbounded_String;
      begin
         Unused_Result := Utilities.Run_Query
           (XML_Source_Reader, "a[1", Unused_Matches);
         Assert (False, "should have caught Malformed_XPath");
      exception
         when Malformed_XPath => null;
      end Malformed;

      procedure Test_1 (Unused : in out AUnit.Test_Cases.Test_Case'Class)
      is
         Matches : Natural;
         Result : Unbounded_String;
      begin
         Result := Utilities.Run_Query
           (XML_Source_Reader, "a/@name", Matches);
         Assert (Matches = 1, "wrong number of matches:" & Matches'Image);
         Assert (Result = "name='a1'",
                 "mismatched result: " & To_String (Result));
      end Test_1;

      procedure Test_2  (Unused : in out AUnit.Test_Cases.Test_Case'Class)
      is
         Matches : Natural;
         Result : Unbounded_String;
      begin
         Result := Utilities.Run_Query
           (XML_Source_Reader, "a/b/@name", Matches);
         Assert (Matches = 2, "wrong number of matches: " & Matches'Image);
         Assert (Result = "name='b1';name='b2'",
                 "mismatched result: " & To_String (Result));
      end Test_2;

      procedure Test_3  (Unused : in out AUnit.Test_Cases.Test_Case'Class)
      is
         Matches : Natural;
         Result : Unbounded_String;
      begin
         Result := Utilities.Run_Query
           (XML_Source_Reader, "a/b/c/@name", Matches);
         Assert (Matches = 1, "wrong number of matches: " & Matches'Image);
         Assert (Result = "name='c1'",
                 "mismatched result: " & To_String (Result));
      end Test_3;

      procedure Test_4  (Unused : in out AUnit.Test_Cases.Test_Case'Class)
      is
         Matches : Natural;
         Result : Unbounded_String;
      begin
         Result := Utilities.Run_Query
           (XML_Source_Reader, "a//b/@name", Matches);
         Assert (Matches = 3, "wrong number of matches: " & Matches'Image);
         Assert (Result = "name='b1';name='b2';name='b3'",
                 "mismatched result: " & To_String (Result));
      end Test_4;

      procedure Test_5  (Unused : in out AUnit.Test_Cases.Test_Case'Class)
      is
         Matches : Natural;
         Result : Unbounded_String;
      begin
         Result := Utilities.Run_Query
           (XML_Source_Reader, "a/b/*/@name", Matches);
         Assert (Matches = 3, "wrong number of matches: " & Matches'Image);
         Assert (Result = "name='c1';name='d1';name='e1'",
                 "mismatched result: " & To_String (Result));
      end Test_5;

      procedure Test_6  (Unused : in out AUnit.Test_Cases.Test_Case'Class)
      is
         Matches : Natural;
         Result : Unbounded_String;
      begin
         Result := Utilities.Run_Query
           (XML_Source_Reader, "a//b/*/@name", Matches);
         Assert (Matches = 4, "wrong number of matches: " & Matches'Image);
         Assert (Result = "name='c1';name='d1';name='e1';name='f1'",
                 "mismatched result: " & To_String (Result));
      end Test_6;

      procedure Test_7  (Unused : in out AUnit.Test_Cases.Test_Case'Class)
      is
         Matches : Natural;
         Result : Unbounded_String;
      begin
         Result := Utilities.Run_Query
           (XML_Source_Reader, "a//b/*[1]/@name", Matches);
         Assert (Matches = 3, "wrong number of matches: " & Matches'Image);
         Assert (Result = "name='c1';name='e1';name='f1'",
                 "mismatched result: " & To_String (Result));
      end Test_7;

      procedure Test_8  (Unused : in out AUnit.Test_Cases.Test_Case'Class)
      is
         Matches : Natural;
         Result : Unbounded_String;
      begin
         Result := Utilities.Run_Query
           (XML_Source_Reader, "(a//b/*)/@name", Matches);
         Assert (Matches = 4, "wrong number of matches");
         Assert (Result = "name='c1';name='d1';name='e1';name='f1'",
                 "mismatched result: " & To_String (Result));
      end Test_8;

      procedure Test_9  (Unused : in out AUnit.Test_Cases.Test_Case'Class)
      is
         Matches : Natural;
         Result : Unbounded_String;
      begin
         Result := Utilities.Run_Query
           (XML_Source_Reader, "(a//b/*)[1]/@name", Matches);
         Assert (Matches = 1, "wrong number of matches");
         Assert (Result = "name='c1'",
                 "mismatched result: " & To_String (Result));
      end Test_9;

      procedure Test_10  (Unused : in out AUnit.Test_Cases.Test_Case'Class)
      is
         Matches : Natural;
         Result : Unbounded_String;
      begin
         Result := Utilities.Run_Query
           (XML_Source_Reader, "//b/*/@name", Matches);
         Assert (Matches = 4, "wrong number of matches");
         Assert (Result = "name='c1';name='d1';name='e1';name='f1'",
                 "mismatched result: " & To_String (Result));
      end Test_10;

      overriding procedure Register_Tests (C : in out T)
      is
      begin
         Registration.Register_Routine
           (C, Malformed'Access, "malformed XPath");
         Registration.Register_Routine
           (C, Test_1'Access, "a/@name");
         Registration.Register_Routine
           (C, Test_2'Access, "a/b/@name");
         Registration.Register_Routine
           (C, Test_3'Access, "a/b/c/@name");
         Registration.Register_Routine
           (C, Test_4'Access, "a//b/@name");
         Registration.Register_Routine
           (C, Test_5'Access, "a/b/*/@name");
         Registration.Register_Routine
           (C, Test_6'Access, "a//b/*/@name");
         Registration.Register_Routine
           (C, Test_7'Access, "a//b/*[1]/@name");
         Registration.Register_Routine
           (C, Test_8'Access, "(a//b/*)/@name");
         Registration.Register_Routine
           (C, Test_9'Access, "(a//b/*)[1]/@name");
         Registration.Register_Routine
           (C, Test_10'Access, "//b/*/@name");
      end Register_Tests;

   end Tests;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
      Result : constant AUnit.Test_Suites.Access_Test_Suite
        := new AUnit.Test_Suites.Test_Suite;
   begin
      AUnit.Test_Suites.Add_Test (Result, new Tests.T);

      return Result;
   end Suite;

begin
   declare
      use Input_Sources;
      File_Source : File.File_Input;
   begin
      File.Open ("wikipedia.xml", File_Source);
      Readers.Parse (XML_Source_Reader, File_Source);
      File.Close (File_Source);
   end;
end Wikipedia_Tests;
