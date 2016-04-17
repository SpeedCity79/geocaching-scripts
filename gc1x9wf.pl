#!/usr/pkg/bin/perl -w
use strict;

# orig = N36 01.324 W115 05.779 
# The latitude and a hint was entered into the hard disk. It was then
# erased. The longitude and a hint was then entered into the hard
# disk. This was then again erased and a new message entered. To get
# to the cache you are to find the twice erased information. The
# computer enters 1.00 volts as a binary "0" and 5.00 volts as a
# binary "1". The electronics then recognizes 1.0 +/- 0.30 volts as
# a binary "0" and 5.0 +/- 0.30 volts as a binary "1". Each erase
# process removes 95 % of the voltage in the memory sites. The data
# is encoded in binary ASCII. Each horizontal set of 8 bits represent
# one ASCII character

my $r1 = "";
my $r2 = "";
while (<DATA>) {
  chomp;
  my @bits = split / /, $_;
  my $latbinchar = "";
  my $longbinchar = "";
  foreach my $bit (@bits) {
	my $latbin = 0;
	my $longbin = 0;
    	if ($bit == 1.05) {
		$latbin=0; $longbin=0;
	} elsif ($bit == 5.05) {
		$latbin=0; $longbin=0;
	} elsif ($bit == 1.25) {
		$latbin=0; $longbin=1;
	} elsif ($bit == 5.25) {
		$latbin=0; $longbin=1;
	} elsif ($bit == 1.06) {
		$latbin=1; $longbin=0;
	} elsif ($bit == 5.06) {
		$latbin=1; $longbin=0;
	} elsif ($bit == 1.26) {
		$latbin=1; $longbin=1;
	} elsif ($bit == 5.26) {
		$latbin=1; $longbin=1;
	} 
    $latbinchar .= $latbin;
    $longbinchar .= $longbin;
  }
  # convert latbinchar and longbinchar to ascii
  #print pack("B8", $bitstr);
  $r1 .= pack("B8", $latbinchar);
  $r2 .= pack("B8", $longbinchar);
  #print pack("B8", $latbinchar), pack("B8", $longbinchar), "\n";
}
close DATA;
print "$r1\n$r2\n";

__DATA__
1.05 5.26 1.05 5.25 1.06 5.26 5.26 5.25 
1.05 5.05 5.26 1.26 5.05 1.05 1.06 1.26 
1.05 5.05 5.26 1.26 1.05 1.06 1.06 5.25 
1.05 5.05 5.26 5.25 1.05 5.25 1.05 1.25 
1.05 5.05 1.26 1.06 1.05 5.05 1.05 1.05 
1.05 5.05 5.26 1.26 5.05 5.05 5.05 5.06 
1.05 5.05 5.26 1.25 1.06 5.26 1.06 5.25 
1.05 5.05 5.26 5.06 1.25 1.25 5.26 5.06 
1.05 5.05 5.26 1.26 5.06 5.25 5.25 1.05 
1.05 1.05 5.26 1.26 1.05 5.25 5.25 5.06 
1.05 5.06 5.25 5.26 1.25 5.06 1.06 1.06 
1.05 5.26 1.06 1.05 1.26 5.25 1.05 5.05 
1.05 5.26 5.26 5.05 1.25 1.26 5.25 1.26 
1.05 5.26 5.26 1.06 1.25 1.25 1.26 5.25 
1.05 5.26 5.26 5.05 1.25 1.06 5.25 5.26 
1.05 5.26 5.05 1.26 1.05 5.26 1.05 5.25 
1.05 5.26 1.26 1.25 5.06 5.05 1.05 5.05 
1.05 5.06 5.26 1.25 1.05 5.26 1.05 5.26 
1.05 5.26 1.05 1.06 5.05 5.25 1.26 5.05 
1.05 5.26 5.26 1.05 1.06 1.26 1.06 5.26 
1.05 5.26 5.26 1.05 5.05 1.25 5.05 5.26 
1.05 5.26 5.26 1.25 1.05 5.26 1.05 5.05 
1.05 5.26 5.05 5.05 1.26 1.06 5.05 5.26 
1.05 5.26 1.26 1.05 5.25 5.25 1.25 5.06 
1.05 5.26 5.06 1.25 1.06 5.25 1.06 5.06 
1.05 5.26 1.26 5.05 1.25 1.06 5.05 5.06 
1.05 5.26 5.26 5.06 1.05 5.25 1.06 1.26 
1.05 5.26 5.05 5.25 1.05 1.25 5.05 1.06 
1.05 5.26 5.25 1.26 5.05 5.06 5.25 5.05 
1.05 5.26 5.26 1.05 5.05 5.26 5.05 1.26 
1.05 5.26 5.26 1.05 1.05 5.26 5.05 5.26 
1.05 5.05 5.26 1.05 1.05 5.05 1.05 5.05 
1.05 5.05 5.26 5.05 1.05 1.05 5.05 1.05 
