#!/usr/bin/perl
use warnings;
use strict;
=begin comment

This code will read the names of the files in the directory of my 
choice, and with the file extention .txt.


=end comment

=cut

my $dir = 'C:\Users\krist\Desktop\perl\Perl_A';

opendir (DIR, $dir) or die $!;

while (my $file = readdir(DIR)) {
	
	
# Use a regular expression to find files ending in .txt
        next unless ($file =~ m/\.txt$/);

	print "This part of the code will only print .txt file names; $file\n";
	
	
	
	}
	
	close(DIR);

	