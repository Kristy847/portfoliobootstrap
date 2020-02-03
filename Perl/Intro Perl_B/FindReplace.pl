#!/usr/bin/perl
use warnings;
use strict;

my $src = 'C:\Users\krist\Desktop\perl\Interesting Facts FindReplace.txt';
my $bak = 'C:\Users\krist\Desktop\perl\Interesting Facts FindReplace_original.bak';


# open source file for reading
open(SRC,'<',$src) or die $!;
 
# open backup file for writing
open(BAK,'>',$bak) or die $!;
 
while(<SRC>){
   print BAK $_; 
}
 
close(SRC);
close(BAK);
 
print "Copy of the original file has been made to $bak\n";


# open source file for reading, save file lines, and close source file
open(SRC,'<',$src) or die $!;
my @lines = <SRC>;

close(SRC);
 
# find all the the's in a file that have a space in front and a space at the end. Then replace those the's with ABCD

foreach(@lines) {
	$_ =~ s/ the / ABCD /i;
	
}
foreach(@lines) {
	$_ =~ s/the /ABCD /i;
	
}

my $des = 'C:\Users\krist\Desktop\perl\Interesting Facts FindReplace2.txt';
# open destination file for writing, print line in file and replace (the) with ABCD
open(DES,'>',$des) or die $!;

print DES @lines; 
 
close(DES);
 
print "Modified find/replace file successfully made!\n";