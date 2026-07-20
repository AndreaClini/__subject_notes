# Load the repository-wide configuration independently of the launch directory.
use File::Basename qw(dirname);
use File::Spec;

my $qft_config_dir = File::Spec->rel2abs(dirname(__FILE__));
require File::Spec->catfile($qft_config_dir, '..', '..', '.latexmkrc');
