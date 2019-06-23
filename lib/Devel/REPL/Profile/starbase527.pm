package Devel::REPL::Profile::starbase527;

our $VERSION = '0.1';

use Moose;
use namespace::autoclean;

with 'Devel::REPL::Profile';

extends 'Devel::REPL::Profile::Standard';

sub plugins {
	my @standard = $_[0]->SUPER::plugins;
	my @additionals = qw(
		DumpHistory
	);
	return (@standard, @additionals);
}

sub apply_profile {
	my ($self, $repl) = @_;
	$repl->load_plugin($_) for $self->plugins;
};

1;
__END__
