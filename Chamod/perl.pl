use strict;
use File::Find;

my $file;
my @directories  = qw( / );
my @files = getFiles(\@directories,);

sub getFiles{
    my $dirs = shift;
    my @files;
    my $want = sub {
        -f && /\.conf\E$/ && push @files, $File::Find::name
    };
    find($want, @{$dirs});
    @files
}

foreach $file (@files) {
   print "$file\n";
}