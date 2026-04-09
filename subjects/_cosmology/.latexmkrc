# Local latexmk config for the cosmology subrepo.

use File::Basename qw(dirname);
use File::Spec;

# Absolute path to the workspace root (the parent mathphys_notes folder).
my $project_root = File::Spec->rel2abs(dirname(dirname(dirname(__FILE__))));

# Let TeX find shared files anywhere under the workspace.
$ENV{'TEXINPUTS'} = "$project_root//:";

# Default to pdfLaTeX.
$pdf_mode = 1;

# Build from the directory containing the main .tex file.
$do_cd = 1;

# Put build artifacts in an out/ folder next to the root file.
$out_dir = 'out';
$aux_dir = 'out';