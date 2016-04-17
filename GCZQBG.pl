#!/usr/pkg/bin/perl

my $l = 1;
my $m = 1;
my $n = 1;
my $o = 1;
my $p = 1;
my $q = 1;
my $r = 1;
my $s = 1;
my $t = 1;

for $l (1..9) {
  warn "l -> $l ...\n";
 for $m (1..9) {
	next if $m == $n;
  warn "\tm -> $m ...\n";
  for $n (1..9) {
	next if $n == $m or $n == $l;
	#warn "\t\tn -> $n ...\n";
   for $o (1..9) {
	next if $o == $n or $o == $m or $o == $l;
    for $p (1..9) {
	next if $p == $o or $p == $n or $p == $m or $p == $l;
     for $q (1..9) {
	next if $q == $p or $q == $o or $q == $n or $q == $m or $q == $l;
      for $r (1..9) {
	next if $r == $q or $r == $p or $r == $o or $r == $n or $r == $m or $r == $l;
       for $s (1..9) {
	next if $s == $r or $s == $q or $s == $p or $s == $o or $s == $n or $s == $m or $s == $l;
        for $t (1..9) {
	next if $t == $s or $t == $r or $t == $q or $t == $p or $t == $o or $t == $n or $t == $m or $t == $l;
		next unless $n + $t == 15;
	  if ($l * 100000 + $m * 10000 + $n * 1000 + $o * 100 + $p * 10 + $q +
              $o * 100000 + $l * 10000 + $r * 1000 + $s * 100 + $t * 10 + $m == 502111) {
		print "l = $l, m = $m, n = $n, o = $o, p = $p, q = $q, r = $r, s = $s, t = $t\n";
		print "N 43 05.${s}${o}${q} W 077 2${m}.${p}${p}${o}\n";
		print "\n";
		#exit 0;
	  }
	}
       }
      }
     }
    }
   }
  }
 }
}
