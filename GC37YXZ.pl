#!/usr/pkg/bin/perl -w
use strict;

my $a = 0;
my $b = 0;
my $g = 0;
my $l = 0;
my $pch = 0;
my $pr = 0;
my $s = 0;

for $a (0..9) {
for $b (1..9) {
next if $b == $a;
for $g (1..9) {
next if $g == $b or $g == $a;
for $l (1..9) {
next if $l == $g or $l == $b or $l == $a;
for $pch (0..9) {
next if $pch == $l or $pch == $g or $pch == $b or $pch == $a;
for $pr (1..9) {
next if $pr == $pch or $pr == $l or $pr == $g or $pr == $b or $pr == $a;
for $s (1..9) {
next unless $pr * $g == $l;
next unless $b - $l == $s;
next unless $b - $l == $s;
next unless $pr * $pch == (10 * $s + $pr);
next unless (10 * $s + $a) - (10 * $s + $pr) == $s;
print "apple=$a, banana=$b, grapes=$g, lemon=$l, peach=$pch, pear=$pr, strawberry=$s\n";
print "  ${g}${pch} $s/$pr\n";
print "${pr}|${b}${a}\n";
print "  $l\n";
print "  ${s}${a}\n";
print "  ${s}${pr}\n";
print "    ${s}\n";
print "\n";
print "N 43 05." . ($a + $pr) . $pch . $g . " W 077 32." . ($b-$pch+1) . $s . $l . "\n";

} } } } } } }
