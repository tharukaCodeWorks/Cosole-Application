#!/usr/bin/perl -w

opendir(DIR, "/");
@files = grep(/\.conf$/,readdir(DIR));
closedir(DIR);

foreach $file (@files) {
   print "$file\n";
}
