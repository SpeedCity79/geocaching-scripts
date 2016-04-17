#!/usr/pkg/bin/perl

for my $x (100..999) {
 for my $y (100..999) {
  print "x=$x, y=$y\n" if $x+$y == 1249;
 }
}
