\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dnd4e}[2025/01/01 D&D 4e Style Class]

% --- Base class ---
\LoadClass[10pt,twoside]{book}

% --- Page layout ---
\setlength{\columnsep}{1.5em}
\twocolumn

% --- Packages ---
\RequirePackage[margin=1.6cm]{geometry}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{array}
\RequirePackage{tabularx}
\RequirePackage{colortbl}
\RequirePackage{tcolorbox}
\RequirePackage{microtype}
\RequirePackage{titlesec}
\RequirePackage{pifont}
\RequirePackage{fontspec}

\tcbuselibrary{skins,breakable}

% --- Colors (approximate 4e palette) ---
\definecolor{powerred}{HTML}{8B1E1E}
\definecolor{powergreen}{HTML}{5b8f62}
\definecolor{powerblack}{HTML}{414342}

\definecolor{powerbeige}{HTML}{dad9c6}
\definecolor{tableblue}{HTML}{1F3A56}
\definecolor{tablerow}{HTML}{E6E6E6}

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
% ===================== TITLES =========================
% ======================================================

\titleformat{\chapter}{\fontsize{40}{50}\bfseries\FontLolth}{\thechapter.}{10pt}{}
\titleformat*{\section}{\Huge\bfseries\FontLolth}
\titleformat*{\subsection}{\LARGE\bfseries\FontLolth}

% ======================================================
% =============== POWER ENVIRONMENTS ===================
% ======================================================

\newcommand{\boxtitle}[2]{{\textbf{#1}\hfill #2}}

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
		colback=powerred,
		colframe=powerred,
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
		colback=powerred,
		colframe=powerred,
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
		colback=powerred,
		colframe=powerred,
		sharp corners,
		left=4pt,
		right=4pt,
		top=2pt,
		bottom=2pt
	},
	#1
}


\newenvironment{powerflavor}
{\begin{tcolorbox}[
		enhanced,
		breakable,
		width=\columnwidth,
		colback=powerbeige,
		colframe=powerbeige,
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
		colframe=powerbeige,
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
\newcommand{\PowerKeywords}[1]{%
	\textbf{#1}\par\medskip
}

\newcommand{\PowerLine}[2]{%
	\textbf{#1} #2\par
}

% ======================================================
% ==================== TABLES ==========================
% ======================================================

\newenvironment{dndtable}[2][] % optional options + column spec
{%
	\FontMentorSans
	\rowcolors{2}{tablerow}{white}%
	\tabularx{\columnwidth}{#2}%
	\ifx&#1&\else#1\fi
}
{%
	\endtabularx
}