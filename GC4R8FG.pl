#!/usr/pkg/bin/perl -w
use strict;

for my $r1c1 (8) {
for my $r1c2 (1,2,3,5,9) {
for my $r1c3 (2,5) {
 next if $r1c3 == $r1c2;
for my $r1c4 (4) {
for my $r1c5 (1,2,5,9) {
 next if $r1c5 == $r1c3 or $r1c5 == $r1c2;
for my $r1c6 (6) {
for my $r1c7 (3,9) {
 next if $r1c7 == $r1c5 or $r1c7 == $r1c3 or $r1c7 == $r1c2;
for my $r1c8 (1,2,3,5,9) {
 next if $r1c8 == $r1c7 or $r1c8 == $r1c5 or $r1c8 == $r1c3 or $r1c8 == $r1c2;
for my $r1c9 (7) {
for my $r2c1 (2,3,6,7) {
for my $r2c5 (1,2,5,7,8,9) {
for my $r2c9 (1,3,6,8,9) {
for my $r3c3 (7) { # solved from red 32
for my $r3c5 (5,8,9) {
for my $r3c6 (3,5,8,9) {
 next if $r3c6 == $r3c5 or $r3c6 == $r3c3;
for my $r3c8 (3,5,7,8,9) {
 next if $r3c8 == $r3c6 or $r3c8 == $r3c5 or $r3c8 == $r3c3;
for my $r3c9 (3,8,9) {
 next if $r3c9 == $r3c8 or $r3c9 == $r3c6 or $r3c9 == $r3c5 or $r3c9 == $r3c3;

next unless 17 == $r1c2 + $r1c3 + $r2c1 + $r3c3;
next unless 27 == $r1c3 + $r1c5 + $r2c5 + $r3c3 + $r3c5;
next unless 27 == $r1c5 + $r1c7 + $r2c5 + $r3c5 + $r3c6;
next unless 25 == $r1c7 + $r1c8 + $r2c9 + $r3c8 + $r3c9;

for my $r4c7 (3,7,8,9) {
 next if $r4c7 == $r1c7;
for my $r5c4 (6,7,8,9) {
for my $r5c5 (7,8,9) {
 next if $r5c5 == $r5c4;
for my $r5c6 (6,7,8,9) {
 next if $r5c6 == $r5c5 or $r5c6 == $r5c4;
for my $r5c9 (6,8,9) {
 next if $r5c9 == $r5c6 or $r5c9 == $r5c5 or $r5c9 == $r5c4;

next unless 29 == $r3c3 + $r3c5 + $r5c4 + $r5c5;
next unless 34 == $r3c5 + $r3c6 + $r4c7 + $r5c5 + $r5c6;
next unless 29 == $r3c8 + $r3c9 + $r4c7 + $r5c9;

for my $r6c1 (2,3,6,7) {
for my $r6c3 (2,5,7,8) {
for my $r6c5 (1,2,5,7,8,9) {
for my $r6c9 (1,3,6,8,9) {
for my $r7c1 (2,3,6) {
for my $r7c3 (2,8) {
for my $r7c5 (2,8) {
for my $r7c7 (3,8) {

next unless 23 == $r6c1 + $r6c3 + $r7c1 + $r7c3;
next unless 33 == $r5c4 + $r5c5 + $r6c3 + $r6c5 + $r7c3 + $r7c5;
next unless 28 == $r5c5 + $r5c6 + $r6c5 + $r7c5 + $r7c7;
next unless 15 == $r5c9 + $r6c9 + $r7c7;

next unless 8 == $r7c1 + $r7c3;

for my $r8c9 (3,6,8) {
for my $r9c1 (3) {
for my $r9c4 (1,8,9) {
for my $r9c7 (8,9) {
for my $r9c8 (1,8) {

next unless 19 == $r7c3 + $r7c5 + $r9c4;
next unless 19 == $r7c5 + $r7c7 + $r9c7;
next unless 18 == $r7c7 + $r8c9 + $r9c7 + $r9c8;

print "8 $r1c2 $r1c3 4 $r1c5 6 $r1c7 $r1c8 7\n";
print "$r2c1 36 6 39 $r2c5 43 4 42 $r2c9\n";
print "4 1 7 2 $r3c5 $r3c6 6 $r3c8 $r3c9\n";
print "5 32 9 46 3 48 $r4c7 46 2\n";
print "1 2 3 $r5c4 $r5c5 $r5c6 5 4 $r5c9\n";
print "$r6c1 34 $r6c3 43 $r6c5 35 1 38 $r6c9\n";
print "$r7c1 5 $r7c3 7 $r7c5 1 $r7c7 9 4\n";
print "9 37 1 41 4 34 2 38 $r8c9\n";
print "3 7 4 $r9c4 6 2 $r9c7 $r9c8 5\n";

}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}
}}}}}
