#!/usr/pkg/bin/perl -w
use strict;

my @q = ();
my @a = ();

my ($a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $a10);

for($a1=1; $a1 <= 5; ++$a1) {
for($a2=1; $a2 <= 5; ++$a2) {
for($a3=1; $a3 <= 5; ++$a3) {
for($a4=1; $a4 <= 5; ++$a4) {
for($a5=1; $a5 <= 5; ++$a5) {
$a6 = 2;
for($a7=1; $a7 <= 5; ++$a7) {
for($a8=1; $a8 <= 5; ++$a8) {
for($a9=1; $a9 <= 5; ++$a9) {
for($a10=1; $a10 <= 5; ++$a10) {

$a[0] = 'empty';
$a[1] = $a1;
$a[2] = $a2;
$a[3] = $a3;
$a[4] = $a4;
$a[5] = $a5;
$a[6] = $a6;
$a[7] = $a7;
$a[8] = $a8;
$a[9] = $a9;
$a[10] = $a10;

#print "Generated: " . join(", ", @a) , "\n";
my $first1 = 0;
my $first2 = 0;
my $first4 = 0;
my $num1 = 0;
my $num4 = 0;
my $num5 = 0;

for my $i (1..10) {
  if (!$first1 && $a[$i] == 1) { $first1=$i }
  if (!$first2 && $a[$i] == 2) { $first2=$i }
  if (!$first4 && $a[$i] == 4) { $first4=$i }
  if ($a[$i] == 1) { ++$num1 }
  if ($a[$i] == 4) { ++$num4 }
  if ($a[$i] == 5) { ++$num5 }
}
#print "Counts: $first1 first1, $first2 first2, $first4 first4, $num1 1's, $num4 4's, $num5 5's\n";

next unless $a[2] == $first4;
#print "A2=$a[2] is the location of the first 4\n";
next unless $a[3] == $num4;
#print "A3=$a[3] is the number of 4's\n";
next unless $a[4] == $first1;
#print "A4=$a[4] is the location of the first 1\n";

next unless $a[5] == $num5;
#print "A5=$a[5] is the number of 5's\n";
next unless $a[8] == $num1;
#print "A8=$a[8] is the number of 1's\n";
next unless $a[9] == $first2;
#print "A9=$a[9] is the location of the first 2\n";

my $qisa = 0;
# Q=A has to happen within Q's 1-5, since A's are 1-5
for my $i (1..5) {
  if ($a[$i] == $i) { ++$qisa; }
}
next unless $qisa == 1;

my $numconsec = 0;
my $conseca = 0;
for my $i (2..10) {
  if ($a[$i-1] == $a[$i]) { ++$numconsec; $conseca = $a[$i] }
}

#print "Generated: " . join(", ", @a) , "\n";
#print "numconsec=$numconsec, a[1]=$a[1], conseca=$conseca\n";
next unless $numconsec == 1;
next unless $a[1] == $conseca;

print join(", ", @a) , "\n";

}}}}}}}}}
