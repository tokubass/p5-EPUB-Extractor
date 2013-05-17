package EPUB::Extractor::File::Parser::Container;
use strict;
use warnings;
use Carp;
use base 'EPUB::Extractor::File::Parser';

sub new {
    my $class = shift;    

    my $self = $class->SUPER::new(@_);
    $self->set_namespace;

    return $self;
}

sub set_namespace {
    my $self = shift;
    my $container_ns  = $self->{doc}->documentElement()->getAttribute('xmlns');
    $self->{parser}->registerNs( container => $container_ns );
}

1;
