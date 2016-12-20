% KloKurier Class
%
% MIT License
%
% Copyright (c) 2016 Thai “0xReki” Chung <mail@0xReki.de>
%
% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
% copies of the Software, and to permit persons to whom the Software is
% furnished to do so, subject to the following conditions:
%
% The above copyright notice and this permission notice shall be included in all
% copies or substantial portions of the Software.
%
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
% SOFTWARE.

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
