package DBIx::Class::StorageType;

use strict;
use warnings;
our $VERSION = '0.01';

use overload
    '""' => \&stringify
;

sub import {
    my $class = shift;
    caller->storage_type($class->new(shift));
}

sub new {
    my $class = shift;
    bless {type => shift || '::DBI'}, $class;
}

sub stringify {
    caller eq 'DBIx::Class::Schema::Loader' ? '::DBI' : shift->{type};
}

1;
__END__

=head1 NAME

DBIx::Class::StorageType -

=head1 SYNOPSIS

  use DBIx::Class::StorageType;

=head1 DESCRIPTION

DBIx::Class::StorageType is

=head1 AUTHOR

Ryuta Kamizono E<lt>kamipo@gmail.comE<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
