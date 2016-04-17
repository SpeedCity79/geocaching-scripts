#!/usr/pkg/bin/perl

foreach my $a (qw(P S Q R D F A B)) {
  foreach my $b (qw(U E R H L P N O)) {
    foreach my $c (qw(Z C L P G A E S)) {
      foreach my $d (qw(Z G E W V O A S)) {
        foreach my $e (qw(L R E D S A T M)) {
          foreach my $f (qw(E O M S D L R N)) {
		my $word = "$a$b$c$d$e$f";
		print `grep -i ^$word\$ /usr/share/dict/words`;
          }
        }
      }
    }
  }
}
