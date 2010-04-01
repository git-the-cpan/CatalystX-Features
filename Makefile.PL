
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'CatalystX::Features',
                       'DISTNAME' => 'CatalystX-Features',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Rodrigo de Oliveira <rodrigolive@gmail.com>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'Merges external application directories into your app.',
                       'EXE_FILES' => [],
                       'VERSION' => '0.15',
                       'PREREQ_PM' => {
                                        'Test::More' => '0.9',
                                        'Catalyst::Plugin::Static::Simple' => '0.27',
                                        'FindBin' => '0',
                                        'Catalyst' => '5.80015',
                                        'Path::Class' => '0',
                                        'Moose' => '0',
                                        'Carp' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



