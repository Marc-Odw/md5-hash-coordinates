#!/usr/bin/perl
# -*- coding: utf-8 -*-
#use strict;
use Digest::MD5 qw(md5_hex);
my $tofind = 'ac911f28463fe990363e133e30bb7774';
my $string;
for (my $north = 47000; $north <= 52999; $north++) {
  for (my $east = 46000; $east <= 49999; $east++) {
    $string = 'N 49° '.substr($north, 0, 2).'.'.substr($north, 2).'\' '.
              'E 8° '.substr($east, 0, 2).'.'.substr($east, 2).'\' '.
              'fuwo\'s Geburtstagscache';
    if (md5_hex($string) eq $tofind) {
      utf8::decode($string);
      print "$string\n";
      exit;
    }
  }
}
