#!/usr/bin/perl -w

use strict;

if (@ARGV != 1)
{
  print "Usage: addstyle <file>\n";
  exit;
}

my $style =
"<style>" .
"blockquote pre.programlisting { margin-left: 2em; }\n" .
"div.informaltable { text-align: center; }" .
"p.blurb { background-color: #e0e0e0; font-style: italic; }" .
"table { margin: auto; }" .
"</style>";

my $docno =
"<pre>" .
"Doc. no:  D2054=06-0124\n" .
"Date:     2006-09-05\n" .
"Project:  Programming Language C++\n" .
"Reply to: Christopher Kohlhoff &lt;chris\@kohlhoff.com&gt;\n" .
"</pre>\n";

my $copyright =
"<hr/>\n" .
"<em>Copyright &copy; 2006 Christopher M. Kohlhoff</em>\n";

my @lines = ();

my $filename = ${ARGV}[0];
open my $file_in, "<$filename" or die "Can't open $filename";
while (my $line = <$file_in>)
{
  $line =~ s~\<head\>~\<head\>$style~;
  $line =~ s~\<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"\>~\<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"\>$docno~;
  $line =~ s~\<\/body\>~$copyright\<\/body\>~;
  $line =~ s/\240/ /g;
  push @lines, $line;
}
close $file_in;

open my $file_out, ">$filename" or die "Can't open $filename";
foreach my $line (@lines)
{
  print $file_out $line;
}
close $file_out;
