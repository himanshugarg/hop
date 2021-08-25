use strict;
use warnings;

sub dirwalk {
  my ($d, $todo) = @_;
  my ($total) = $todo->($d);
  
  if (-f $d) {
    return $total;
  } else {
    my $dir;
    unless (opendir($dir, $d)) {
      warn "Couldn't open $d: $!; skipping.\n";
      return $total;
    }
    while (my $file = readdir($dir)) {
      next if $file eq '.' || $file eq '..';
      $total += dirwalk("$d/$file", $todo);
    }
    return $total;
  }
}

sub instruction {
  my ($d) = @_;
  return -s $d;
}

if ($#ARGV != 0) {
  print "usage: $0 <dirname>\n";
} else {
  print dirwalk($ARGV[0], \&instruction);
}
