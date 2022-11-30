#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;
use utf8;
use v5.10;


my $a = <STDIN>;
chomp $a;

my $b = <STDIN>;
chomp $b;

say $a * $b;

