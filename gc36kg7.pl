#!/usr/pkg/bin/perl -w
use strict;

# generate prolog for little monster sudoku

for(my $row=1; $row <= 12; ++$row) {
 for(my $col=1; $col <= 12; ++$col) {
  print "between(1,12,R${row}C${col}),";
 }
}
print "\n";
