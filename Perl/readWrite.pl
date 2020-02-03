#!/usr/bin/perl
use warnings;
use strict;
 
my $src = 'C:\Users\krist\Desktop\perl\Interesting Facts.txt';
my $des = 'C:\Users\krist\Desktop\perl\Interesting Facts2.txt';
 
# open source file for reading
open(SRC,'<',$src) or die $!;
 
# open destination file for writing
open(DES,'>',$des) or die $!;
 
print("copying content from $src to $des\n");
 
while(<SRC>){
   print DES $_; 
}
 
# always close the filehandles
close(SRC);
close(DES);
 
print "File content copied successfully!\n";