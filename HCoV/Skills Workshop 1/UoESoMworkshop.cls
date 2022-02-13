\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{UoESoMworkshop}[2020/12/22 UoE SoM Workshops Class]

\LoadClass[12pt,a4paper]{article}

\RequirePackage[english]{babel}
\RequirePackage[utf8x]{inputenc}
\RequirePackage{amsmath,amssymb}
\RequirePackage{graphicx,xcolor}
\RequirePackage{hyperref}
\RequirePackage{etoolbox,pifont}

\newenvironment{exformat}[4]{\color{#3}\begin{list}{{#2}}{} \item%
{\bf #1~\arabic{wop}.\theexercise}\ifblank{#4}{}{ (#4)}\enspace}%
{\end{list}}

\newenvironment{exercise}[1][]{\refstepcounter{exercise}\begin{exformat}{Exercise}{\ding{46}}{exerc}{#1}}%
{\end{exformat}}

\definecolor{exerc}{HTML}{00397E}

\newcounter{wop}
\newcounter{exercise}
\setcounter{wop}{1}