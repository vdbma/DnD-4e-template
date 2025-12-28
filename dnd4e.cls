\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dnd4e}[2025/12/25 D&D 4e Style Class]

% --- Base class ---
\LoadClass[10pt,twoside]{book}

% --- Page layout ---
\setlength{\columnsep}{1.5em}
\twocolumn

% --- Packages ---
\RequirePackage[margin=1.6cm]{geometry}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{tabularx}
\RequirePackage{colortbl}
\RequirePackage{tcolorbox}
\RequirePackage{titlesec}
\RequirePackage{pifont}
\RequirePackage{fontspec}
\RequirePackage{enumitem}


\tcbuselibrary{skins,breakable}

% --- Colors (approximate 4e palette) ---
\definecolor{powerred}{HTML}{8B1E1E}
\definecolor{powergreen}{HTML}{5b8f62}
\definecolor{powerblack}{HTML}{414342} 

\definecolor{itemorange}{HTML}{cd8f28}

\definecolor{powerbeige}{HTML}{dad9c6}
\definecolor{tableblue}{HTML}{1F3A56}
\definecolor{tablerow}{HTML}{E6E6E6}

\definecolor{phbblue}{HTML}{14324b}

% --- Section titles ---
\titleformat{\section}
{\bfseries\large\scshape}
{}
{0pt}
{}


% ======================================================
% ===================== FONTS ==========================
% ======================================================

\newfontfamily\FontMentor[
Path = ./fonts/mentor/, % path to the folder containing your OTF files
UprightFont = *-Regular.otf,
BoldFont = *-Bold.otf,
ItalicFont = *-Italic.otf,
BoldItalicFont = *-Bold-Italic.otf
]{Mentor-Std}

\newfontfamily\FontMentorSans[
Path = ./fonts/mentor-sans/, % path to the folder containing your OTF files
UprightFont = *-Regular.otf,
BoldFont = *-Bold.otf,
ItalicFont = *-Italic.otf,
BoldItalicFont = *-Bold-Italic.otf
]{Mentor-Sans-Std}

\newfontfamily\FontMentorSansLight[
Path = ./fonts/mentor-sans/, % path to the folder containing your OTF files
UprightFont = *-Light.otf,
BoldFont = *-Bold.otf,
ItalicFont = *-Light-Italic.otf
]{Mentor-Sans-Std}

% Default font
\setmainfont[
Path = ./fonts/mentor/, % path to the folder containing your OTF files
UprightFont = *-Regular.otf,
BoldFont = *-Bold.otf,
ItalicFont = *-Italic.otf,
BoldItalicFont = *-Bold-Italic.otf
]{Mentor-Std}


\newfontfamily\FontVecna[
Path = ./fonts/vecna/, % path to the folder containing your OTF files
UprightFont = *-Regular.otf,
BoldFont = *-Bold.otf,
ItalicFont = *-Italic.otf,
BoldItalicFont = *-Bold-Italic.otf
]{Vecna}

\newfontfamily\FontLolth[
Path = ./fonts/lolth/, % path to the folder containing your OTF files
UprightFont = *-Regular.otf,
]{Lolth}

% ======================================================
% ===================== LISTS =========================
% ======================================================
\newlength\listleftmargin
\setlength\listleftmargin\leftmargin
\addtolength\listleftmargin{-0.5\labelwidth}


\setlist[itemize]{
	label=\color{phbblue}\ding{70}\color{black},
	parsep=0pt,
	itemsep=0pt,
	leftmargin=\listleftmargin
}

% ======================================================
% ===================== TITLES =========================
% ======================================================

\titleformat{\chapter}{\fontsize{40}{50}\bfseries\FontLolth}{\thechapter.}{10pt}{}
\titleformat*{\section}{\Huge\bfseries\FontLolth}
\titleformat*{\subsection}{\LARGE\bfseries\FontLolth}

% ======================================================
% =============== POWER ENVIRONMENTS ===================
% ================ (and magic items) ====================

\newcommand{\boxtitle}[2]{{\normalsize{\textbf{#1}}\hfill \small{#2}}}

\newtcolorbox{d-power}[2][]{
	enhanced,
	breakable,
	width=\columnwidth,
	colback=white,
	colframe=powerblack,
	boxrule=0mm,
	arc=0pt,
	left=0pt,
	right=0pt,
	top=0pt,
	boxsep=4pt,
	bottom=4pt,
	fonttitle=\FontMentorSans,
	fontupper=\FontMentorSans,
	coltitle=white,
	title={#2},
	boxed title style={
		colback=white,
		colframe=white,
		sharp corners,
		left=4pt,
		right=4pt,
		top=2pt,
		bottom=2pt
	},
	#1
}

\newtcolorbox{a-power}[2][]{
	enhanced,
	breakable,
	width=\columnwidth,
	colback=white,
	colframe=powergreen,
	boxrule=0mm,
	arc=0pt,
	left=0pt,
	right=0pt,
	top=0pt,
	boxsep=4pt,
	bottom=4pt,
	fonttitle=\FontMentorSans,
	fontupper=\FontMentorSans,
	coltitle=white,
	title={#2},
	boxed title style={
		colback=white,
		colframe=white,
		sharp corners,
		left=4pt,
		right=4pt,
		top=2pt,
		bottom=2pt
	},
	#1
}

\newtcolorbox{e-power}[2][]{
	enhanced,
	breakable,
	width=\columnwidth,
	colback=white,
	colframe=powerred,
	boxrule=0mm,
	arc=0pt,
	left=0pt,
	right=0pt,
	top=0pt,
	boxsep=4pt,
	bottom=4pt,
	fonttitle=\FontMentorSans,
	fontupper=\FontMentorSans,
	coltitle=white,
	title={#2},
	boxed title style={
		colback=white,
		colframe=white,
		sharp corners,
		left=4pt,
		right=4pt,
		top=2pt,
		bottom=2pt
	},
	#1
}


\newtcolorbox{magic-item}[2][]{
	enhanced,
	breakable,
	width=\columnwidth,
	colback=white,
	colframe=itemorange,
	boxrule=0mm,
	arc=0pt,
	left=0pt,
	right=0pt,
	top=0pt,
	boxsep=4pt,
	bottom=4pt,
	fonttitle=\FontMentorSans,
	fontupper=\FontMentorSans,
	coltitle=white,
	title={#2},
	boxed title style={
		colback=white,
		colframe=white,
		sharp corners,
		left=4pt,
		right=4pt,
		top=2pt,
		bottom=2pt
	},
	#1
}


\newenvironment{flavor}
{\begin{tcolorbox}[
		enhanced,
		breakable,
		width=\columnwidth,
		colback=powerbeige,
		colframe=white,
		fontupper=\FontMentor\itshape,
		boxrule=-4pt,
		arc=0pt,
		left=0pt,
		right=0pt,
		top=0pt,
		bottom=0pt,
		interior style={left color=powerbeige, right color=white}
		]}
	{\end{tcolorbox}}



\newenvironment{beigeline}
{\begin{tcolorbox}[
		enhanced,
		breakable,
		width=\columnwidth,
		colback=powerbeige,
		colframe=white,
		fontupper=\FontMentorSans,
		boxrule=-4pt,
		arc=0pt,
		left=0pt,
		right=0pt,
		top=0pt,
		bottom=0pt,
		interior style={left color=powerbeige, right color=white}
		]}
	{\end{tcolorbox}}


% --- Power helper macros ---
\newcommand{\PowerKeywords}[2]{%
	\textbf{#1} \ding{70} \textbf{#2}\par\medskip
}

\newcommand{\PowerLine}[2]{%
	\textbf{#1} #2\par
}



% ======================================================
% ===================== BOXES  =========================
% ======================================================


\newtcolorbox{overview}[2][]{
	enhanced,
	unbreakable,
	width=\columnwidth,
	colback=white,
	colframe=powerbeige,
	interior style={top color=powerbeige, bottom color=white},
	boxrule=0mm,
	arc=0pt,
	left=0pt,
	right=0pt,
	top=0pt,
	boxsep=4pt,
	bottom=4pt,
	fonttitle=\FontVecna\huge\centering,
	fontupper=\FontMentorSans\parindent1em,
	coltitle=phbblue,
	colupper=phbblue,
	title={#2},
	boxed title style={
		colback=white,
		colframe=white,
		sharp corners,
		left=4pt,
		right=4pt,
		top=2pt,
		bottom=2pt
	},
	#1
}



\newtcolorbox{wide-overview}[2][]{
	enhanced,
	unbreakable,
	width=\textwidth,
	colback=white,
	colframe=powerbeige,
	interior style={top color=powerbeige, bottom color=white},
	boxrule=0mm,
	arc=0pt,
	left=0pt,
	right=0pt,
	top=0pt,
	boxsep=4pt,
	bottom=4pt,
	fonttitle=\FontVecna\huge\centering,
	fontupper=\FontMentorSans\parindent1em,
	coltitle=phbblue,
	colupper=phbblue,
	title={#2},
	boxed title style={
		colback=white,
		colframe=white,
		sharp corners,
		left=4pt,
		right=4pt,
		top=2pt,
		bottom=2pt
	},
	#1
}

\newtcolorbox{traitsbox}[2][]{
	enhanced,
	width=\columnwidth,
	colback=powerbeige,
	colframe=white,
	fontupper=\FontMentorSansLight\raggedright\parindent-1.5em,
	fonttitle=\FontMentorSansLight\raggedright\parindent-1.5em\bfseries,
	coltitle=black,
	boxrule=0pt,
	arc=0pt,
	left=2em,
	right=5pt,
	top=0pt,
	bottom=0pt,
	interior style={left color=powerbeige, right color=white},
	title={#2},
	title style={left color=powerbeige, right color=white},
	boxed title style={
		colback=powerbeige,
		colframe=white,
		sharp corners,
		left=4pt,
		right=4pt,
		top=2pt,
		bottom=2pt,
	},
	#1	
}


\newtcolorbox{titlebox}[2][]{
	enhanced,
	breakable,
	width=\columnwidth,
	colback=powerbeige,
	colframe=white,
	fontupper=\FontMentorSansLight\raggedright,
	fonttitle=\FontMentorSansLight\raggedright\bfseries\parindent-7pt,
	coltitle=black,
	boxrule=0pt,
	arc=0pt,
	left=7pt,
	right=5pt,
	top=0pt,
	bottom=0pt,
	interior style={left color=powerbeige, right color=white},
	title={#2},
	title style={left color=powerbeige, right color=white},
	boxed title style={
		colback=powerbeige,
		colframe=white,
		sharp corners,
		left=-0pt,
		right=4pt,
		top=0pt,
		bottom=2pt,
	},
	#1	
}

\newtcolorbox{textbox}[1][]{
	enhanced,
	breakable,
	width=\columnwidth,
	colback=powerbeige,
	colframe=white,
	fontupper=\FontMentorSansLight\raggedright,
	coltitle=black,
	boxrule=0pt,
	arc=0pt,
	left=7pt,
	right=5pt,
	top=0pt,
	bottom=0pt,
	interior style={left color=powerbeige, right color=white},
	#1	
}



% ======================================================
% ==================== TABLES ==========================
% ======================================================

\newenvironment{dndtable}[2][] % optional options + column spec
{%
	\FontMentorSans
	\rowcolors{2}{white}{powerbeige}%
	\tabularx{\columnwidth}{#2}%
	\ifx&#1&\else#1\fi
}
{%
	\endtabularx
}

\newenvironment{wide-dndtable}[2][] % optional options + column spec
{%
	\FontMentorSans
	\rowcolors{2}{white}{powerbeige}%
	\tabularx{\textwidth}{#2}%
	\ifx&#1&\else#1\fi
}
{%
	\endtabularx
}