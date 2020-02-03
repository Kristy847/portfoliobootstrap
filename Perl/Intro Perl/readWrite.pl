#!/usr/bin/perl
use warnings;
use strict;


# This is a very basic script. It will first write what is written in the $str variable to a txt file. If the txt 
#file does not exist it will be created.


my $str = <<END;
This is the text that is written by
Kristy McCoy and will be prnted into a 
text file. It will also be in the same 
formate as I have typed.
END
 
my $filename = 'C:\Users\krist\Desktop\perl\writeFile.txt';

# open filehandle 
open(FH, '>', $filename) or die $!;
 
print FH $str;
 
close(FH);
 
print "Writing to file successfully!\n";


# The second part of the script. A file will be read and written to another text file. 
 
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
 

close(SRC);
close(DES);
 
print "File content copied successfully!\n";