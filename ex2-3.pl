#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;
use utf8;
use v5.10;


my $r = <STDIN>;
chomp $r;
if ($r < 0) {
	say 0;
} else {
	say 2 * 3.141592654 * $r;
}
