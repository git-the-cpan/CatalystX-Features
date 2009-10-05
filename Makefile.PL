
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'CatalystX-Features',
  NAME      => 'CatalystX::Features',
  AUTHOR    => 'Rodrigo\ de\ Oliveira\ \<rodrigolive\@gmail\.com\>',
  ABSTRACT  => 'Merges\ external\ application\ directories\ into\ your\ app\.',
  VERSION   => '0.13',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Test::More" => '0.9',
    "FindBin" => '0',
    "Path::Class" => '0',
    "Catalyst" => '5.7015',
    "Moose" => '0',
    "Carp" => '0',
  },
);
