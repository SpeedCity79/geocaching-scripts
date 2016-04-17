#!/usr/pkg/bin/perl -w
use strict;

# feed output into http://www.calormen.com/jslogo/

my $lastdir='up';
while (<>) {
  chomp;
  my @pieces = split / /, $_;
  foreach my $dir (@pieces) {
	if ($dir =~ /right/i) {
		if ($lastdir =~ /right/i) {
			print "forward 20\n";
		} elsif ($lastdir =~ /left/i) {
			print "left 180\nforward 20\n";
		} elsif ($lastdir =~ /up/i) {
			print "right 90\nforward 20\n";
		} elsif ($lastdir =~ /down/i) {
			print "left 90\nforward 20\n";
		}
	} elsif ($dir =~ /left/i) {
		if ($lastdir =~ /right/i) {
			print "left 180\nforward 20\n";
		} elsif ($lastdir =~ /left/i) {
			print "forward 20\n";
		} elsif ($lastdir =~ /up/i) {
			print "left 90\nforward 20\n";
		} elsif ($lastdir =~ /down/i) {
			print "right 90\nforward 20\n";
		}
	} elsif ($dir =~ /up/i) {
		if ($lastdir =~ /right/i) {
			print "left 90\nforward 20\n";
		} elsif ($lastdir =~ /left/i) {
			print "right 90\nforward 20\n";
		} elsif ($lastdir =~ /up/i) {
			print "forward 20\n";
		} elsif ($lastdir =~ /down/i) {
			print "right 180\nforward 20\n";
		}
	} elsif ($dir =~ /down/i) {
		if ($lastdir =~ /right/i) {
			print "right 90\nforward 20\n";
		} elsif ($lastdir =~ /left/i) {
			print "left 90\nforward 20\n";
		} elsif ($lastdir =~ /up/i) {
			print "left 180\nforward 20\n";
		} elsif ($lastdir =~ /down/i) {
			print "forward 20\n";
		}
	}
	$lastdir = $dir;
  }
}
