
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'Merges external application directories into your app.',
  'AUTHOR' => 'Rodrigo de Oliveira <rodrigolive@gmail.com>',
  'BUILD_REQUIRES' => {},
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.30'
  },
  'DISTNAME' => 'CatalystX-Features',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'CatalystX::Features',
  'PREREQ_PM' => {
    'Carp' => '0',
    'Catalyst' => '5.80015',
    'Catalyst::Action::RenderView' => '0',
    'Catalyst::Plugin::ConfigLoader' => '0.25',
    'Catalyst::Plugin::Static::Simple' => '0.27',
    'Class::Inspector' => '0',
    'Config::General' => '0',
    'FindBin' => '0',
    'Moose' => '0',
    'Path::Class' => '0',
    'Test::More' => '0.9'
  },
  'VERSION' => '0.21',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



