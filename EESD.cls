
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{EESD}
\LoadClass[aspectratio = 169, 11pt, xcolor={usenames,dvipsnames}]{beamer}
% I used 16:9 aspect ratio of the slides; To get the default (4:3) remove the specifier above in-between the [aspectratio = 169] or simply change the value to 43
% Other possible values are: 1610, 149, 54, 43 and 32.

% ---- My Colors Specifiers ----
\definecolor{mypink}{rgb}{0.97, 0.56, 0.65}
\definecolor{myviolet}{rgb}{0.6, 0.4, 0.8}
\definecolor{myblue}{rgb}{0.61, 0.77, 0.89}

\definecolor{green1}{rgb}{0.00, 0.45, 0.47} % darker green
\definecolor{green2}{rgb}{0.73, 0.88, 0.82} % light green

\definecolor{violet1}{rgb}{0.59, 0.08, 0.39} % darker violet
\definecolor{violet2}{rgb}{0.85, 0.78, 0.85} % light violet


\definecolor{beamerfooter1}{rgb}{0.97, 0.64, 0.60}
\definecolor{beamerfooter2}{rgb}{0.96, 0.46, 0.40}
\definecolor{beamerfooter3}{rgb}{0.93, 0.19, 0.10}

\setbeamercolor*{header color}{fg=white,bg=black}
\setbeamercolor*{footer color1}{fg=black,bg=beamerfooter1} % pink
\setbeamercolor*{footer color2}{fg=white,bg=beamerfooter2} % dark pink
\setbeamercolor*{footer color3}{fg=white,bg=beamerfooter3} % dark red

\setbeamertemplate{blocks}[rounded][shadow=true]

\setbeamercolor{block body}{fg = black, bg = beamerfooter1}
\setbeamercolor{block title}{fg=white, bg=beamerfooter2}

\setbeamercolor{block body example}{fg = black, bg = green2}
\setbeamercolor{block title example}{fg = white, bg = green1}

\setbeamercolor{block body alerted}{fg = black, bg = violet2}
\setbeamercolor{block title alerted}{fg=white, bg=violet1}


\setbeamertemplate{frametitle}{\vspace{20pt}\color{beamerfooter3}\textbf\insertframetitle}

% ---- Bibliography Specifiers ----
\setbeamertemplate{bibliography item}[text] % Regular numbering (Formal)

% ---- Itemize Specifier ----
\setbeamertemplate{itemize items}[square]
\setbeamertemplate{enumerate items}[square]

% ---- Frame Title Specifier ----
\addtobeamertemplate{frametitle}{}{\vspace{0pt}} % increase vspace between the title and text


\newcommand{\rom}[1]{\uppercase\expandafter{\romannumeral #1\relax}} % Add Romans numbering

\usecolortheme[named=beamerfooter3]{structure}
\setbeamertemplate{headline}{}
\setlength{\footnotesep}{0.05cm}

% Table of contents size subsections and subsubsections
\setbeamerfont{subsection in toc}{size=\scriptsize}
\setbeamerfont{subsubsection in toc}{size=\scriptsize}

% Table of contents (Enumeration shapes)
\setbeamertemplate{section in toc}[square]
\setbeamertemplate{subsection in toc}[square]
\setbeamertemplate{subsubsection in toc}[square]

\setbeamercovered{transparent} % Transparent Text When Use "Pauses"!
\setbeamertemplate{navigation symbols}%{default}

\logo{\centering\includegraphics[height=1.43cm]{logos169.pdf}\vspace{220pt}}

\addtobeamertemplate{footnote}{}{\vspace{1.5ex}}



% -------- Special frames

\newcommand{\breakingframe}[1]{
{
    \setbeamertemplate{footline}
    {
      \vspace{-1.5ex}
      \leavevmode
      \hbox{
      \hspace{-2ex}
    
      \begin{beamercolorbox}[wd=.333333\paperwidth, ht=2.25ex,dp=1.25ex,center]{footer color3}%
        \usebeamerfont{author in head/foot}\insertshortauthor
      \end{beamercolorbox}%
      \begin{beamercolorbox}[wd=.333333\paperwidth, ht=2.25ex, dp=1.25ex, center]{footer color2}%
        \usebeamerfont{header color}\insertshorttitle
      \end{beamercolorbox}%
      \begin{beamercolorbox}[wd=.343333\paperwidth, ht=2.25ex, dp=1.25ex, right]{footer color1}%
        \usebeamerfont{footer color3}\insertshortdate{}\hspace*{6em}
        ~~~~~~~~\hspace*{2ex} 
      \end{beamercolorbox}
      }
      \vskip0pt%
    }

    \setbeamercolor{background canvas}{bg=beamerfooter1}
    % \setbeamertemplate{footline}{}
    \begin{frame}[t, noframenumbering, allowframebreaks]{}
        #1
    \end{frame}
}
}




% Define variables
%\settoheight{\halfheight}{0.5\pdfpageheight}