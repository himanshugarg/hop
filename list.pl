#!/usr/bin/perl
#
use strict;
use v5.10;

my @a = ('hello', ', ', 'world');
say $a[-1];

my @b = qw( hello , world );
say $b[1];

my ($wilma, $dino) = qw[flintstone];
say $wilma;
say $dino;


foreach my $e (@b) {
	$e = "\U$e";
}

print @b;
