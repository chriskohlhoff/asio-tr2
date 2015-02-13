#!/usr/bin/perl -w

use strict;
use File::Basename;
use File::Slurp;
use MIME::Base64;

if (@ARGV != 2)
{
  print "Usage: addstyle <input> <output>\n";
  exit;
}

my $style =
"<style>\n" .
"body { font-family: \"Book Antiqua\", \"Times New Roman\", \"Times\", serif; padding: 2em; }\n" .
".programlisting, .computeroutput, .literal { font-family: \"Consolas\", monospace; font-size: 90%; }\n" .
"blockquote pre.programlisting { margin-left: 1em; padding-left: 1em; }\n" .
"div.table { text-align: center; }\n" .
".sidebar { background-color: #e0e0e0; font-style: italic; }\n" .
"p { text-align: justify; }\n" .
"p.tablecaption { font-weight: bold; text-align: center; }\n" .
"p.title { font-weight: bold; text-align: center; }\n" .
"div.section { position: relative; }\n" .
"span.xrefid { position: absolute; right: 0em; top: 0em; }\n" .
"table { margin: auto; border: 1px solid gray; border-collapse: collapse; }\n" .
"th { border: 1px solid gray; padding: 0.5em; }\n" .
"td { border: 1px solid gray; padding: 0.5em; }\n" .
"h1, h2, h3, h4, h5, div.titlepage { page-break-after: avoid; }\n" .
"dl { margin-top: 0px; margin-bottom: 0px; }\n" .
"</style>";

my $rev = `git rev-parse HEAD`;
chomp($rev);
my $draft_info = " (as of commit $rev)";
#$draft_info = "";

my $filename_in = ${ARGV}[0];
my $filename_out = ${ARGV}[1];
my $working_dir = dirname($filename_in);

my $docno;
if ($filename_in =~ /networking/)
{
  $docno = "<pre>" .
           "Doc. no:  D???? " . $draft_info . "\n" .
           "Date:     2015-??-??\n" .
           "Revises:  N4370\n" .
           "Reply-To: Christopher Kohlhoff &lt;chris\@kohlhoff.com&gt;\n" .
           "</pre>";
}
else
{
  $docno = "<pre>" .
           "Doc. no:  N4242 " . $draft_info . "\n" .
           "Date:     2014-10-13\n" .
           "Revises:  N4046\n" .
           "Reply-To: Christopher Kohlhoff &lt;chris\@kohlhoff.com&gt;\n" .
           "</pre>";
}

my @lines = ();
my $saw_h4 = 0;

open my $file_in, "<$filename_in" or die "Can't open $filename_out";
while (my $line = <$file_in>)
{
  $line =~ s~\<head\>~\<head\>\n$style\n~;
  $line =~ s~\<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"\>~\<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"\>\n$docno\n~;
  $line =~ s/\240/ /g;
  if ($line =~ /<h4>/)
  {
    $line =~ s/<h4>/<p class="tablecaption">/;
    $saw_h4 = 1;
  }
  if ($saw_h4 and $line =~ /<\/h4>/)
  {
    $line =~ s/<\/h4>/<\/p>/;
    $saw_h4 = 0;
  }
  if ($line =~ /<div class="sidebar"><p>/)
  {
    $line =~ s/<div class="sidebar"><p>/<div class="sidebar"><p class="sidebar">/;
  }
  if ($line =~ /<img src="([^"]*)"/)
  {
    my $png_file = $working_dir . "/" . $1;
    my $png_data = read_file($png_file);
    my $img_data = encode_base64($png_data);
    $img_data =~ s/\n//g;
    $line =~ s/<img src="([^"]*)"/<img style="width:60%;" src="data:image\/png;base64,$img_data"/;
  }
  push @lines, $line;
}
close $file_in;

open my $file_out, ">$filename_out" or die "Can't open $filename_out";
foreach my $line (@lines)
{
  print $file_out $line;
}
close $file_out;
