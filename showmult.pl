#!/usr/pkg/bin/perl -w
use strict;

my($a1, $a2) = @ARGV;
my @m1 = split //, $a1;
my @m2 = split //, $a2;

my @carry = ();
my @r = ();
my $indent = 0;
for my $m2 (reverse @m2) {
  my $carry = 0;
  for my $m1 (reverse @m1) {
    my $res = $m1 * $m2 + $carry;
    #print "Result of $m1 * $m2 + $carry = $res\n";
    if ($res > 10) {
      $carry = int($res / 10);
      push @carry, $carry;
      $res -= $carry * 10;
      #print "R = $res, carry = $carry\n";
    } else {
      #print "R = $res\n";
      $carry = 0;
    }
    push @r, $res;
  }
  print "Carry -> " . join("", reverse @carry) . "\n";
  print "R -> " . join("", reverse @r) . ($indent ? "0" x $indent : "") . "\n";
  @carry = ();
  @r = ();
  ++$indent;
  print "\n";
}
