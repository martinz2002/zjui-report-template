% lab-report.cls

\ProvidesClass{lab-report}[2023/01/05 v1.0.2301060036 by Martin Zhong (zhongmartin@outlook.com) Lab Report Template for ZJU-UIUC Labs. All Rights Reserved.]
\LoadClass[utf8, a4paper, 12pt]{article}

\RequirePackage[scheme=plain]{ctex} % for Chinese support
\RequirePackage{booktabs}
\RequirePackage{indentfirst}
\RequirePackage{fancyhdr}
\RequirePackage{fontenc}
\RequirePackage{graphicx}
\RequirePackage{caption}
\RequirePackage{mathtools} % load AMS maths
\RequirePackage{amsmath}  % for math spacing
\RequirePackage{amssymb}  % for math symbols
\RequirePackage{lastpage}
\RequirePackage[margin=1.2in]{geometry} % an easy way to change page layout
\RequirePackage{enumitem}
\RequirePackage{gensymb}
\RequirePackage{verbatim} % allows for verbatim text ignoring any TeX commands inside "verbatim" environment
\RequirePackage{listings}
\RequirePackage{color}
\RequirePackage{hyperref}
% \RequirePackage{libertinus-otf}

\lstset{ % General setup for the package
    language=Perl,
    basicstyle=\small\sffamily,
    numbers=left,
    numberstyle=\tiny,
    frame=tb,
    tabsize=4,
    columns=fixed,
    showstringspaces=false,
    showtabs=false,
    keepspaces,
    commentstyle=\color{red},
    keywordstyle=\color{blue}
}

\setenumerate{itemsep=0pt, partopsep=0pt, parsep=\parskip, topsep=5pt}
\setitemize{itemsep=0pt, partopsep=0pt, parsep=\parskip, topsep=5pt}
\setdescription{itemsep=0pt, partopsep=0pt, parsep=\parskip, topsep=5pt}

% \setlength{\parskip}{1.2em} % 设置段落间距
\renewcommand{\baselinestretch}{1.5} % 设置行距

\everymath{\displaystyle}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[C]{}
\fancyhead[L]{\RPTPREFIX~\RPTNUMBER: \RPTTITLE}
\fancyhead[R]{\RPTDATE}
\fancyfoot[C]{\thepage/\pageref{LastPage}}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0.5pt}

\newcommand{\E}{\text{e}}
\renewcommand{\Re}{\text{Re}}
\renewcommand{\Im}{\text{Im}}
\newcommand\K{\text{k}} % kilo = 1000
\newcommand\U[1]{\text{#1}} % for including units in equations

\title{\textbf{\COURSECODE~\RPTPREFIX~\#\RPTNUMBER: \RPTTITLE}}
\date{\RPTDATE}
\def\RPTDATE{\today} % default report date is "today"
\input{../course-info.tex}  % input the macros
