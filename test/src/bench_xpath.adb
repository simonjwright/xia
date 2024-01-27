-------------------------------------------------------------------------------
--                                                                           --
--            XPATH IN ADA Copyright (C) 2004, McKae Technologies            --
--         Copyright (C) 2021-2024, Simon Wright <simon@pushface.org>        --
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

--  Turn off warnings on the long lines resulting from long queries.
pragma Style_Checks ("-m");

with Ada.Calendar;
use Ada.Calendar;

with DOM.Core;
with XIA;
with DOM.Readers;

with Input_Sources.File;

with Ada.Text_IO; use Ada.Text_IO;

procedure Bench_Xpath is

   use DOM;
   use DOM.Core;
   use Input_Sources;
   use XIA;

   XML_Source_Reader : DOM.Readers.Tree_Reader;
   Unused_Nodes      : Node_List;
   N                 : Node;

   File_Source : File.File_Input;

   Start, Stop : Ada.Calendar.Time;

begin
   File.Open ("personal.xml", File_Source);

   Readers.Parse (XML_Source_Reader, File_Source);
   File.Close (File_Source);

   N := Readers.Get_Tree (XML_Source_Reader);
   for I in 1 .. 10 loop
      Start := Clock;
      Unused_Nodes := XPath_Query (N, "//given/..");
      Unused_Nodes := XPath_Query (N, "//email");
      Unused_Nodes := XPath_Query (N, "//@id");
      Unused_Nodes := XPath_Query (N, "//@aid");
      Unused_Nodes := XPath_Query (N, "/personnel/person/link/attribute::subordinates");
      Unused_Nodes := XPath_Query (N, "personnel/person/name/family");
      Unused_Nodes := XPath_Query (N, "//family/ancestor::name");
      Unused_Nodes := XPath_Query (N, "//family/text()");
      Unused_Nodes := XPath_Query (N, "/personnel/person/name/family/..");
      Unused_Nodes := XPath_Query (N, "./pesonnel");
      Unused_Nodes := XPath_Query (N, "./personnel");
      Unused_Nodes := XPath_Query (N, "personnel/person/email/preceding::name/given/text()");
      Unused_Nodes := XPath_Query (N, ".//*");
      Unused_Nodes := XPath_Query (N, "//email/following-sibling::link/@manager");
      Unused_Nodes := XPath_Query (N, "//email/following-sibling::link/@subordinates");
      Unused_Nodes := XPath_Query (N, "//@id/parent::*");
      Unused_Nodes := XPath_Query (N, "//given/..");
      Unused_Nodes := XPath_Query (N, "//email/preceding-sibling::*");
      Unused_Nodes := XPath_Query (N, "//email/following-sibling::*");
      Unused_Nodes := XPath_Query (N, "//family/ancestor::person/link");
      Unused_Nodes := XPath_Query (N, "//name/ancestor::*");
      Unused_Nodes := XPath_Query (N, "//name/ancestor-or-self::*");
      Unused_Nodes := XPath_Query (N, "//name/descendant::*");
      Unused_Nodes := XPath_Query (N, "//name/descendant-or-self::*");
      Unused_Nodes := XPath_Query (N, "//@subordinates");
      Unused_Nodes := XPath_Query (N, "//@subordinates/..");
      Unused_Nodes := XPath_Query (N, "//@subordinates/../preceding::*");
      Unused_Nodes := XPath_Query (N, "//@subordinates/../following::*");
      Unused_Nodes := XPath_Query (N, "..");
      Unused_Nodes := XPath_Query (N, ".");
      Unused_Nodes := XPath_Query (N, "..//email");
      Unused_Nodes := XPath_Query (N, "//person[3]/following-sibling::*");
      Unused_Nodes := XPath_Query (N, "//person[3]/following-sibling::*/@id[2]");
      Unused_Nodes := XPath_Query (N, "//person[3]/preceding-sibling::*/@id");
      Unused_Nodes := XPath_Query (N, "//person[3]/preceding-sibling::*[2]/@id");
      Unused_Nodes := XPath_Query (N, "//person[3]/preceding-sibling::*/@id[2]");
      Unused_Nodes := XPath_Query (N, "/personnel/person[2]/email/preceding-sibling::name/given/ancestor-or-self::*[3]");
      Unused_Nodes := XPath_Query (N, "//family");
      Unused_Nodes := XPath_Query (N, "//given");
      Unused_Nodes := XPath_Query (N, "//family|//given");
      Unused_Nodes := XPath_Query (N, "//family|//given[2]");
      Unused_Nodes := XPath_Query (N, "//person[last()]/@id");
      Unused_Nodes := XPath_Query (N, "//person[position()=2]/@id");
--      Unused_Nodes := XPath_Query (N, "//person[position(3)=2]/@id");
      Unused_Nodes := XPath_Query (N, "//@id[3]");
      Unused_Nodes := XPath_Query (N, "//@id[true()]");
      Unused_Nodes := XPath_Query (N, "//@id[false()]");
      Unused_Nodes := XPath_Query (N, "//@id[not(position()=2)]");
      Unused_Nodes := XPath_Query (N, "//@id[position() >= 5]");
      Unused_Nodes := XPath_Query (N, "//person[3 - 1]/@id");
      Unused_Nodes := XPath_Query (N, "//person[3 * 2]/@id");
      Unused_Nodes := XPath_Query (N, "//person[5 mod 2]/@id");
      Unused_Nodes := XPath_Query (N, "//person[5 mod -2]/@id");
      Unused_Nodes := XPath_Query (N, "//person[(-5 mod 2) + 4]/@id");
      Unused_Nodes := XPath_Query (N, "//person[(-5 mod -2) + 2 * true()]/@id");
      Unused_Nodes := XPath_Query (N, "//person[round(1.1*3)]/@id");
      Unused_Nodes := XPath_Query (N, "//person[1 or 2]/@id");
      Unused_Nodes := XPath_Query (N, "//person[4 and -2]/@id");
      Unused_Nodes := XPath_Query (N, "//person[4 and (3 > 10)]/@id");
      Unused_Nodes := XPath_Query (N, "//person[position() != 3]/@id");
      Unused_Nodes := XPath_Query (N, "//person[3 * 1.1]/@id");
      Unused_Nodes := XPath_Query (N, "//person[5 - 0.0001]/@id");
      Unused_Nodes := XPath_Query (N, "//person[(((position() mod 2)))]/@id");
      Unused_Nodes := XPath_Query (N, "//person[position() mod 2 = 0]/@id");
      Unused_Nodes := XPath_Query (N, "//person[position() = floor(last() div 2 + 0.5) or position() = ceiling(last() div 2 + 0.5)]/@id");
      Unused_Nodes := XPath_Query (N, "//person[position() > 3]/@id");
      Unused_Nodes := XPath_Query (N, "//person[position() < 3]/@id");
      Unused_Nodes := XPath_Query (N, "//person[position() <= 2]/@id");
      Unused_Nodes := XPath_Query (N, "//person[position() div 2 + 2]/@id");
      Unused_Nodes := XPath_Query (N, "//person[5 + -true()]/@id");
      Unused_Nodes := XPath_Query (N, "//person[number(""This is not a number"")]/@id");
      Unused_Nodes := XPath_Query (N, "//person[4 div 0]/@id");
      Unused_Nodes := XPath_Query (N, "//person[string(number(""This is not a number"")) = ""NaN""]/@id");
      Unused_Nodes := XPath_Query (N, "//person[string(number(""This is not a number"")) = ""This is not a number""]/@id");
      Unused_Nodes := XPath_Query (N, "//person[string(4 div 0) = ""Infinity""]/@id");
      Unused_Nodes := XPath_Query (N, "//person[concat(string(position()), ""23"") = ""323""]/@id");
      Unused_Nodes := XPath_Query (N, "//person[starts-with(concat(string(position()), ""23""), ""22"")]/@id");
      Unused_Nodes := XPath_Query (N, "//person[contains(concat(string(position()), ""23"", string(position()), ""47""), ""34"")]/@id");
      Unused_Nodes := XPath_Query (N, "//person[substring-before(concat(string(position()), ""23"", string(position()), ""47""), ""35"") = ""52""]/@id");
      Unused_Nodes := XPath_Query (N, "//person[substring-after(concat(string(position()), ""23"", string(position()), ""47""), ""35"") = ""47""]/@id");
      Unused_Nodes := XPath_Query (N, "//person[substring(concat(string(position()), ""23"", string(position()), ""47""), 4, 3) = ""347""]/@id");
      Unused_Nodes := XPath_Query (N, "//person[substring(concat(string(position()), ""23"", string(position()), ""47""), 4) = ""347""]/@id");
      Unused_Nodes := XPath_Query (N, "//person[substring(concat(string(position()), ""23"", string(position()), ""47""), -42, 1 div 0) = ""223247""]/@id");
      Unused_Nodes := XPath_Query (N, "//person[substring(concat(string(position()), ""23"", string(position()), ""47""), 0 div 0, 3) = ""3""]/@id");
      Unused_Nodes := XPath_Query (N, "//person[substring(concat(string(position()), ""23"", string(position()), ""47""), 0 div 0, 3) = """"]/@id");
      Unused_Nodes := XPath_Query (N, "//person[substring(concat(string(position()), ""23"", string(position()), ""47""), 1.5, 2.6) = '234']/@id");
      Unused_Nodes := XPath_Query (N, "//person[substring(concat(string(position()), ""23"", string(position()), ""47""), 0, 3) = '52']/@id");
      --  Unused_Nodes := XPath_Query (N, "//person[substring(concat(string(position()), ""23"", string(position()), ""47""), -1 div 0, 1 div 0) = ""]/@id");
      Unused_Nodes := XPath_Query (N, "//person[(string-length(string(position())) * position()) = ""4""]/@id");
      Unused_Nodes := XPath_Query (N, "/descendant-or-self::email/text()");
      Unused_Nodes := XPath_Query (N, "/descendant-or-self::email[boolean(-3)]/text()");
      Unused_Nodes := XPath_Query (N, "/descendant-or-self::email[boolean(35.3)]/text()");
      Unused_Nodes := XPath_Query (N, "/descendant-or-self::email[boolean(0)]/text()");
      Unused_Nodes := XPath_Query (N, "/descendant-or-self::email[boolean(0 div 0)]/text()");
      Unused_Nodes := XPath_Query (N, "/descendant-or-self::email[boolean(-4 div 0)]/text()");
      Unused_Nodes := XPath_Query (N, "/descendant-or-self::email[boolean(10 div 0)]/text()");
      Unused_Nodes := XPath_Query (N, "/descendant-or-self::email[boolean(string())]/text()");
      Unused_Nodes := XPath_Query (N, "/descendant-or-self::email[boolean(string(last()))]/text()");
      Unused_Nodes := XPath_Query (N, "/descendant-or-self::email[boolean(substring-before(""123"", ""5""))]/text()");
      Unused_Nodes := XPath_Query (N, "/descendant-or-self::email[boolean(number())]/text()");
      Unused_Nodes := XPath_Query (N, "//person[email]/@id");
      Unused_Nodes := XPath_Query (N, "//name[given = ""Big""]/family");
      Unused_Nodes := XPath_Query (N, "/personnel/person[string-length(string(name/family)) < 5]/@id");
      Unused_Nodes := XPath_Query (N, "//*[attribute::id=""five.worker""]/@id");
      Unused_Nodes := XPath_Query (N, "//*[../email=""chief@foo.com""]");
      Unused_Nodes := XPath_Query (N, "//given[.=""Four""]");
      Unused_Nodes := XPath_Query (N, "/descendant::node()[count(ancestor::node()) = 3]");
      Unused_Nodes := XPath_Query (N, "//name[given=""Five""]/given");
      Unused_Nodes := XPath_Query (N, "//name[normalize-space(given)=""Five""]/given");
      Unused_Nodes := XPath_Query (N, "//name[translate(normalize-space(string(given)), ""Five"", ""Four"")=""Four""]/given");
      Unused_Nodes := XPath_Query (N, "//name[translate(string(given), ""Oneabcd"", ""Two"")=""Two""]/given");
      Unused_Nodes := XPath_Query (N, "//name[translate(string(given), ""FFFF"", ""Four"")=""Four""]/given");
      Unused_Nodes := XPath_Query (N, "//name[translate(string(given), ""Thre"", ""One"")=""One""]/given");
      Unused_Nodes := XPath_Query (N, "//name/given[normalize-space()=""Big""]/text()");
      Unused_Nodes := XPath_Query (N, "//name/given[number()=""Big""]/text()");
      Unused_Nodes := XPath_Query (N, "/personnel/person/age[count(preceding::age)=2]/../@id");
      Unused_Nodes := XPath_Query (N, "/personnel/person/age[(sum(preceding::age) - 21)=56]/../@id");
      Unused_Nodes := XPath_Query (N, "//personnel[lang(""en"")]");
      Unused_Nodes := XPath_Query (N, "//personnel[lang(""pl"")]");
      Unused_Nodes := XPath_Query (N, "//*[lang(""en"")]");
      Unused_Nodes := XPath_Query (N, "/personnel/person[5]/name/given/ancestor-or-self::*[@xml:lang][2]");
      Unused_Nodes := XPath_Query (N, "/personnel/person[5]/name/given/ancestor-or-self::*[@xml:lang][last()]");
      Unused_Nodes := XPath_Query (N, "//person[2][@id=""three.worker""]/name/given");
      Unused_Nodes := XPath_Query (N, "//*[lang(""EN-US"")]");
      Unused_Nodes := XPath_Query (N, "//person[number(age)=""37""]/@id");
      Unused_Nodes := XPath_Query (N, "//person[string(number(email))=""NaN""]/@id");
      Unused_Nodes := XPath_Query (N, "//person[string(number(email))=""5""]/@id");
      Unused_Nodes := XPath_Query (N, "/personnel/person[@id=""four.worker"" and @xml:lang=""en-US""]");
      Unused_Nodes := XPath_Query (N, "/personnel/person[@id=""five.worker"" and @xml:lang=""en-US""]/email");
      Unused_Nodes := XPath_Query (N, "/personnel/person[number(age) > 40]/@id");
      Unused_Nodes := XPath_Query (N, "/personnel/person[(number(age) > 40) or (number(age) < 30)]/@id");
      Unused_Nodes := XPath_Query (N, "/personnel/person[@id=""four.worker""]|/personnel/person/age");
      Unused_Nodes := XPath_Query (N, "//@*");
      Unused_Nodes := XPath_Query (N, "//person/@*");
      Unused_Nodes := XPath_Query (N, "//node()[name(.)=""#text""]");
      Unused_Nodes := XPath_Query (N, "//node()[local-name(.)=name(.)]");
      Unused_Nodes := XPath_Query (N, "//@*[string(namespace-uri(.))]");
      Unused_Nodes := XPath_Query (N, "//@*[namespace-uri(.)]");
      Unused_Nodes := XPath_Query (N, "//link[@manager]");
      Unused_Nodes := XPath_Query (N, "//link[@subordinates]");
      Unused_Nodes := XPath_Query (N, "//link[@manager|@subordinates]");
      Unused_Nodes := XPath_Query (N, "//person[number('This is not a number')]/@id");
      Unused_Nodes := XPath_Query (N, "//person[4 div 0]/@id");
      Unused_Nodes := XPath_Query (N, "//person[string(number('This is not a number')) = 'NaN']/@id");
      Unused_Nodes := XPath_Query (N, "//person[string(number('This is not a number')) = 'This is not a number']/@id");
      Unused_Nodes := XPath_Query (N, "//person[string(4 div 0) = 'Infinity']/@id");
      Unused_Nodes := XPath_Query (N, "//person[concat(string(position()), '23') = '323']/@id");
      Unused_Nodes := XPath_Query (N, "//person[starts-with(concat(string(position()), '23'), '22')]/@id");
      Unused_Nodes := XPath_Query (N, "//person[contains(concat(string(position()), '23', string(position()), '47'), '34')]/@id");
      Unused_Nodes := XPath_Query (N, "//person[substring-before(concat(string(position()), '23', string(position()), '47'), '35') = '52']/@id");
      Stop := Clock;
      Put_Line (Duration'Image (Stop - Start));
   end loop;

end Bench_Xpath;
