#!/usr/bin/perl -w
use strict;
use utf8;
use v5.10;
binmode STDOUT, ":encoding(UTF-8)";

say 2_5_5;
say 0o377;
say 0xff;
say 0b11111111;

say "\N{SNOWMAN}\n";

say 5.1 - 2.4;
say 10.2/0.3;
say 10/3;

say "\x{2668}";

