\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{FDAdocument}


\LoadClass[letterpaper]{article}

% % % \usepackage[ascii]{inputenc}
% % % \usepackage{amsmath}
% % % \usepackage{amssymb,amsfonts,textcomp}
% % % \usepackage[T1]{fontenc}
% % % \usepackage[english]{babel}
% % % \usepackage{color}
% % % \usepackage{array}
% % % \usepackage{supertabular}
% % % \usepackage{hhline}
% % % \usepackage{blindtext, lipsum}
% % % % \usepackage{xspace}
% % % % \usepackage{titletoc}
% % % % \usepackage{hyperref}
% % % \usepackage[pdftex]{graphicx}
% % % \usepackage{ragged2e}
% % % \usepackage{morefloats}
% % % \usepackage{ulem}
% % % % \usepackage{todonotes}
% % % 
% % % 
% % % 
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % % hyperref -    enables clickable hyperlinks to both URLs and document sections
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % \usepackage[colorlinks = false,     % do not apply colors to link text, only boxes around links
% % %             urlcolor  = cyan,       % URL links
% % %             citecolor = green,      % citation links
% % %             anchorcolor = red       % links to document sections
% % %             linkcolor = magenta,    % other links
% % %             ]{hyperref}
% % % \hypersetup{pdftex, colorlinks=true, linkcolor=blue, citecolor=blue, filecolor=blue, urlcolor=blue, pdftitle=, pdfauthor=, pdfsubject=, pdfkeywords=}
% % % 
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % % todonotes -   allows insertion of in-document reminders, the appearance of which
% % % %               can be toggled via the package's draft/final options
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % \usepackage[obeyFinal,              % enables package except when used in conjunction with the option 'final'
% % %             colorinlistoftodos,     % shows colors in list of todos
% % %             shadow,                 % enables drop shadows for todo notes
% % %             textsize=scriptsize,    % sets text size
% % %             textwidth=3.75cm,       % sets text width for notes in the margins
% % %             prependcaption,         % enables prepended captions for all todo notes; convenient for todos list
% % %             draft                   % replace with 'final' to produce final draft
% % %             ]{todonotes}
% % % 
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % % xspace -      automatically adjusts spacing around macros
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % \usepackage{xspace}
% % % 
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % % fontawesome - font which provides many useful icons
% % % % academicons - fontawesome-based package providing many academic icons; requires
% % % %                   compilation via LuaLaTeX
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % \usepackage{fontawesome}
% % % \usepackage{academicons}
% % % 
% % % 
% % % %%% for including the big 'DRAFT' watermark on each page
% % % %%%     use the 'nostamp' option to disable this
% % % \usepackage{draftwatermark}
% % % 
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[ascii]{inputenc}
\RequirePackage{amsmath}
\RequirePackage{amssymb,amsfonts,textcomp}
\RequirePackage[T1]{fontenc}
\RequirePackage[english]{babel}
\RequirePackage{color}
\RequirePackage{array}
\RequirePackage{supertabular}
\RequirePackage{hhline}
\RequirePackage{blindtext, lipsum}
% \RequirePackage{xspace}
% \RequirePackage{titletoc}
% \RequirePackage{hyperref}
\RequirePackage[pdftex]{graphicx}
\RequirePackage{ragged2e}
\RequirePackage{morefloats}
\RequirePackage{ulem}
% \RequirePackage{todonotes}
\RequirePackage{subfiles}
\RequirePackage{ifdraft}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% hyperref -    enables clickable hyperlinks to both URLs and document sections
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[colorlinks = false,     % do not apply colors to link text, only boxes around links
            urlcolor  = cyan,       % URL links
            citecolor = green,      % citation links
            anchorcolor = red       % links to document sections
            linkcolor = magenta,    % other links
            ]{hyperref}
\hypersetup{pdftex, colorlinks=true, linkcolor=blue, citecolor=blue, filecolor=blue, urlcolor=blue, pdftitle=, pdfauthor=, pdfsubject=, pdfkeywords=}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% todonotes -   allows insertion of in-document reminders, the appearance of which
%               can be toggled via the package's draft/final options
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[obeyFinal,              % enables package except when used in conjunction with the option 'final'
            colorinlistoftodos,     % shows colors in list of todos
            shadow,                 % enables drop shadows for todo notes
            textsize=scriptsize,    % sets text size
            textwidth=3.75cm,       % sets text width for notes in the margins
            prependcaption,         % enables prepended captions for all todo notes; convenient for todos list
            draft                   % replace with 'final' to produce final draft
            ]{todonotes}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% xspace -      automatically adjusts spacing around macros
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{xspace}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fontawesome - font which provides many useful icons
% academicons - fontawesome-based package providing many academic icons; requires
%                   compilation via LuaLaTeX
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fontawesome}
\RequirePackage{academicons}

%%% for including the big 'DRAFT' watermark on each page
%%%     use the 'nostamp' option to disable this
% \ifdraft{
\RequirePackage{draftwatermark}
\SetWatermarkText{DRAFT}
\SetWatermarkScale{4.5}
\SetWatermarkAngle{45}
\SetWatermarkLightness{.85}
\SetWatermarkHorCenter{.6\paperwidth}
\SetWatermarkVerCenter{.6\paperheight}
% }{}


% Text styles
\newcommand\textstyleInfoBlueChari[1]{\textrm{\textit{\textcolor{blue}{#1}}}}


% Outline numbering
\setcounter{secnumdepth}{2}
\renewcommand\thesection{\arabic{section}}

\setcounter{tocdepth}{2}

\makeatletter
\newcommand\arraybslash{\let\\\@arraycr}
\makeatother


% Page layout (geometry)
\setlength\voffset{-1in}
\setlength\hoffset{-1in}
\setlength\topmargin{1.27cm}
\setlength\oddsidemargin{2.54cm}
\setlength\textheight{20.522cm}
\setlength\textwidth{16.509998cm}
\setlength\footskip{2.4390001cm}
\setlength\headheight{1.27cm}
\setlength\headsep{1.169cm}


% Footnote rule
\setlength{\skip\footins}{0.119cm}
\renewcommand\footnoterule{\vspace*{-0.018cm}\setlength\leftskip{0pt}\setlength\rightskip{0pt plus 1fil}\noindent\textcolor{black}{\rule{0.25\columnwidth}{0.018cm}}\vspace*{0.101cm}}




\newcommand{\headerLeft}{\begin{minipage}[b]{.5\textwidth}{\footnotesize{\raggedright{\textbf{\docHeaderAgency \linebreak \docHeaderOffice}}\leftmark\\\rightmark\ }}\end{minipage}}
% \newcommand{\headerRight}{\begin{minipage}[b]{.5\textwidth}{\footnotesize{\raggedleft{\textbf{Data Sharing Document}}\leftmark\\\rightmark\ } }\end{minipage}}
\newcommand{\headerRight}{\begin{minipage}[b]{.5\textwidth}{\footnotesize{\raggedleft{\textbf{\docHeaderTitle}}\leftmark\\\rightmark\ } }\end{minipage}}
\newcommand{\combinedHeader}{\headerLeft \columnbreak \headerRight}
\newcommand{\footerCenter}{\centering \includegraphics[width=\textwidth]{\docFooterImage} \thepage}


% Pages styles
\makeatletter
\newcommand\ps@Standard{
  \renewcommand\@oddhead{\combinedHeader}
  \renewcommand\@evenhead{\@oddhead}
  \renewcommand\@oddfoot{\footerCenter}
  \renewcommand\@evenfoot{\@oddfoot}
  \renewcommand\thepage{\arabic{page}}
}
\newcommand\ps@FirstPage{
  \renewcommand\@oddhead{\includegraphics{./images/FDA_document_template_image002.png}}
  \renewcommand\@evenhead{\@oddhead}
  \renewcommand\@oddfoot{}
  \renewcommand\@evenfoot{}
  \renewcommand\thepage{\arabic{page}}
}
\newcommand\ps@Convertediv{
  \renewcommand\@oddhead{\combinedHeader}
  \renewcommand\@evenhead{\@oddhead}
  \renewcommand\@oddfoot{\footerCenter}
  \renewcommand\@evenfoot{\@oddfoot}
  \renewcommand\thepage{\arabic{page}}
}
\newcommand\ps@Convertediii{
  \renewcommand\@oddhead{\combinedHeader}
  \renewcommand\@evenhead{\@oddhead}
  \renewcommand\@oddfoot{\footerCenter}
  \renewcommand\@evenfoot{\@oddfoot}
  \renewcommand\thepage{\arabic{page}}
}
\newcommand\ps@Convertedii{
  \renewcommand\@oddhead{\combinedHeader}
  \renewcommand\@evenhead{\@oddhead}
  \renewcommand\@oddfoot{\footerCenter}
  \renewcommand\@evenfoot{\@oddfoot}
  \renewcommand\thepage{\arabic{page}}
}
\makeatother


\pagestyle{Standard}
\renewcommand\arraystretch{1.5}
\setlength\tabcolsep{1mm}
% \setlength\extrarowheight{2mm}


% List styles
\newcommand\liststyleWWNumxxxiii{
\renewcommand\labelitemi{$\bullet$}
\renewcommand\labelitemii{$\bullet$}
\renewcommand\labelitemiii{$\bullet$}
\renewcommand\labelitemiv{$\bullet$}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% definitions of custom commands and environments
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\todoRemove}[1]{        % inline todo note indicating items marked for removal
    \todo[inline,
          color=red,
          caption=\large{\textbf{\underline{REMOVE}}}]
    {\textbf{\large{ \underline{REMOVE}: }} #1}}
\newcommand{\todoModify}[1]{        % inline todo note indicating items marked for modification
    \todo[inline,
          color=cyan,
          caption=\large{\textbf{\underline{MODIFY}}}]
    {#1}}
\newcommand{\todoComplete}[1]{      % inline todo note indicating completed items
    \todo[inline,
          color=green,
          caption=\large{\textbf{\underline{COMPLETE}}}]
    {#1}}
\newcommand{\todoReminder}[1]{      % todo note containing reminder text
    \todo[color=orange]
    {#1}}
\newcommand{\todoComment}[1]{       % inline todo note containing commentary text
    \todo[inline,
          color=pink,
          caption=\large{\textbf{\underline{COMMENT}}}]
    {#1}}
\newenvironment{todoItemize}[0]     % a todo note environment with itemized contents
    {\begin{itemize}}
    {\end{itemize}}
\newenvironment{todoEnumerate}[0]   % a todo note environment with enumerated contents
    {\begin{enumerate}}
    {\end{enumerate}}
    
    
%%% version history entries have the following arguments:
%%%     1. version number
%%%     2. author of change (typically ``Aurotech Corp.'')
%%%     3. revision date
%%%     4. approving party
%%%     5. description of change(s)
\newcommand{\versionRecord}[5]{\expandafter{\centering{\small #1}} \expandafter&
\expandafter{\centering{\small #2}} &
\expandafter{\centering{\small #3}} &
\expandafter{\centering{\small #4}} &
\expandafter{\centering{\expandafter\begin{minipage}{6.00cm}{\vspace{1mm} \begin{flushleft}\small #5 \end{flushleft} \vspace{1mm}}\expandafter\end{minipage}}}\\ \hline}
    
    
%%% key terms entries have the following arguments:
%%%     1. term
%%%     2. definition
\newcommand{\keyTermRecord}[2]{\centering #1 \expandafter& \expandafter{\centering{\expandafter\begin{minipage}{12.50cm}{\vspace{1mm} #2 \vspace{1mm}}\expandafter\end{minipage}}}\\ \hline}
    
    
%%% reference entries have the following arguments:
%%%     1. document name
%%%     2. description
%%%     4. location (usually a URL)
\newcommand{\referenceRecord}[3]{\centering #1 \expandafter& \expandafter{\centering{\expandafter\begin{minipage}{7.0cm}{\vspace{1mm} #2 \vspace{1mm}}\expandafter\end{minipage}}}\expandafter& \expandafter{\centering{\expandafter\begin{minipage}{5.0cm}{\vspace{1mm} #3 \vspace{1mm}}\expandafter\end{minipage}}}\\ \hline}

% version
% revision date
% description
% 
% {\centering{\small 1.1}} &
% {\centering{\small Aurotech Corp.}} &
% {\centering{\small 10 Dec 2019}} & ~ &
% {\centering{\small \begin{minipage}{6.00cm}{Modularized template using the subfiles package.}\end{minipage}}}\\\hline
    
%%% use these in subfiles to have contents that only appear in subfiles or the master file:
%%% 
%%% for subfiles:
%%%     \renewcommand{\onlyinsubfile}[1]{#1}
%%%     \renewcommand{\notinsubfile}[1]{}
%%% 
%%% for master file:
%%%     \renewcommand{\onlyinsubfile}[1]{}
%%%     \renewcommand{\notinsubfile}[1]{#1}

\newcommand{\onlyinsubfile}[1]{}
\newcommand{\notinsubfile}[1]{#1}

\endinput
