#!/usr/pkg/bin/perl -w
use strict;

#I'm a grandfather and I have a 
# grandson who's as many days old as my son is in weeks old and 
# my grandson is as many months old as I am in years. 
# My son, grandson and I together are 140 years old. 
# How old am I in years? To find the Latitude add your answer
#to the last 3 digits. To get the longitude subtract your answer.

my ($GSONyears, $SONyears, $GPAyears);
my ($GSONmonths, $SONmonths, $GPAmonths);
my ($GSONweeks, $SONweeks, $GPAweeks);

for($GSONyears=0;$GSONyears<30;$GSONyears++) {
  for($SONyears=0;$SONyears<60;$SONyears++) {
    for($GPAyears=0;$GPAyears<90;$GPAyears++) {
next unless $GSONyears + $SONyears + $GPAyears == 140;
$GSONmonths = $GSONyears * 12;
next unless $GSONmonths == $GPAyears;
print "$GSONyears gson years, $SONyears son years, $GPAyears gpa years\n";
print $GSONyears * 365, " GSON days, ", $SONyears * 52, " SON weeks\n";
print "$GSONmonths gson months == $GPAyears gpa years\n";
    }
  }
}
