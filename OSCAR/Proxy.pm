package Net::OSCAR::Proxy;

$VERSION = '1.00';
$REVISION = '$Revision: 1.3.6.6 $';

use strict;
use vars qw($VERSION $REVISION);

use Net::OSCAR::OldPerl;

sub use_socks {
	require Net::SOCKS or return -1;
	
}

1;

