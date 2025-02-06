% Class declaration and passing through args to parent article class
\ProvidesClass{CV}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax 
\LoadClass{article} 

% Package imports
\usepackage[parfill=0pt]{parskip} 
\usepackage{graphicx}
\usepackage{amssymb}
\usepackage{tabularx}
\usepackage{adjustbox}
\usepackage{stackengine}
\usepackage{geometry}
\usepackage[T1]{fontenc}
\usepackage{lmodern}
\usepackage{aesupp}
\usepackage{censor}

% Redaction bar height and depth
\censorruledepth=-0.3ex
\censorruleheight=2.0ex

% Page margins
\geometry{
    top=10mm, 
    bottom=10mm, 
    left=10mm, 
    right=10mm
}

% Surpress headers and footers
\pagestyle{empty}

% Define custom square version of cdot used for bullets
\makeatletter
\DeclareRobustCommand{\sqcdot}{\mathbin{\mathpalette\morphic@sqcdot\relax}}
\newcommand{\morphic@sqcdot}[2]{
  \sbox\z@{$\m@th#1\centerdot$}
  \ht\z@=.33333\ht\z@
  \vcenter{\box\z@}
}
\makeatother

% Header same as below, except name is uppercase 
\newcommand{\headerCaps}[7]{
    {\Huge\MakeUppercase{\textbf{\xblackout{#1}}}}\hfill \stackengine{\stackgap}{\xblackout{#3}}{\xblackout{#2}}{O}{r}{\quietstack}{\useanchorwidth}{\stacktype}%
    \vspace{2pt}
    \hrule
    \vspace{-4pt}
    \xblackout{#4#5#6} \hfill \xblackout{#7} \\
    \vspace{-12pt}
}

% Format header (1=name, 2=firstlineaddress, 3=secondlineaddress, 4=emailaddress, 5=githublink, 6=linkedinlink, 7=mobilenumber 
\newcommand{\header}[7]{
    {\Huge\textbf{\xblackout{#1}}}\hfill \stackengine{\stackgap}{\xblackout{#3}}{\xblackout{#2}}{O}{r}{\quietstack}{\useanchorwidth}{\stacktype}%
    \vspace{2pt}
    \hrule
    \vspace{-4pt}
    \xblackout{#4#5#6} \hfill \xblackout{#7} \\
    \vspace{-12pt}
}

% Format major sections (e.g. Education, Professional Experience)
\newenvironment{Section}[2]{
    \vspace{#2pt} % Increase/decrease this to increase/decrease spacing between sections
	\MakeUppercase{\textbf{#1}}
    \vspace{2pt}
	\hrule
}{}

% Format individual entries inside sections (e.g. University, Company)
\newenvironment{Institution}[3]{
    \vspace{#3pt}
    \textbf{\large\xblackout{#1}}\hfill\textbf{\xblackout{#2}}\\
}{
}

% Format positions or roles within organisations (e.g. BSc Student, Intern)
\newenvironment{Position}[2]{
    \textit{#1} \hfill \textit{#2}
    \begin{list}{$\sqcdot$}{\leftmargin=9mm}
	\setlength{\itemsep}{-0.5em} \vspace{-0.5em}
    \setlength{\labelsep}{5mm}
}{
    \end{list}
}

% Same as above for positions/roles but without bullet points
\newenvironment{PositionNL}[2]{
    \textit{#1}\hfill\textit{#2}{\parfillskip=0pt\par}%
}{
}
