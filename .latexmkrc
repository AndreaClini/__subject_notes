# Workspace-wide latexmk config.

use File::Basename qw(dirname);
use File::Spec;

# Absolute path to the workspace root (directory containing this file).
my $project_root = File::Spec->rel2abs( File::Basename::dirname(__FILE__) );

# Let TeX find shared files (preamble, bib, etc.) anywhere under the workspace.
$ENV{'TEXINPUTS'} = "$project_root//:";

# Default: pdflatex (change to lualatex/xelatex if desired).
$pdf_mode = 1;

# Build from the directory containing the main .tex file so relative inputs work.
$do_cd = 1;

# Put build artifacts in an out/ folder next to the root file being built.
$out_dir = 'out';
$aux_dir = 'out';
