#!/usr/pkg/bin/perl


sub getsmall {
  my $in = shift;
  my @nums = split //, $in;
  my $new = join("", sort @nums);
  return $new;
}

sub getbig {
  my $in = shift;
  my @nums = split //, $in;
  my $new = join("", reverse sort @nums);
  return $new;
}

my $next = 0;
my $last = 170;
my $flagged = 0;

while (!$flagged && $next != $last) {
  my $next = getbig($last) - getsmall($last);
  if ($next == $last) {
	print "Found it: $next\n";
	$flagged = 1;
  }
  $last = $next;
  $next = 0;
}
