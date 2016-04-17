#!/usr/pkg/bin/perl

# order of operations

for $a (12,2,21,8,1,18,11,7) {
 for $op1 ('+', '-', '*', '/') {
  for $b (6,23,19,9,24,4,3,13) {
   for $op2 ('+', '-', '*', '/') {
    for $c (20,17,22,10,14,15,5,16) {
     my $res = eval "$a $op1 $b $op2 $c";
     print "$a $op1 $b $op2 $c == $res\n" if $res == -60 or
	$res == 300 or $res == -51 or $res == 900 or $res == 234 or
	$res == -110 or $res == -96 or $res == 255;
     }
    }
   }
  }
}
