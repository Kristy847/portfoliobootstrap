#!/usr/bin/perl
use warnings;
use strict;

# This code will read the names of the files in the directory of my choice.


my $dir = 'C:\Users\krist\Desktop\perl\Perl_B';

opendir (DIR, $dir) or die $!;

while (my $file = readdir(DIR)) {
	print "$file\n";
	}
	
	close(DIR);
	

	
	