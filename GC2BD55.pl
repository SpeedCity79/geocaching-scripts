#!/usr/pkg/bin/perl -w
use strict;

my @caches = ('Tea for Two', 'Hop, Skip, and a Jump', 'Possibilities',
	'Are You Ready');
my @cachers = ('Butterfingers', 'Distractagirl', 'Captain Obvious', 
	'All Alone');
my @tools = ('hockey stick', 'rope', 'pulley', 'monkey');
my @areas = ('ravine', 'pond', 'tree', 'cave');

foreach my $c (@caches) {
foreach my $p (@cachers) {
foreach my $t (@tools) {
foreach my $a (@areas) {
#1
next if $p eq 'Distractagirl' and $a eq 'ravine';
next if $p eq 'Distractagirl' and $a eq 'tree';
next if $t eq 'hockey stick' and $a eq 'tree';
#
#2
if ($t eq 'monkey') {
  next unless $c eq 'Tea for Two' or $c eq 'Are You Ready';
}
if ($t eq 'pulley') {
  next unless $c eq 'Tea for Two' or $c eq 'Are You Ready';
}
#
#3
next if $p eq 'All Alone' and $c eq 'Possibilities';
#
#4
if ($p eq 'All Alone') {
  next if $a eq 'tree';
  next if $t eq 'rope';
  next if $c eq 'Tea for Two';
} else {
  next unless $a eq 'tree' or $t eq 'rope' or $c eq 'Tea for Two';
}
#
#5
if ($t eq 'pulley') {
  next if $c eq 'Tea for Two' and $a eq 'tree';
}
#
#6
if ($c eq 'Hop, Skip, and a Jump' or $c eq 'Tea for Two') {
  next if $a eq 'cave' or $a eq 'tree';
}
#
#7
if ($c eq 'Are You Ready') {
  next unless $p eq 'Captain Obvious' or $p eq 'Butterfingers';
}
#
#8
if ($p eq 'Butterfingers') {
  next if $t eq 'monkey';
  next if $a eq 'pond';
  next if $a eq 'cave';
}
if ($t eq 'monkey') {
  next if $a eq 'pond' or $a eq 'cave';
}
#
#9
if ($p eq 'Distractagirl') {
  next if $t eq 'monkey';
  next if $a eq 'ravine';
  next if $a eq 'pond';
}
if ($t eq 'monkey') {
  next if $a eq 'ravine' or $a eq 'pond';
}
#
      print "At $c with $p using $t in a $a\n";
}
}
}
}
