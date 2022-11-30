#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;
use utf8;
use v5.10;


my $s = <STDIN>;
chomp $s;

my $n = <STDIN>;
chomp $n;

say "$s\n" x $n;
