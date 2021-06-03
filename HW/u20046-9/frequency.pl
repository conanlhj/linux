#!/usr/bin/perl
%freq = ();
chomp($word = <STDIN>);
until ($word eq 'x') {
	$freq{$word} += 1;
	chomp($word = <STDIN>);
}
while (($key, $value) = each %freq) {
	printf "%s => %d\n", $key, $value;
}
