use strict;
use warnings;

sub binary {
  my ($k) = @_;
  
  if ($k == 0 || $k == 1) {
    return $k 
  } else {
    return binary(int($k/2)) . ($k % 2);
  }
}

if ($#ARGV != 0) {
  print "usage: $0 number\n";
} else {
  print binary(int($ARGV[0])) . "\n";
}
