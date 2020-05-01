\ProvidesClass{cv}[2009/02/24]
\LoadClass{tufte-handout}


\titleformat{\section}%
  [hang]% shape
  {\normalfont\Large}% format applied to label+text
  {\thesection}% label
  {1em}% horizontal separation between label and title body
  {\vspace{1em}}% before the title body
  []% after the title body


\titleformat{\subsection}%
  [hang]% shape
  {\normalfont\large}% format applied to label+text
  {\thesubsection}% label
  {1em}% horizontal separation between label and title body
  {}% before the title body
  []% after the title body

\definecolor{DateColor}{HTML}{444444}
\let\Begin\begin
\let\End\end

\newcommand{\timerange}[1] {
  \hfill \footnotesize \textcolor{DateColor}{#1} \normalsize}

\renewcommand{\maketitle}{%
  \newpage
  \global\@topnum\z@% prevent floats from being placed at the top of the page

  \begingroup
    \setlength{\parindent}{0pt}%
    \setlength{\parskip}{4pt}%

    \gdef\@@title{\LARGE\itshape\@author\par}%
    \gdef\@@subtitle{\Large Ferilskrá \textcolor{DateColor}{\the\year{}}\par}
    \gdef\@@contact{\small valtyr@gmail.com \\ 857-8037 \\ valtyr.is \par}

    \@@title
    \@@subtitle
    \vspace{0.5em}
    \@@contact
  \endgroup
  
  \thispagestyle{plain}% suppress the running head
  \tuftebreak% add some space before the text begins
  \@afterindentfalse\@afterheading% suppress indentation of the next paragraph
}

\geometry{
  left=44.8mm, % left margin
  textwidth=120mm, % main text block
  marginparsep=0mm, % gutter between main text block and margin notes
  marginparwidth=0mm % width of margin notes
}
