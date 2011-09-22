#!/usr/bin/perl
use Google::Spreadsheet::Agent::Runner;
use Getopt::Std;

my $usage = $0.' [-d]'."\n-d prints out verbose messages\n";
my %opts;
getopts('d', \%opts);

my $debug = $opts{d};

my $agent_runner = Google::Spreadsheet::Agent::Runner->new(
                                                           debug => $debug
                                                           );
$agent_runner->run;
exit;
