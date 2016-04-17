#!/usr/pkg/bin/perl -w
use strict;

# A * F + E = 8
# G + B + D = 20
# (I + H) / C = 1
# A + G + I = 13
# (F * B) / H = 8
# E * D - C = 10


for my $a (1..9) {
for my $b (1..9) {
for my $c (1..9) {
for my $d (1..9) {
for my $e (1..9) {
for my $f (1..9) {
for my $g (1..9) {
for my $h (1..9) {
for my $i (1..9) {

next unless $a * $f + $e == 8;
next unless $g + $b + $d == 20;
next unless ($i + $h) / $c == 1;
next unless $a + $g + $i == 13;
next unless $f * $b / $h == 8;
next unless $e * $d - $c == 10;
print "$a $b $c $d $e $f $g $h $i\n";
}}}}}}}}}
