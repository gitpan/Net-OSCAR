package Net::OSCAR::Callbacks;
BEGIN {
  $Net::OSCAR::Callbacks::VERSION = '1.926_001';
}
use strict;
use warnings;
use vars qw($connection $snac $conntype $family $subtype $data $reqid $reqdata $session $protobit %data);
sub {

my $type = "delete";
%data = protoparse($session, "buddylist_change")->unpack($snac->{data});

foreach my $change (@{$data{changes}}) {
	$connection->log_print_cond(OSCAR_DBG_DEBUG, sub { "Buddylist change $type:\n", Data::Dumper::Dumper($change) });
	if($type eq "delete") {
		Net::OSCAR::_BLInternal::blentry_clear($session, %$change);
	} else {
		Net::OSCAR::_BLInternal::blentry_set($session, %$change);
	}
}


};
