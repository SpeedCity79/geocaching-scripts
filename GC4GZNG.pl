#!/usr/pkg/bin/perl -w
use strict;

# feed output into http://www.calormen.com/jslogo/
###### update everything to account for new input format
#NNEESSWW 

sub turnsub {
  my ($lastdir, $newdir) = @_;
  # no change in direction
  return if $newdir eq $lastdir; 

  ## opposite direction
  if ( ($lastdir eq 'E' && $newdir eq 'W') or
       ($lastdir eq 'W' && $newdir eq 'E') or
       ($lastdir eq 'N' && $newdir eq 'S') or
       ($lastdir eq 'S' && $newdir eq 'N') ) {
    print "left 180\n"; 
    return;
  }

  ## right-wards
  if ( ($lastdir eq 'N' && $newdir eq 'E') or
       ($lastdir eq 'E' && $newdir eq 'S') or
       ($lastdir eq 'S' && $newdir eq 'W') or
       ($lastdir eq 'W' && $newdir eq 'N') ) {
    print "right 90\n";
    return;
  }

  ## left-wards
  if ( ($lastdir eq 'N' && $newdir eq 'W') or
       ($lastdir eq 'E' && $newdir eq 'N') or
       ($lastdir eq 'S' && $newdir eq 'E') or
       ($lastdir eq 'W' && $newdir eq 'S') ) {
    print "left 90\n";
    return;
  }
  warn "Unknown change: $lastdir to $newdir\n";
}

my $lastdir='N';
print "clearscreen\n";
while (<>) {
  chomp;
  my @pieces = split //, $_;
  foreach my $newdir (@pieces) {
    #print "Got: $newdir\n";
    if ($newdir eq 'U') {
      print "penup\n";
    } elsif ($newdir eq 'D') {
      print "pendown\n";
    } else {
      #warn "Calling turnsub($lastdir, $newdir)\n";
      turnsub($lastdir, $newdir);
      print "forward 20\n";
      $lastdir = $newdir;
    }
  }
}
