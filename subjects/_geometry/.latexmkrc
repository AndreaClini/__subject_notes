# Resolve from this file, not from latexmk's process working directory.
# This avoids accidentally requiring the subject-level file twice and ensures
# command-line and editor builds share the same out/ cache.
use File::Basename qw(dirname);
use File::Spec;

my $geometry_config_dir = File::Spec->rel2abs(dirname(__FILE__));
require File::Spec->catfile($geometry_config_dir, '..', '..', '.latexmkrc');
