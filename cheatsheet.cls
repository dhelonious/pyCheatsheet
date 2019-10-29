\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{cheatsheet}[2019/04/15 Simple cheatsheet class]

\LoadClass[landscape, 10pt]{article}

\RequirePackage{multicol}
\RequirePackage{calc}
\RequirePackage[margin=1cm]{geometry}
\RequirePackage{microtype}
\RequirePackage{enumitem}
\RequirePackage{xparse}
\RequirePackage{etoolbox}

% Package options
\DeclareOption{rules}{
  \setlength\columnseprule{0.25pt}
}
\DeclareOption*{\ClassWarning{cheatsheet}{Unknown option `\CurrentOption'}}
\ProcessOptions\relax

\AtBeginDocument{
  \raggedright
  \footnotesize
  \begin{multicols*}{3}
  % Multicol parameters:
  \setlength\premulticols{1pt}
  \setlength\postmulticols{1pt}
  \setlength\multicolsep{1pt}
  \setlength\columnsep{2pt}
}
\AtEndDocument{
  \end{multicols*}
}

% Turn off header and footer
\pagestyle{empty}

% Don't print section numbers
\setcounter{secnumdepth}{0}

% Redefine section commands to use less space
\RenewDocumentCommand{\section}{}{%
  \@startsection{section}{1}{0mm}%
    {-.5ex plus -.2ex minus -2ex}%
    {.5ex plus .2ex}%
    {\normalfont\large\bfseries}%
}
\RenewDocumentCommand{\subsection}{}{%
  \@startsection{subsection}{2}{0mm}%
    {-.5ex plus -.2ex minus -2ex}%
    {.5ex plus .2ex}%
    {\normalfont\small\bfseries}%
}
\RenewDocumentCommand{\subsubsection}{}{%
  \@startsection{subsubsection}{3}{0mm}%
    {-.5ex plus -.2ex minus -2ex}%
    {.5ex plus .2ex}%
    {\normalfont\footnotesize\bfseries}%
}

% Reduce parskip amount
\setlength\parindent{0pt}
\setlength\parskip{0pt plus 0.5ex}

% Reduce spacing of lists
\setlist[itemize]{
  nosep, nolistsep, leftmargin=*,
  before=\vspace{0.5ex}, after=\vspace{1ex}
}
\setlist[enumerate]{
  nosep, nolistsep, leftmargin=*,
  before=\vspace{0.5ex}, after=\vspace{1ex}
}

% Commands
\RenewDocumentCommand\title{m}{
  \begin{center}
    \textbf{\Large #1}
  \end{center}
}
\NewDocumentEnvironment{thincolumn}{O{10pt}}
  {\setlength\columnsep{#1}} % TODO: #2 necessary?
  {\setlength\columnsep{1pt}}

\endinput
