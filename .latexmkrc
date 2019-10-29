use warnings;
use strict;
use utf8;

our @default_files = ("Cheatsheet.tex");
our $pdflatex = "lualatex -interaction=nonstopmode -halt-on-error -file-line-error -synctex=1 %O %S";
our $pdf_mode = 1;
our $out_dir = "build/";
