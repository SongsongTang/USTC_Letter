%
% University of Science and Technology of China 
% Letter Template with USTC Title for LaTeX Users
%
%   Version
%       Beta
%   Created 
%       2014.06.13 by ywg@USTC
%   Last Modified
%       2015.03.17 by ywg@USTC
%
%       $Id$
%
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{ustcletter}[2015/03/17 USTC letter document class. Created: 2014.06.13 by ywg@USTC, Last Modified: 2015.03.17 by ywg@USTC]

\newif\ifustc@blue\ustc@bluefalse
\newif\ifustc@black\ustc@blackfalse
\newif\ifustc@red\ustc@redfalse
\newif\ifustc@normal\ustc@normalfalse
\newif\ifustc@casual\ustc@casualfalse
\newif\ifustc@formal\ustc@formalfalse
\newif\ifustc@sale\ustc@salefalse

\DeclareOption{blue}{\ustc@bluetrue}
\DeclareOption{black}{\ustc@blacktrue}
\DeclareOption{red}{\ustc@redtrue}
\DeclareOption{normal}{\ustc@normaltrue}
\DeclareOption{casual}{\ustc@casualtrue}
\DeclareOption{formal}{\ustc@formaltrue}
\DeclareOption{sale}{\ustc@saletrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions

\LoadClass{article}

\newcommand\ustc@error{\ClassError{ustcletter}{You can ONLY specify ONE THEME COLOR: blue, black or red!}{}}
\ifustc@blue
	\ifustc@black
		\ustc@error
	\else
		\ifustc@red
			\ustc@error
		\fi
	\fi
\else
	\ifustc@black
		\ifustc@red
			\ustc@error
		\fi
	\fi
\fi

\newcommand\ustc@errorb{\ClassError{ustcletter}{You can ONLY specify ONE THEME LAYOUT: normal, casual, formal or sale!}{}}
\ifustc@normal
	\ifustc@casual
		\ustc@errorb
	\else
		\ifustc@formal
			\ustc@errorb
		\else
			\ifustc@sale
				\ustc@errorb
			\fi
		\fi
	\fi
\else
	\ifustc@formal
		\ifustc@casual
			\ustc@errorb
		\else
			\ifustc@sale
				\ustc@errorb
			\fi
		\fi
	\else
		\ifustc@casual
			\ifustc@sale
				ustc@errorb
			\fi
		\fi
	\fi
\fi

%\ifustc@normal\RequirePackage[
%	left=3.17cm,
%	right=3.17cm,
%	top=4.6cm,
%	bottom=1.5cm
%	]{geometry}
\ifustc@normal\RequirePackage[
	left=2cm,
	right=2cm,
	top=2.54cm,
	bottom=2.54cm,
	footskip=1.8cm
	]{geometry}
\else\ifustc@formal\RequirePackage[
	left=3.17cm,
	right=3.17cm,
	top=3.1cm,
	bottom=2.5cm
	]{geometry}
\else\ifustc@casual\RequirePackage[
	left=3.17cm,
	right=3.17cm,
	top=5.4cm,
	bottom=1.5cm
	]{geometry}
\else\ifustc@sale\RequirePackage[
	left=1.5cm,
	right=1.5cm,
	top=6.0cm,
	bottom=1.5cm
]{geometry}
\else\RequirePackage[
	left=3.17cm,
	right=3.17cm,
	top=3.1cm,
	bottom=2.5cm
	]{geometry}
\fi\fi\fi\fi

\RequirePackage{tikz}
\usetikzlibrary{calc}
\RequirePackage{fancyhdr}
\RequirePackage[CJKchecksingle]{xeCJK}
\RequirePackage{graphicx}
\RequirePackage{everypage}
\RequirePackage{color}
\RequirePackage{caption,subcaption}
\RequirePackage{fancyhdr}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\RequirePackage[
	colorlinks=true,
	anchorcolor=black,
    citecolor=black,
    linkcolor=black,
    filecolor=black,
    urlcolor=black
]{hyperref}
\definecolor{ustcblue}{cmyk}{1,0.8,0,0}
\definecolor{ustclightblue}{cmyk}{0.35,0.1,0,0}

%Set theme color
\ifustc@blue\def\ustc@theme@main{ustcblue}\def\ustc@theme@secondary{ustclightblue}
\else\ifustc@black\def\ustc@theme@main{black}\def\ustc@theme@secondary{black}
\else\ifustc@red\def\ustc@theme@main{red}\def\ustc@theme@secondary{red}
\else\def\ustc@theme@main{ustcblue}\def\ustc@theme@secondary{ustclightblue}
\fi\fi\fi

\newcommand{\chuhao}    {\fontsize{42pt}   {\baselineskip}\selectfont}
\newcommand{\xiaochu}   {\fontsize{36pt}   {\baselineskip}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36pt}   {\baselineskip}\selectfont}
\newcommand{\yihao}     {\fontsize{28pt}   {\baselineskip}\selectfont}
\newcommand{\erhao}     {\fontsize{21pt}   {\baselineskip}\selectfont}
\newcommand{\xiaoer}    {\fontsize{18pt}   {\baselineskip}\selectfont}
\newcommand{\xiaoerhao} {\fontsize{18pt}   {\baselineskip}\selectfont}
\newcommand{\sanhao}    {\fontsize{15.75pt}{\baselineskip}\selectfont}
\newcommand{\xiaosan}   {\fontsize{15pt}   {\baselineskip}\selectfont}
\newcommand{\xiaosanhao}{\fontsize{15pt}   {\baselineskip}\selectfont}
\newcommand{\sihao}     {\fontsize{14pt}   {\baselineskip}\selectfont}
\newcommand{\xiaosi}    {\fontsize{12pt}   {\baselineskip}\selectfont}
\newcommand{\xiaosihao} {\fontsize{12pt}   {\baselineskip}\selectfont}
\newcommand{\wuhao}     {\fontsize{10.5pt} {\baselineskip}\selectfont}
\newcommand{\xiaowu}    {\fontsize{9pt}    {\baselineskip}\selectfont}
\newcommand{\xiaowuhao} {\fontsize{9pt}    {\baselineskip}\selectfont}
\newcommand{\liuhao}    {\fontsize{7.875pt}{\baselineskip}\selectfont}
\newcommand{\qihao}     {\fontsize{5.25pt} {\baselineskip}\selectfont}


%Define new commands
\def\ustc@define@term#1{
  \expandafter\gdef\csname #1\endcsname##1{%
    \expandafter\gdef\csname ustc@#1\endcsname{##1}}
  \csname #1\endcsname{}}

\ustc@define@term{address}
\ustc@define@term{postcode}
\ustc@define@term{tel}
\ustc@define@term{fax}
\ustc@define@term{email}
\ustc@define@term{homepage}
\ustc@define@term{mobile}

\newlength{\ustc@footer@textwidth}
\setlength{\ustc@footer@textwidth}{\paperwidth}
\addtolength{\ustc@footer@textwidth}{-30mm}

% set properties of the letter in Document.
\AtBeginDocument{
	\setlength{\baselineskip}{8mm}
}
\AtEndDocument

\newcommand\ustc@letter@pagelayout{}

\newcommand\ustc@letter@pagelayout@formal{
\begin{tikzpicture}[x=1mm, y=1mm, remember picture,overlay,shift=(current page.north west)]
  \node at (2953/56,-15.5) {\textcolor{\ustc@theme@main}{\includegraphics[height=23.57143mm]{./figures/logo_side.eps}}};
  \fill[color=\ustc@theme@secondary] (2953/28,-23) rectangle ($(0,-20)+(current page.north east)$);
  \fill[color=\ustc@theme@main](2953/28,-23) rectangle ($(2953/28,-20)+7/11*(0,-20)+7/11*(current page.north east)-7/11*(2953/28,-20)$);
  \draw[very thin] ($(current page.south west)+(8,20)$) -- ($(current page.south east)+(-8,20)$) node[below, midway] {\xiaowuhao{\begin{tabular}{p{0.55\ustc@footer@textwidth}p{0.45\ustc@footer@textwidth}}地址{}(Address):\ustc@address\quad{}邮编(Postcode):\ustc@postcode & 电话(TEL):\ustc@tel\quad{}传真(FAX):\ustc@fax\\电子邮箱(E-mail):\ustc@email & 网址(http):\ustc@homepage \end{tabular}}};
  \fill[color=\ustc@theme@main] ($(current page.south west)+(8,19.75)$) rectangle ($(current page.south east)+(-8,20.25)$);
\end{tikzpicture}}

\newcommand{\ustc@letter@pagelayout@casual}{\begin{tikzpicture}[x=1mm, y=1mm, remember picture,overlay,shift=(current page.north west)]
  \node at ($(-2953/56,-15.5)+(current page.north east)$) {\textcolor{\ustc@theme@main}{\includegraphics[height=23.57143mm]{./figures/logo_side.eps}}};
  \draw[very thin] ($(-317/4,-26)+(current page.north east)$) -- ($(-8,-26)+(current page.north east)$) node[below, midway] {\qihao{ 
\begin{tabular}{p{72mm}}\rule{0mm}{2.5mm} 地址{}(Address):\ustc@address\quad{}邮编(Postcode):\ustc@postcode \\\rule{0mm}{2.5mm} 电话(TEL):\ustc@tel\quad{}传真(FAX):\ustc@fax\\\rule{0mm}{2.5mm} 手机(Mobile):\ustc@mobile\\\rule{0mm}{2.5mm} 电子邮箱(E-mail):\ustc@email \\\rule{0mm}{2.5mm} 网址(http):\ustc@homepage \end{tabular}}};
  \fill[color=\ustc@theme@main] ($(-317/4,-25.75)+(current page.north east)$) rectangle ($(-4,-26.25)+(current page.north east)$);
  \fill[color=\ustc@theme@secondary] (current page.south west) rectangle ($(current page.south east)+(0,3)$);
  \fill[color=\ustc@theme@main] (current page.south west) rectangle ($1/3*(current page.south west)+2/3*(current page.south east)+(0,3)$);
\end{tikzpicture}}

\newcommand\ustc@letter@pagelayout@normal{
\begin{tikzpicture}[x=1mm, y=1mm, remember picture,overlay,shift=(current page.north west)]
  \node at (105,-12) {\textcolor{\ustc@theme@main}{\includegraphics[height=23.57143mm]{./figures/logo_side.eps}}};
  \fill[color=\ustc@theme@main] ($(current page.north west)+(10,-23.75)$) rectangle ($(current page.north east)+(-10,-24.25)$);
  \draw[very thin] ($(current page.south west)+(10,24)$) -- ($(current page.south east)+(-10,24)$) node[below, midway] {\xiaowuhao{\begin{tabular}{p{0.60\ustc@footer@textwidth}p{0.40\ustc@footer@textwidth}}地址{}(Address):\ustc@address\quad{}邮编(Postcode):\ustc@postcode & 电子邮箱(E-mail):\ustc@email\\电话(TEL):\ustc@tel\quad{}传真(FAX):\ustc@fax & 网址(http):\ustc@homepage \end{tabular}}};
  \foreach \x in {0,1,...,28}\draw[very thin,densely dotted,color=\ustc@theme@main] ($(current page.south west)+(10,24+\x*8)$) -- ($(current page.south east)+(-10,24+\x*8)$);
\end{tikzpicture}}

\newcommand\ustc@letter@pagelayout@sale{
	\begin{tikzpicture}[x=1mm, y=1mm, remember picture, overlay, shift=(current page.north west)]
		\node at (28,-35) {\textcolor{\ustc@theme@main} {\includegraphics[height=32mm]{./figures/logo_fig.eps}}};
		\node at (92,-32) {\textcolor{\ustc@theme@main}{\includegraphics[width=92mm]{./figures/logo_text.eps}}};
		\node at (92,-42) {\textcolor{\ustc@theme@main}{\includegraphics[width=92mm]{./figures/logo_en.eps}}};
		\node at (92,-52) {\liuhao{\begin{tabular}{l} 地址：中国\ 安徽\ 合肥市金寨路96号\ \ \ \ 邮编：230026 \\ 电话：0551-63602184\ 传真：0551-63631760\ Http://www.ustc.edu.cn \end{tabular}}};
		\fill[color=\ustc@theme@main] plot coordinates {($(current page.north east)+(0,-41)$) ($(current page.north east)+(0,-42)$) ($(current page.north east)+(-74,-42)$) ($(current page.north east)+(-73.5,-41)$) ($(current page.north east)+(0,-41)$)};
		\node [opacity=0.1] at (105,-165) {\textcolor{\ustc@theme@main}{\includegraphics[width=100mm]{./figures/logo_fig.eps}}};
	\end{tikzpicture}
}

%Select theme layout
\ifustc@normal\renewcommand{\ustc@letter@pagelayout}{\ustc@letter@pagelayout@normal}
\else\ifustc@casual\renewcommand{\ustc@letter@pagelayout}{\ustc@letter@pagelayout@casual}
\else\ifustc@formal\renewcommand{\ustc@letter@pagelayout}{\ustc@letter@pagelayout@formal}
\else\ifustc@sale\renewcommand{\ustc@letter@pagelayout}{\ustc@letter@pagelayout@sale}
\else\renewcommand{\ustc@letter@pagelayout}{\ustc@letter@pagelayout@formal}
\fi\fi\fi\fi

\AddEverypageHook{\ustc@letter@pagelayout}

\AtBeginDocument{\pagestyle{empty}}

%
% End of ustcletter.cls


