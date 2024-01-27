--  Copyright (C) 2024 Simon Wright <simon@pushface.org>
--  Licence: GPL-3.0-or-later

with AUnit.Reporter.Text;
with AUnit.Run;
with AUnit.Test_Suites;

with Wikipedia_Tests;

procedure Test_AUnit is
   All_Test_Cases : constant AUnit.Test_Suites.Access_Test_Suite
     := new AUnit.Test_Suites.Test_Suite;
   function All_Tests return AUnit.Test_Suites.Access_Test_Suite
     is (All_Test_Cases);
   procedure Run is new AUnit.Run.Test_Runner (All_Tests);
   Reporter : AUnit.Reporter.Text.Text_Reporter;
begin
   AUnit.Test_Suites.Add_Test (All_Test_Cases, Wikipedia_Tests.Suite);
   Run (Reporter);
end Test_AUnit;
