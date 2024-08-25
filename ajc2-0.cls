% Everyone is permitted to copy and distribute verbatim or modified copies of this license document, and changing it is allowed as long as the name is changed.


% Author and Maintainer: Alexander Jacob (alexjacob@duck.com)

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ajc2-0}[by Alexander Jacob]

% Layout and so on
\LoadClass[a4paper,twoside,12pt]{article}
\RequirePackage[inner=3cm,outer=6cm,top=3cm,bottom=5cm,headheight=18pt]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage[explicit]{titlesec}
\RequirePackage{soul}
\RequirePackage{chngcntr}

\renewcommand{\sectionmark}[1]{\markboth{\MakeUppercase{#1}}{}}

\fancypagestyle{standardstyle}{
	\fancyheadoffset[roh,leh]{\dimexpr\marginparsep+\marginparwidth} % Left/right offset
	\fancyhead{} % Clear headers
	\fancyhead[LO]{\textcolor{gray}{\textsf{\rightmark}}} % Name of section at inner header
	\fancyhead[RE]{\textcolor{gray}{\textsf{\leftmark}}} % Name of section at inner header
	\fancyhead[LE,RO]{\large\thepage} % Pagenumber at outer header
	\fancyfoot{} % No footers
	\renewcommand{\headrulewidth}{0pt}} % No line

\fancypagestyle{sectionstyle}{
	\fancyhead{} % Clear headers
	\fancyfootoffset[roh,leh]{\dimexpr\marginparsep+\marginparwidth}
	\fancyfoot[LE,RO]{\large\thepage} % Pagenumber at outer footer
	\renewcommand{\headrulewidth}{0pt}} % No line

\newcommand{\sectionbreak}{\clearpage}

\titleformat{\section}
	{\sffamily\Large}{\textcolor{cyan}{\bfseries\Huge\selectfont\thesection\textcolor{gray}{\,$|$}}\quad \MakeUppercase{#1}}{.5em}{}[]
\titlespacing*{\section}
	{0pt}{1em}{2em}
\assignpagestyle{\section}{sectionstyle}
\titleclass{\section}{top}

\titleformat{\subsection}
	{\sffamily\large}{\thesubsection\,\quad \MakeUppercase{#1}}{.5em}{}[]
\titlespacing*{\subsection}
	{0pt}{1em}{0em}

\titleformat{\subsubsection}
	{\sffamily}{\thesubsubsection\,\quad \MakeUppercase{#1}}{.5em}{}[]
\titlespacing*{\subsubsection}
	{0pt}{1.5em}{0em}

\setlength{\parindent}{0cm}
\setlength{\parskip}{.5em}

\setcounter{tocdepth}{2}

\AddToHook{begindocument/end}{
	\newgeometry{left=2cm,right=2cm,top=4cm,bottom=4cm}
	\begin{titlepage}
		\centering
		{\scshape\LARGE Hochwald-Gymnasium Wadern \par}
		\vspace{1cm}
		{\scshape\Large Notizen und Hausaufgaben \par}
		\vspace{1.5cm}
		{\Huge\bfseries\textcolor{cyan}{\@title} \par}
		\vspace{2cm}
		{\Large\itshape \@author \par}
		\vfill
		{\large \@date \par}
	\end{titlepage}
	\pagenumbering{roman}
	\restoregeometry 
	\pagestyle{standardstyle}
	\tableofcontents
	\clearpage
	\pagenumbering{arabic}}

% PDF-details
\RequirePackage[pdftex,
                pdfauthor={Alexander Jacob},
                pdftitle={Notes},
                pdfcreator={Vorlage von AleJac},
                pdflang={de-DE},
                linktocpage,
                hidelinks]{hyperref}

% Math
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amsfonts}

\numberwithin{equation}{section}
\numberwithin{figure}{section}
\numberwithin{table}{section}

% German
\RequirePackage[T1]{fontenc}
\RequirePackage[ngerman]{babel}
\RequirePackage[ngerman]{cleveref}

% Tables
\RequirePackage{booktabs}

% Nice quotation marks
\RequirePackage{csquotes}

% Graphics
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{tikz}
	\usetikzlibrary{arrows.meta, chains}
\RequirePackage{pgf-pie}
\RequirePackage{MnSymbol}
\RequirePackage{pgfplots}
	\pgfplotsset{compat=1.18}
\RequirePackage[dvipsnames]{xcolor}

% Custom commands
\newcommand{\sidenote}[1]{\marginpar[\raggedleft\textcolor{gray}{#1}]{\raggedright\textcolor{gray}{#1}}}
\newcommand{\threevec}[3]{\left(\begin{array}{c} #1 \\ #2 \\ #3\end{array}\right)}
\renewcommand{\vec}[1]{\overrightarrow{#1}}

