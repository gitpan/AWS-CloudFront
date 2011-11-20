
package AWS::CloudFront;

use VSO;

our $VERSION = '0.001';

has 'access_key_id' => (
  is        => 'ro',
  isa       => 'Str',
  required  => 1,
);

has 'secret_access_key' => (
  is        => 'ro',
  isa       => 'Str',
  required  => 1,
);

has 'secure' => (
  is        => 'ro',
  isa       => 'Int',
  required  => 0,
  lazy      => 1,
  default   => sub { 0 },
);

has 'ua' => (
  is        => 'ro',
  isa       => 'LWP::UserAgent',
  lazy      => 1,
  required  => 0,
  default => sub { LWP::UserAgent->new }
);


1;# return true:

=pod

=head1 NAME

AWS::CloudFront - Lightweight interface to Amazon CloudFront CDN

=head1 SYNOPSIS

  # TBD

=head1 DESCRIPTION

=head1 PUBLIC PROPERTIES

=head1 PUBLIC METHODS

=head1 AUTHOR

John Drago <jdrago_999@yahoo.com>

=head1 LICENSE AND COPYRIGHT

This software is Free software and may be used and redistributed under the same
terms as any version of perl itself.

Copyright John Drago 2011 all rights reserved.

=cut

