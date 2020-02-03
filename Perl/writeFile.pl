#!/usr/bin/perl
use warnings;
use strict;
 
my $str = <<END;
This is the text that is written by
Kristy McCoy and will be prnted into a 
text file. It will also be in the same 
formate as I have typed.
END
 
my $filename = 'C:\Users\krist\Desktop\perl\writeFile.txt';
 
open(FH, '>', $filename) or die $!;
 
print FH $str;
 
close(FH);
 
print "Writing to file successfully!\n";