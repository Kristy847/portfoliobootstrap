#!/usr/bin/perl
use warnings;
use strict;

# If the file is there and will open a statement 
#will be made, "File $filename opened successfully!"
 
my $filename = 'C:\Users\krist\Desktop\perl\testOpen.txt';
 
open(FH, '<', $filename) or die $!;
 
print("File $filename opened successfully!\n");
 
close(FH);