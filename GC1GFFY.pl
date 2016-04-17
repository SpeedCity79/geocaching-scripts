#!/usr/pkg/bin/perl -w
use strict;

while (<>) {
  chomp;
  my @nums = split /-/, $_;
  foreach my $n (@nums) {
    print chr($n + 65 - 1);
  }
  print "\n";
}
