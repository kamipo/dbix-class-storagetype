use inc::Module::Install;
name 'DBIx-Class-StorageType';
all_from 'lib/DBIx/Class/StorageType.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

build_requires 'Test::More';
use_test_base;
auto_include;
WriteAll;
