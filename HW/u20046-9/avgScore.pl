#!/usr/bin/perl
open (FILE, "@ARGV");
@filelines = <FILE>;

$firstline = shift(@filelines);
chomp($firstline);
printf "%s\t총점\t평균\n", $firstline;
$n = scalar(split(/\t/, $firstline))-2;
for ($i=0; $i<$n; $i++) {
	@scores[$i] = 0;
}
$cnt = 0;
foreach $line (@filelines) {
	$cnt++;
	chomp($line);
	@words = split(/\t/, $line);
	printf "%d\t%s\t", shift(@words), shift(@words);
	$sum = 0;
	for ($i=0; $i<$n; $i++) {
		printf "%d\t", $words[$i];
		$scores[$i] += $words[$i];
		$sum += $words[$i];
	}
	printf "%d\t%.1f\n", $sum, $sum/$n;
}
printf "\t\t";
foreach $score (@scores) {
	printf "%.1f\t", $score/$cnt;
}
printf "\n";
