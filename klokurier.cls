\ProvidesClass{klokurier}[2016/12/20 Klokurier class]

\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{scrartcl}%
}
\ProcessOptions\relax
\LoadClass{article}

%%% Output Format %%%
\RequirePackage[utf8x]{inputenc}
\RequirePackage[T1]{fontenc}

%%% Layout %%%
\RequirePackage[a4paper,tmargin=15mm,bmargin=15mm,lmargin=15mm,rmargin=15mm]{geometry}
\RequirePackage{multicol}
\setlength{\parindent}{0cm}
\pagestyle{empty}

%%% Graphics %%%
\RequirePackage[pdftex]{graphicx}
\RequirePackage{float}

%%% Commands %%%
\newcommand{\signature}[1]{\vspace{-1.0em}\begin{flushright}\textit{#1}\end{flushright}}

% {{{ Header
\newcommand{\header}{%
    % {{{ Logo
    \begin{center}
    \vspace*{-2em}
        \includegraphics
            [width=0.6\textwidth, trim = 00 80 0 0]
            {resources/logo.png} \\[1cm]
        \textsc{\Large vom \thedate} 
        \rule{\linewidth}{0.5mm} 
    \end{center}
    % }}} Logo
    \vspace{-0.3em}
    \textit{Hallo liebe Lesende,\\ mit diesem Klokurier möchten wir euch über
    aktuelle Themen in der Fachschaft Informatik informieren. Wie immer freuen
    wir uns über euer Feedback.}

    \noindent \textit{Anmerkungen und Wünsche bitte direkt an} \texttt{fin@uni-ulm.de}

    \noindent \textit{Abonnieren der Mailingliste:} \texttt{SUBSCRIBE klo.fin}
    \textit{an} \texttt{sympa@lists.uni-ulm.de} \textit{ senden.}\\
}
% }}} Header

% {{{ QR Code Wrapper
\RequirePackage{wrapfig}
\RequirePackage[colorlinks=false, pdfborder={0 0 0}, breaklinks=true]{hyperref}
\RequirePackage{qrcode}
\newcommand{\qrbox}[2][]{%
    \begin{wrapfigure}{r}{15em}
        \vspace*{-1.4em}
        \hspace{0.5em}
        \href{#2}{%
            \qrcode[height=14em]{#2}
        }
        \\\\
        \centering{%
            #1\url{#2}
        }
    \end{wrapfigure}
}
% }}} QR Code
