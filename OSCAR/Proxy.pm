package Net::OSCAR::Proxy;

$VERSION = '1.907';
$REVISION = '$Revision: 1.4.2.8 $';

use strict;
use vars qw($VERSION $REVISION);

sub use_socks {
	require Net::SOCKS or return -1;
	
}

1;

