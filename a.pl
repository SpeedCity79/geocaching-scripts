#!perl
my $i=1;
for(my $i=1; $i < 26; $i++) {
  print chr(ord('A') + $i - 1) . "=" . $i . "\n";
}
