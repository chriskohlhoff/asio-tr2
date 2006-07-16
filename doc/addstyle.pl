#!/usr/bin/perl -w

use strict;

if (@ARGV != 1)
{
  print "Usage: addstyle <file>\n";
  exit;
}

my $style =
"<style>" .
"div.section pre.programlisting { margin-left: 2em; }" .
"</style>";

my @lines = ();

my $filename = ${ARGV}[0];
open my $file_in, "<$filename" or die "Can't open $filename";
while (my $line = <$file_in>)
{
  $line =~ s~\<head\>~\<head\>$style~;
  push @lines, $line;
}
close $file_in;

open my $file_out, ">$filename" or die "Can't open $filename";
foreach my $line (@lines)
{
  print $file_out $line;
}
close $file_out;
