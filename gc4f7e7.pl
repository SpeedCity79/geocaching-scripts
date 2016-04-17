#!/usr/pkg/bin/perl -w
use strict;

my @name = ('zero', 'one', 'two', 'three', 'four', 'five',
  'six', 'seven', 'eight', 'nine', 'ten');

sub numof {
  my $letter = shift;
  my $number = shift;
  my $str = $name[$number];
  return scalar grep /$letter/, split(//,$str);
}

my $numi = 0;
my $nums = 0;
my $nume = 0;

for($numi = 4; $numi < 10; $numi++) {
  for($nums = 6; $nums < 10; $nums++) {
    for($nume = 1; $nume < 10; $nume++) {
      if ($numi == 4 + numof('i', $numi) + numof('i', $nums) + numof('i', $nume) &&
          $nums == 6 + numof('s', $numi) + numof('s', $nums) + numof('s', $nume) &&
          $nume == 1 + numof('e', $numi) + numof('e', $nums) + numof('e', $nume) ) {
            print "Got: $numi i's, $nums s's, $nume e's\n";
      }
    }
  }
}
