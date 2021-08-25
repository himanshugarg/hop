use strict;
use warnings;

sub factorial {
  my ($k) = @_;
  
  if ($k == 1) {
    return $k 
  } else {
    return $k * factorial($k-1);
  }
}

if ($#ARGV != 0) {
  print "usage: $0 number\n";
} else {
  print factorial(int($ARGV[0])) . "\n";
}
