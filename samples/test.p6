#!/usr/bin/perl6
use v6;
class Attr {
    has Bool $.done is rw ;
method set_bool( Bool $value) {
    $.done = $value;
}
method get_bool() {
    return $.done    
}

}
class Prop is Attr {
}

 my $v = Attr.new;
 say $v ~~ Attr;
 my $p = Prop.new;
 say $p.perl;
 say $v.methods(:local).join(', ');

