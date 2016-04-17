#!/usr/pkg/bin/perl -w
use strict;

for my $star (0..9) {
 warn "Star -> $star\n";
 for my $triangle (0..9) {
  	next if $triangle == $star;
  for my $square (0..9) {
	next if $square == $triangle or $square == $star;
   for my $smile (0..9) {
	next if $smile == $square or $smile == $triangle or $smile == $star;
    for my $pacman (0..9) {
	next if $pacman == $smile or $pacman == $square or $pacman == $triangle or $pacman == $star;
     for my $lightning (0..9) {
	next if $lightning == $pacman or $lightning == $smile or $lightning == $square or $lightning == $triangle or $lightning == $star;
      for my $cube (0..9) {
	next if $cube == $lightning or $cube == $pacman or $cube == $smile or $cube == $square or $cube == $triangle or $cube == $star;
       for my $plus (0..9) {
	next if $plus == $cube or $plus == $lightning or $plus == $pacman or $plus == $smile or $plus == $square or $plus == $triangle or $plus == $star;
        for my $cyl (0..9) {
	next if $cyl == $plus or $cyl == $cube or $cyl == $lightning or $cyl == $pacman or $cyl == $smile or $cyl == $square or $cyl == $triangle or $cyl == $star;
         for my $pent (0..9) {
	next if $pent == $cyl or $pent == $plus or $pent == $cube or $pent == $lightning or $pent == $pacman or $pent == $smile or $pent == $square or $pent == $triangle or $pent == $star;
my $n1 = "${star}${triangle}${square}";
my $n2 = "${smile}${pacman}";
my $n3 = "${lightning}${cube}";
next if $n2 == 0;
next unless $n1 / $n2 == $n3;
my $n4 = "${plus}${cyl}${lightning}";
my $n5 = "${plus}${pent}";
my $n6 = "${pent}${pent}${smile}";
next unless $n4 - $n5 == $n6;
my $n7 = "${pent}${triangle}${plus}";
my $n8 = "${cube}${pent}";
my $n9 = "${pent}${plus}${star}";
next unless $n7 + $n8 == $n9;

next unless $n1 - $n4 == $n7;
next unless $n2 - $n5 == $n8;
next unless $n3 + $n6 == $n9;

print "A = " . ($pent - $triangle + $cyl + $lightning) . "\n";
print "B = " . ($star - $square + $pent + $lightning) . "\n";
print "C = " . ($lightning + $pacman + $lightning - $star) . "\n";
print "D = " . ($pacman - $smile - $cyl) . "\n";
print "E = " . ($cube + $plus - $cyl) . "\n";
print "F = " . ($smile + $triangle - $star + $cyl) . "\n";
print "G = " . ($lightning + $plus - $cube - $lightning) . "\n";
print "H = " . ($star + $smile - $pacman - $plus) . "\n";
         }
        }
       }
      }
     }
    }
   }
  }
 }
}
