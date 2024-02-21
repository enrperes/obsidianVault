%%
% Copyright (c) 2017 - 2023, Pascal Wagler;
% Copyright (c) 2014 - 2023, John MacFarlane
%
% All rights reserved.
%
% Redistribution and use in source and binary forms, with or without
% modification, are permitted provided that the following conditions
% are met:
%
% - Redistributions of source code must retain the above copyright
% notice, this list of conditions and the following disclaimer.
%
% - Redistributions in binary form must reproduce the above copyright
% notice, this list of conditions and the following disclaimer in the
% documentation and/or other materials provided with the distribution.
%
% - Neither the name of John MacFarlane nor the names of other
% contributors may be used to endorse or promote products derived
% from this software without specific prior written permission.
%
% THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
% "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
% LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
% FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
% COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
% INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
% BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
% LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
% CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
% LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
% ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
% POSSIBILITY OF SUCH DAMAGE.
%%

%%
% This is the Eisvogel pandoc LaTeX template.
%
% For usage information and examples visit the official GitHub page:
% https://github.com/Wandmalfarbe/pandoc-latex-template
%%

% Options for packages loaded elsewhere
\PassOptionsToPackage{unicode}{hyperref}
\PassOptionsToPackage{hyphens}{url}
\PassOptionsToPackage{dvipsnames,svgnames,x11names,table}{xcolor}
%
\documentclass[
  paper=a4,
  ,captions=tableheading
]{scrartcl}
\usepackage{amsmath,amssymb}
% Use setspace anyway because we change the default line spacing.
% The spacing is changed early to affect the titlepage and the TOC.
\usepackage{setspace}
\setstretch{1.2}
\usepackage{iftex}
\ifPDFTeX
  \usepackage[T1]{fontenc}
  \usepackage[utf8]{inputenc}
  \usepackage{textcomp} % provide euro and other symbols
\else % if luatex or xetex
  \usepackage{unicode-math} % this also loads fontspec
  \defaultfontfeatures{Scale=MatchLowercase}
  \defaultfontfeatures[\rmfamily]{Ligatures=TeX,Scale=1}
\fi
\usepackage{lmodern}
\ifPDFTeX\else
  % xetex/luatex font selection
\fi
% Use upquote if available, for straight quotes in verbatim environments
\IfFileExists{upquote.sty}{\usepackage{upquote}}{}
\IfFileExists{microtype.sty}{% use microtype if available
  \usepackage[]{microtype}
  \UseMicrotypeSet[protrusion]{basicmath} % disable protrusion for tt fonts
}{}
\makeatletter
\@ifundefined{KOMAClassName}{% if non-KOMA class
  \IfFileExists{parskip.sty}{%
    \usepackage{parskip}
  }{% else
    \setlength{\parindent}{0pt}
    \setlength{\parskip}{6pt plus 2pt minus 1pt}}
}{% if KOMA class
  \KOMAoptions{parskip=half}}
\makeatother
\usepackage{xcolor}
\definecolor{default-linkcolor}{HTML}{A50000}
\definecolor{default-filecolor}{HTML}{A50000}
\definecolor{default-citecolor}{HTML}{4077C0}
\definecolor{default-urlcolor}{HTML}{4077C0}
\usepackage[margin=2.5cm,includehead=true,includefoot=true,centering,]{geometry}
% add backlinks to footnote references, cf. https://tex.stackexchange.com/questions/302266/make-footnote-clickable-both-ways
\usepackage{footnotebackref}
\setlength{\emergencystretch}{3em} % prevent overfull lines
\providecommand{\tightlist}{%
  \setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}
\setcounter{secnumdepth}{-\maxdimen} % remove section numbering
\ifLuaTeX
  \usepackage{selnolig}  % disable illegal ligatures
\fi
\IfFileExists{bookmark.sty}{\usepackage{bookmark}}{\usepackage{hyperref}}
\IfFileExists{xurl.sty}{\usepackage{xurl}}{} % add URL line breaks if available
\urlstyle{same}
\hypersetup{
  hidelinks,
  breaklinks=true,
  pdfcreator={LaTeX via pandoc with the Eisvogel template}}
\author{}
\date{}



%%
%% added
%%


%
% for the background color of the title page
%

%
% break urls
%
\PassOptionsToPackage{hyphens}{url}

%
% When using babel or polyglossia with biblatex, loading csquotes is recommended
% to ensure that quoted texts are typeset according to the rules of your main language.
%
\usepackage{csquotes}

%
% captions
%
\definecolor{caption-color}{HTML}{777777}
\usepackage[font={stretch=1.2}, textfont={color=caption-color}, position=top, skip=4mm, labelfont=bf, singlelinecheck=false, justification=raggedright]{caption}
\setcapindent{0em}

%
% blockquote
%
\definecolor{blockquote-border}{RGB}{221,221,221}
\definecolor{blockquote-text}{RGB}{119,119,119}
\usepackage{mdframed}
\newmdenv[rightline=false,bottomline=false,topline=false,linewidth=3pt,linecolor=blockquote-border,skipabove=\parskip]{customblockquote}
\renewenvironment{quote}{\begin{customblockquote}\list{}{\rightmargin=0em\leftmargin=0em}%
\item\relax\color{blockquote-text}\ignorespaces}{\unskip\unskip\endlist\end{customblockquote}}

%
% Source Sans Pro as the default font family
% Source Code Pro for monospace text
%
% 'default' option sets the default
% font family to Source Sans Pro, not \sfdefault.
%
\ifnum 0\ifxetex 1\fi\ifluatex 1\fi=0 % if pdftex
    \usepackage[default]{sourcesanspro}
  \usepackage{sourcecodepro}
  \else % if not pdftex
    \usepackage[default]{sourcesanspro}
  \usepackage{sourcecodepro}

  % XeLaTeX specific adjustments for straight quotes: https://tex.stackexchange.com/a/354887
  % This issue is already fixed (see https://github.com/silkeh/latex-sourcecodepro/pull/5) but the
  % fix is still unreleased.
  % TODO: Remove this workaround when the new version of sourcecodepro is released on CTAN.
  \ifxetex
    \makeatletter
    \defaultfontfeatures[\ttfamily]
      { Numbers   = \sourcecodepro@figurestyle,
        Scale     = \SourceCodePro@scale,
        Extension = .otf }
    \setmonofont
      [ UprightFont    = *-\sourcecodepro@regstyle,
        ItalicFont     = *-\sourcecodepro@regstyle It,
        BoldFont       = *-\sourcecodepro@boldstyle,
        BoldItalicFont = *-\sourcecodepro@boldstyle It ]
      {SourceCodePro}
    \makeatother
  \fi
  \fi

%
% heading color
%
\definecolor{heading-color}{RGB}{40,40,40}
\addtokomafont{section}{\color{heading-color}}
% When using the classes report, scrreprt, book,
% scrbook or memoir, uncomment the following line.
%\addtokomafont{chapter}{\color{heading-color}}

%
% variables for title, author and date
%
\usepackage{titling}
\title{}
\author{}
\date{}

%
% tables
%

%
% remove paragraph indentation
%
\setlength{\parindent}{0pt}
\setlength{\parskip}{6pt plus 2pt minus 1pt}
\setlength{\emergencystretch}{3em}  % prevent overfull lines

%
%
% Listings
%
%


%
% header and footer
%
\usepackage[headsepline,footsepline]{scrlayer-scrpage}

\newpairofpagestyles{eisvogel-header-footer}{
  \clearpairofpagestyles
  \ihead*{}
  \chead*{}
  \ohead*{}
  \ifoot*{}
  \cfoot*{}
  \ofoot*{\thepage}
  \addtokomafont{pageheadfoot}{\upshape}
}
\pagestyle{eisvogel-header-footer}



%%
%% end added
%%

\begin{document}

%%
%% begin titlepage
%%

%%
%% end titlepage
%%



<h1 id="r-language">[[R language]]</h1>
<h3 id="slide-usate-a-lezione">Slide usate a lezione:</h3>
<p><a href="https://users.dimi.uniud.it/~massimo.franceschet/ds/plugandplay/log.html">Course Log</a></p>
<ol type="1">
<li><a href="http://users.dimi.uniud.it/~massimo.franceschet/ns/plugandplay/R/R.html#1">Hasty tour inside R</a></li>
<li><a href="http://users.dimi.uniud.it/~massimo.franceschet/ns/plugandplay/import/import.html#1">READR</a></li>
<li><a href="http://users.dimi.uniud.it/~massimo.franceschet/ns/plugandplay/tidyr/tidyr.html#1">Tidy</a></li>
<li><a href="http://users.dimi.uniud.it/~massimo.franceschet/ns/plugandplay/dplyr/dplyr.html#1">DPLYR</a></li>
<li><a href="http://users.dimi.uniud.it/~massimo.franceschet/ns/plugandplay/ggplot/ggplot.html#1">ggplot2</a></li>
<li><a href="https://users.dimi.uniud.it/~massimo.franceschet/ds/plugandplay/challenges/elo/elo.html">Elo - chess</a></li>
</ol>
<p>[[R Guide|R Guide markdown file]]</p>
<hr />
<h2 id="definizioni">Definizioni</h2>
<h3 id="media">Media</h3>
<blockquote>
<p>Rapporto tra la somma dei dati numerici e il numero dei dati.</p>
</blockquote>
<p>Gli <em>outlayers</em> influenzano molto la media, ma è generalmente pià accurata per rappresentare il valore medio di un insieme di dati. ### Mediana &gt; Valore centrale tra i dati numerici disposti in ordine crescente o decrescente.</p>
<p>In caso di numero pari di dati, la median è data dalla media aritmetica dei due valori centrali. La presenza di <em>outlayers</em> (=valori distanti dalla media) non influenza necessariamente la mediana.</p>
<h3 id="moda">Moda</h3>
<blockquote>
<p>Valore che si presenta con maggiore frequenza</p>
</blockquote>
<p>Quindi, se ogni valore è presente una volta, non esiste una moda.</p>
<h2 id="data-structures">Data structures</h2>
<blockquote>
<p>[!info]- Atomic Vectors &gt; Sequence of elements with same type. Vector index starts at 1, not 0</p>
<p><code>c(1, 3, 5)</code>, <code>c(TRUE, FALSE, TRUE)</code> ### Indexing: <code>primes = c(2, 3, 5, 7)</code> <code>primes[2]</code> –&gt; <code>[1] 3</code> <strong>Coercion</strong> = gli elementi dei vettori devono avere lo stesso tipo quindi quando combinati vengono convertiti nel tipo più flessibile. In ordine di flessibilità, sono: 1. logical 2. integer 3. double 4. character ### Factors &gt; vectors that can contain only predefined values. used to store categorical variables. (ex. sex)</p>
</blockquote>
<blockquote>
<p>[!info]- List &gt; sequence of elements that might have different types</p>
<p><code>l = list(thing = "hat", size = 3, female = TRUE)</code> <code>l[1]</code> = a sublist containing the first element of the list <code>l[[1]]</code> = the first element of the list.</p>
</blockquote>
<blockquote>
<p>[!info]- Matrix &gt; 2-dimensional vector: same type and same length. <code>M[1, ]</code> = first row use <code>cbind</code> and <code>rbind</code> to add columns and rows to a matrix. ### Matrix operations - Element-wise sum <code>M+N</code> - Element-wise product <code>M*N</code> - matrix product <code>M %*% N*</code> - Matrix transpose <code>t(M)</code> - matrix inverse - linear systems - matrix spectrum - eigenvalues</p>
</blockquote>
<blockquote>
<p>[!info]- Data Frame &gt; List of vectors (columns). It’s like a database table: &gt; - Each column has a name and contains elements of the same type. &gt; - Different columns have the same length and may have different types.</p>
<div class="sourceCode" id="cb1"><pre class="sourceCode r"><code class="sourceCode r"><span id="cb1-1"><a href="#cb1-1" aria-hidden="true"></a>name =<span class="st"> </span><span class="kw">c</span>(<span class="st">&quot;John&quot;</span>, <span class="st">&quot;Enri&quot;</span>)</span>
<span id="cb1-2"><a href="#cb1-2" aria-hidden="true"></a>age =<span class="st"> </span><span class="kw">c</span>(<span class="st">&quot;3&quot;</span>, <span class="st">&quot;20&quot;</span>)</span>
<span id="cb1-3"><a href="#cb1-3" aria-hidden="true"></a>bros =<span class="st"> </span><span class="kw">data.frame</span>(name, age)</span></code></pre></div>
<p>Data frames can be nested.</p>
</blockquote>
<h1 id="r-programming">[[R programming]]</h1>
<h2 id="loops">loops</h2>
<p><code>for</code>, <code>while</code> loops. <code>ifelse</code> statements Most of the times tasks can be performed by applying functions, avoiding loops. (pipes) ## Functions Can be standard (<code>log</code>) or custom made. ### Functionals can be recursive. Can be applied to each element of a vector: <code>lapply(df, mean)</code> -&gt; apply mean to each column of dataframe, return a list. <code>sapply(df, mean)</code> -&gt; apply mean to each col of dataframe, return atomic vector. <code>apply(mtx, 1, mean)</code> -&gt; apply mean to each row of matrix, return atomic vector.</p>
<h1 id="plot-r-visualization">Plot [[R visualization]]</h1>
<ul>
<li>Barplot
<ul>
<li>[[Pasted image 20230911200943.png|300]]</li>
</ul></li>
<li>Histogram
<ul>
<li>[[Pasted image 20230911201008.png|300]]</li>
</ul></li>
<li>BoxPlot</li>
<li>[[Pasted image 20230911201657.png|300]]
<ul>
<li>Per visualizzare la distribuzione dei dati. Include dati come mediana, variabilità, presenza di outlier e simmetria dati.</li>
<li>Asse orizzontale che rappresenta la variabile di interesse</li>
<li>Il box copre il secondo e terzo quartile dei dati. La linea nel box rappresenta la mediana.
<ul>
<li>I quartili dividono l’insieme dei dati in 4 parti uguali. ciascun quartile contiene un quarto dei dati. Il primo quartile (Q1) contiene il primo 25% dei dati. Sono importanti perchè forniscono una misura della dispersione e posizione dei dati in un set.</li>
</ul></li>
<li>i “baffi”, le due linee sopra e sotto il box, rappresentano l’intervallo interquartile <em>IQR</em> ovvero la distanza tra il secondo e terzo quartile. Quindi si estendono fino al massimo e minimo dei dati all’interno di un certo intervallo.</li>
<li>Outlier: i dati che cadono fuori dai “baffi” sono considerati Outlier. Solitamente sono dati anomali o errori.</li>
<li>Simmetria dei dati: se la mediana è al centro del box e i baffi sono uguali in distanza dal box, i dati sono distribuiti simmetricamente.</li>
</ul></li>
</ul>
<h1 id="data-import-r-import">Data import [[R import]]</h1>
<h2 id="tibbles">Tibbles</h2>
<blockquote>
<p>Tibbles are data frames with some improvements. They are defined in the <code>tibble</code> package.</p>
</blockquote>
<p>Some of the improvements include: - Printing is more user friendly - Column types are preserved - Subsetting returns a vector, instead of a dataframe with a single column which can be confusing. - Automatic col and row names</p>
<h1 id="tidyr-tidy-data"><code>tidyr</code> : tidy data</h1>
<ul>
<li>Variable = quantity or quality that you can measure</li>
<li>Value = state of a variable when you measure it</li>
<li>Observation = set of measurements of variables made under similar conditions. [[Pasted image 20230909015838.png|600]]</li>
</ul>
<h3 id="gathering">Gathering</h3>
<p><code>gather(table4a, "1999", "2000", key = "year", value = "cases")</code> [[Pasted image 20230909015951.png|500]]</p>
<h3 id="spreading">Spreading</h3>
<p>[[Pasted image 20230909020144.png|500]]</p>
<h3 id="separating">Separating</h3>
<p>[[Pasted image 20230909020239.png|500]]</p>
<h3 id="uniting">Uniting</h3>
<p>[[Pasted image 20230909020312.png|500]]</p>
<h1 id="dplyr-data-manipulation-dplyr"><code>dplyr</code> : Data manipulation [[Dplyr]]</h1>
<h2 id="unary-verbs">Unary verbs</h2>
<ul>
<li><code>select()</code> pick variables based on names (it’s a filter on columns of the data frame)</li>
<li><code>filter()</code> pick case based on their values (it’s a filter on <strong>rows</strong> of the data frame)</li>
<li><code>mutate()</code> add new variable in function of existing data</li>
<li><code>arrange()</code> change the order of the rows</li>
<li><code>group_by()</code> partition rows of data into groups defined by the value of some variables.</li>
<li><code>summarise()</code> reduces multiple values down to a single summary.</li>
</ul>
<h2 id="binary-verbs">Binary verbs</h2>
<p>when many tables contribute to analysis, tools to combine them exist: - mutating join: add new variables to one table from matching rows in another - filtering joins: filter observation from one table based on whether or not they match observation on another table - set operations. combine observations in dataset as if they where set elements. ### Joins - <strong>mutating joins</strong> add new variables to one table from matching rows in another - <strong>inner join</strong> includes observations that match in both tables - <strong>outer join</strong> (left, right, full) includes also observations that do not match in one of the tables - <strong>filtering joins</strong> filter observations from one table from matching rows in another - <strong>semi-join</strong> filter observations from one table based on whether they match an observation in the other table - <strong>anti-join</strong> filter observations from one table based on whether they do not match an observation in the other table</p>
<h2 id="pipes">Pipes</h2>
<blockquote>
<p>powerful tool for clearly expressing a sequence of multiple operations.</p>
<div class="sourceCode" id="cb2"><pre class="sourceCode r"><code class="sourceCode r"><span id="cb2-1"><a href="#cb2-1" aria-hidden="true"></a>foo_foo <span class="op">%&gt;%</span></span>
<span id="cb2-2"><a href="#cb2-2" aria-hidden="true"></a><span class="kw">hop</span>(<span class="dt">through =</span> forest) <span class="op">%&gt;%</span></span>
<span id="cb2-3"><a href="#cb2-3" aria-hidden="true"></a><span class="kw">scoop</span>(<span class="dt">up =</span> field_mouse) <span class="op">%&gt;%</span></span>
<span id="cb2-4"><a href="#cb2-4" aria-hidden="true"></a><span class="kw">bop</span>(<span class="dt">on =</span> head)</span></code></pre></div>
</blockquote>
<h1 id="ggplot2">ggplot2</h1>
<div class="sourceCode" id="cb3"><pre class="sourceCode r"><code class="sourceCode r"><span id="cb3-1"><a href="#cb3-1" aria-hidden="true"></a><span class="kw">ggplot</span>(<span class="dt">data =</span> df)<span class="op">+</span></span>
<span id="cb3-2"><a href="#cb3-2" aria-hidden="true"></a><span class="st">    </span><span class="kw">geom_obj</span>(<span class="dt">mapping =</span> <span class="kw">aes</span>())</span></code></pre></div>

\end{document}
