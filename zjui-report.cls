\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{senior-design}[2023-08-02 by Martin Zhong (zhongmartin@outlook.com) Template for ZJU-UIUC Senior Design Inividual Report]

\LoadClass[a4paper,12pt,oneside]{book}

\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{multirow}
\RequirePackage{indentfirst}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage[format=hang,font={small},labelfont={bf},labelsep={quad}]{caption}
\RequirePackage{amsmath, amssymb, amsfonts}  % for math spacing
\RequirePackage[margin=1in]{geometry} % page layout 1' margin
\RequirePackage{enumitem}
\RequirePackage{verbatim} % allows for verbatim text ignoring any TeX commands inside "verbatim" environment
\RequirePackage{listings}
\RequirePackage[dvipsnames,svgnames,table,xcdraw]{xcolor}
\RequirePackage[ruled,hangingcomment,nofillcomment,noend]{algorithm2e}% pseudo-code support
\RequirePackage[bottom]{footmisc}
\RequirePackage{float}
\RequirePackage{tcolorbox}
\RequirePackage{anyfontsize}
\RequirePackage{csquotes}
\RequirePackage[style=ieee]{biblatex}
\renewbibmacro*{date}{%
  \iffieldundef{year}
  {\bibstring{nodate}}
  {\printdate}}
\renewcommand{\bibname}{References}
\renewcommand\bibname{References}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{hyperref}
\RequirePackage{xurl}
\RequirePackage{setspace}
\RequirePackage[per-mode=symbol,inter-unit-product = \ensuremath{{}\cdot{}},mode=math]{siunitx}
% \DeclareSIPrefix\micro{\text{\textmu}}{-3} % typing SI Units, not necessary for default LMC font
\onehalfspacing

\setenumerate[1]{
  itemsep=1em,partopsep=0pt,parsep=\parskip,topsep=5pt}
\setitemize[1]{
  itemsep=1em,partopsep=0pt,parsep=\parskip,topsep=5pt}
\setdescription{
  itemsep=1em,partopsep=0pt,parsep=\parskip,topsep=5pt}
\setlength{\topsep}{0ex} %列表到上下文的垂直距离

\titleformat{\chapter}
{\fontsize{16pt}{\baselineskip}\selectfont\bfseries}
{\thechapter}{1em}{}
\titlespacing{\chapter}{0pt}{0pt}{\baselineskip}

\titleformat{\section}
{\fontsize{14pt}{\baselineskip}\selectfont\bfseries}
{\thesection}{1em}{}

\titleformat{\subsection}
{\normalsize\bfseries}
{\thesubsection}{1em}{}

\titleformat{\subsubsection}
{\normalsize\bfseries}
{\thesubsubsection}{1em}{}

\pagestyle{fancy}\fancyhf{}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\fancypagestyle{plain}{
  \fancyhead[L]{\fontsize{9pt}{\baselineskip}\selectfont\MakeUppercase\GRPTTYPE}
  \fancyhead[R]{\fontsize{9pt}{\baselineskip}\selectfont\MakeUppercase\leftmark}
  \fancyfoot[C]{--\thepage--}}
\fancyhead[L]{\fontsize{9pt}{\baselineskip}\selectfont\MakeUppercase\RPTTYPE}
\fancyhead[R]{\fontsize{9pt}{\baselineskip}\selectfont\MakeUppercase\leftmark}
\fancyfoot[C]{--\thepage--}

\lstset{
  basicstyle=\small\ttfamily,
  numbers=left,
  numberstyle=\scriptsize,
  tabsize=4,
  breaklines,
  columns=fixed,
  keepspaces,
  commentstyle=\itshape\color{ForestGreen},
  keywordstyle=\color{Blue}\bfseries,
}
\newcommand\reporttitle[1]{\def\RPTTITLE{#1}}
\newcommand\reportdate[1]{\def\RPTDATE{#1}}
\newcommand\authornames[1]{\def\AUTHORNAME{#1}}
\newcommand\instructor[1]{\def\FACULTYNAME{#1}}
\newcommand{\HRule}{\rule{\linewidth}{0.1mm}}
\newcommand\reporttype[1]{\def\GRPTTYPE{#1}}
\newcommand\coursecode[1]{\def\COURSECODE{#1}}
\newcommand\coursename[1]{\def\COURSENAME{#1}}
\newcommand\logo[1]{\def\LOGOPATH{#1}}
\newcommand\name[2]{#1~\textsc{#2}}

\def\RPTTYPE{~}
\def\RPTTITLE{~}
\def\RPTDATE{~}
\def\AUTHORNAME{~}
\def\FACULTYNAME{~}
\def\COURSECODE{~}
\def\COURSENAME{~}


\newcommand\makecoverpage{
  \begin{titlepage}
    \center % Center everything on the page
    \includegraphics[width=0.6\linewidth]{\LOGOPATH}\\[1cm]
    \textsc{\Large\COURSECODE}\\[0.5cm] % heading course Number
    \textsc{\Large\COURSENAME}\\[0.5cm] % heading course name
    \textsc{\Large\GRPTTYPE}\\[1cm] % Minor heading
    \HRule \\[0.5cm]
    \huge \textbf{\MakeUppercase{\RPTTITLE}} % Title
    \HRule \\
    \vfill
    {\large\AUTHORNAME}
    \vfill
    {\large{\underline{\bf Instructor}}\\\FACULTYNAME}\\
    \vfill
    {\large \RPTDATE} % Date

  \end{titlepage}
}
