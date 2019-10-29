use strict;
use File::Find;

my @dirs  = qw( / );
my $exten = '.conf';
my @files = _get_files(\@dirs, $exten);

sub _get_files{
    my $dirs = shift;
    my $what = shift;
    my @files;
    my $want = sub {
        -f && /\Q$exten\E$/ && push @files, $File::Find::name
    };
    find($want, @{$dirs});
    @files
}
my $file;
foreach $file (@files) {
   print "$file\n";
}