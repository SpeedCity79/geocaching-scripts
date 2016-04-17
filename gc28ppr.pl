#!/usr/pkg/bin/perl -w
use strict;

# prints out characters from inputted text in magic-square order
# based on:
# 16  3  2 13
#  5 10 11  8
#  9  6  7 12
#  4 15 14  1

my @line1=split //, <>;
my @line2=split //, <>;
my @line3=split //, <>;
my @line4=split //, <>;

print 	$line4[3],$line1[2],$line1[1],$line4[0],
	$line2[0],$line3[1],$line3[2],$line2[3],
	$line3[0],$line2[1],$line2[2],$line3[3],
	$line1[3],$line4[2],$line4[1],$line1[0],"\n";
