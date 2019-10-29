use strict;
use File::Find;

my @dir  = qw( / );
my @files = _get_files(\@dir);

sub _get_files{
    my $dirs = shift;
    my $what = shift;
    my @files;
    my $want = sub {
        -f && /\Q\.conf\E$/ && push @files, $File::Find::name
    };
    find($want, @{$dirs});
    @files
}
my $file;
foreach $file (@files) {
   print "$file\n";
}