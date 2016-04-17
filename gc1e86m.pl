#!/usr/pkg/bin/perl -w
use strict;


foreach my $n (1..9) {
foreach my $p (1..9) {
next if $p == $n;
foreach my $q (1..9) {
next if $q == $n or $q == $p;
foreach my $r (1..9) {
next if $r == $q or $r == $p or $r == $n;
foreach my $s (1..9) {
next if $s == $r or $s == $q or $s == $p or $s == $n;
foreach my $t (1..9) {
next if $t == $s or $t == $r or $t == $q or $t == $p or $t == $n;
foreach my $u (1..9) {
next if $u == $t or $u == $s or $u == $r or $u == $q or $u == $p or $u == $n;
foreach my $v (1..9) {
next if $v == $u or $v == $t or $v == $s or $v == $r or $v == $q or $v == $p or $v == $n;
foreach my $w (1..9) {
next if $w == $v or $w == $u or $w == $t or $w == $s or $w == $r or $w == $q or $w == $p or $w == $n;
 my $x = int(($n * ($p *10 + $q) + ($r / $s)) / (($t * 10 + $u) + ($v / $w)));
if ($x == 50) {
print "x == $x, N=$n, P=$p, Q=$q, R=$r, S=$s, T=$t, U=$u, V=$v, W=$w\n";
print "N 39 $t$q.$q$v$n W 84 $t$p.$p$q$u\n";
}
} } } } } } } } }
