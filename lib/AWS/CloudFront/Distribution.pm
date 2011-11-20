
package AWS::CloudFront::Distribution;

use strict;
use warnings 'all';

sub new
{
  my ($class, %args) = @_;
  
  foreach(qw( domain s3_origin ))
  {
    die "Required param '$_' was not provided"
      unless $args{$_};
  }# end foreach()
  
  my $s = bless \%args, $class;
  $s->init();
  
  return $s;
}# end new()

sub id { shift->{id} }
sub status { shift->{status} }
sub last_modified_time { shift->{last_modified_time} }
sub domain { shift->{domain} }
sub s3_origin { shift->{s3_origin} }
sub caller_reference { shift->{caller_reference} }
sub comment { shift->{comment} }
sub enabled { shift->{enabled} }

1;# return true:

