use strict;
use warnings;

sub hanoi {
  my ($n, $start, $end, $extra, $move_disk) = @_;
  
  if ($n == 1) {
    $move_disk->($n, $start, $end);
  } else {
    hanoi($n-1, $start, $extra, $end, $move_disk);
    $move_disk->($n, $start, $end);
    hanoi($n-1, $extra, $end, $start, $move_disk);
  }
}

sub print_instruction {
  my ($n, $from, $to) = @_;
  print "Move $n from $from to $to.\n";
}

if ($#ARGV != 0) {
  print "usage: $0 number\n";
} else {
  hanoi(int($ARGV[0]), 1, 3, 2, \&print_instruction);
}
