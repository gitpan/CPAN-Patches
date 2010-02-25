use strict;
use warnings;
use Module::Build::SysPath;

use 5.010;

my $builder = Module::Build::SysPath->new(
    module_name       => 'CPAN::Patches',
    license           => 'perl',
    dist_author       => 'Jozef Kutej <jkutej@cpan.org>',
    dist_version_from => 'lib/CPAN/Patches.pm',
    
    configure_requires => {
        'Module::Build::SysPath' => 0.13,
    },
    build_requires => {
        'Module::Build::SysPath' => 0.13,
        'Test::More'             => 0,
    },
    requires => {
        'Moose'                   => 0,
        'IO::Any'                 => 0,
        'Parse::Deb::Control'     => 0.03,
        'Dpkg::Version'           => 0,
        'Carp'                    => 0,
        'JSON::Util'              => 0,
        'Getopt::Long'            => 0,
        'Pod::Usage'              => 0,
        'List::MoreUtils'         => 0,
        'File::Basename'          => 0,
        'File::Path'              => 2.01,
        'Storable'                => 0,
        'File::Copy'              => 0,
        'File::is'                => 0,
        'Path::Class'             => 0,
        'File::chdir'             => 0,
        'YAML::Syck'              => 0,
        'Scalar::Util'            => 0,
        'Storable'                => 0,
        'Test::Deep::NoTest'      => 0,
        'Dpkg::Version'           => 0,
    },
    script_files => [
        'script/cpan-patches',
        'script/cpan-patches-update-from-debian',
    ],
    add_to_cleanup => [ 'CPAN-Patches-*' ],
    create_readme  => 1,
    sign           => 1,
    meta_merge => {
        resources => {
            repository => 'git://github.com/jozef/CPAN-Patches.git',
            bugtracker => 'http://github.com/jozef/CPAN-Patches/issues',
        },
        keywords => [ qw/ cpan patch debian / ],
    },
);

$builder->create_build_script();