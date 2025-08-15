%=====================================================================
% Travis Hunter's Homework class, heavily derived from
% jhwhw.cls
% Provide cthhw.cls class
%=====================================================================

%=====================================================================
% Identification
%=====================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cthhw}[2025/08/15 Travis Hunter's Homework Class]

\LoadClass[letterpaper, 12pt]{report}
\RequirePackage{cthmath} % Personal math macros

\RequirePackage{fancyhdr}
\RequirePackage[top=1in,bottom=1in,left=1in,right=1in]{geometry}
\RequirePackage{graphicx}
\RequirePackage{empheq}
\RequirePackage{ifthen}
\RequirePackage{amsthm}
\RequirePackage{amsmath}
\RequirePackage{braket}
\RequirePackage{listings}



%=====================================================================
% Commands
%=====================================================================

\setlength{\headheight}{15pt}
\lhead{\@author}\chead{\@title}\rhead{\today}
\lfoot{}\cfoot{\thepage}\rfoot{}
\pagestyle{fancy}

\ifx\pdfoutput\undefined                         %LaTeX
\RequirePackage[ps2pdf,bookmarks=true]{hyperref}
\hypersetup{ %
	pdfauthor   = {\@author},
	pdftitle    = {\@title},
	pdfcreator  = {LaTeX with hyperref package},
	pdfproducer = {dvips + ps2pdf}
}
\else                                            %PDFLaTeX
\RequirePackage[pdftex,bookmarks=true]{hyperref}
\hypersetup{ %
	pdfauthor   = {\@author},
	pdftitle    = {\@title},
	pdfcreator  = {LaTeX with hyperref package},
	pdfproducer = {dvips + ps2pdf}
}
\pdfadjustspacing=1
\fi

% Set up counters for problems and subsections

\newcounter{ProblemNum}
\newcounter{SubProblemNum}[ProblemNum]

\renewcommand{\theProblemNum}{\arabic{ProblemNum}}
\renewcommand{\theSubProblemNum}{\alph{SubProblemNum}}


\newcommand*{\anyproblem}[1]{\newpage\subsection*{#1}}
\newcommand*{\problem}[1]{\stepcounter{ProblemNum} %
	\anyproblem{Problem \theProblemNum. \; #1}}
\newcommand*{\soln}[1]{\subsubsection*{#1}}
\newcommand*{\solution}{\soln{Solution}}
\renewcommand*{\part}{\stepcounter{SubProblemNum} %
	\soln{Part (\theSubProblemNum)}}

\renewcommand{\theenumi}{(\alph{enumi})}
\renewcommand{\labelenumi}{\theenumi}
\renewcommand{\theenumii}{\roman{enumii}}

