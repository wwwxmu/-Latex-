
\ProvidesClass{xmuthesis}[2015/4/20 Xiamen University Thesis Template]
\LoadClass[a4paper,fancyhdr,hyperref,12pt,UTF8,oneside,openany]{ctexbook}
%------------------------ Page layout ----------------------------------
\hypersetup{pdfencoding=auto}
\hypersetup{citecolor=magenta,linkcolor=black}
\RequirePackage[top=2.5cm,bottom=2.0cm,left=2.0cm,right=2.0cm,includefoot,xetex]{geometry}    % 页面设置%




\fancypagestyle{plain}{
     \fancyhf{}
	 \fancyhead{}
	 \chead{\normalfont\small\rmfamily\nouppercase{\leftmark}} 
     \fancyfoot[C]{-\,\thepage\,-}
     \renewcommand{\headrulewidth}{0.4pt}
}


\newtoks\SchoolName					%学院
\newtoks\Department					%系
\newtoks\Major						%专业
\newtoks\Grade						%年级
\newtoks\StudentNumber				%学号
\newtoks\InnerAdviser				%校内指导老师
\newtoks\TitleOfInnerAdviser		%校内指导老师职称
\newtoks\OuterAdviser				%校外指导老师
\newtoks\TitleOfOuterAdviser		%校外指导老师职称
\newtoks\year
\newtoks\month
\newtoks\day


%%========================================封面================================================================
\def\maketitle{%
  \null
  \thispagestyle{empty}%

	\begin{center}
		\includegraphics[height=4cm]{logo.eps}  \\
		\includegraphics[height=2.5cm]{xmu.eps}   
	\end{center}
	
	\begin{spacing}{2.0}
		\centering{\songti \zihao{1} \textbf{本科毕业论文}}\\
		\centering{\songti \zihao{-3}(科研训练、毕业设计)} \zihao{3}\\[1em]
	\end{spacing}
	
    \centering{\songti \zihao{2} \textbf{题\hspace{1em}目：\@title}}%
	\vspace{45pt}
    % \vfill\vfill\vfill
    {\songti\zihao{3}
	 \begin{flushleft}
       \hspace{4em}姓\hspace{2em}名： {\@author}\\[0.5em]
       \hspace{4em}学\hspace{2em}院：{\the\SchoolName}\\[0.5em]
       \hspace{4em}\hspace{3em}系： {\the\Department}\\[0.5em]
       \hspace{4em}专\hspace{2em}业： {\the\Major}\\[0.5em]
	   \hspace{4em}年\hspace{2em}级： {\the\Grade}\\[0.5em]
	   \hspace{4em}学\hspace{2em}号： {\the\StudentNumber}\\[0.5em]
	   \hspace{4em}指导老师：\makebox[3em]{\the\InnerAdviser}\hspace{4.5em}职称：{\the\TitleOfInnerAdviser}\\[0.5em]
%	   \hspace{4em}指导老师（校外）：\makebox[3em]{\the\OuterAdviser}\hspace{4.5em}职称：{\the\TitleOfOuterAdviser}\\[0.5em]
	\end{flushleft}
    {\the\year}\quad 年 \quad {\the\month}\quad 月\quad {\the\day}\quad 日

	}
	\newpage
	\thispagestyle{empty}
	\begin{center}{\songti\zihao{4}\bfseries 厦门大学本科学位论文诚信承诺书}\end{center}
	\par\vspace*{20pt}
	 \begin{flushleft}
	\renewcommand{\baselinestretch}{2}
	%\justifying 两端对齐
	 \justifying{\songti\zihao{4}%
	\hspace{2em}本人呈交的学位论文是在导师指导下独立完成的研究成果。本人在论文写作中参考其他个人或集体已经发表的研究成果，均在文中以适当方式明确标明，并符合相关法律规范及《厦门大学本科毕业论文规范》。\par
	另外，该学位论文为（\hspace{14em}）课题（组）的研究成果，获得（\hspace{7.5em}）课题（组）经费或实验室的资助，在（\hspace{7.5em}）实验室完成。（请在以上括号内填写课题或课题组负责人或实验室名称，未有此项声明内容的，可以不作特别声明。）\par
	\begin{flushright}
	\makebox[24em]{学生声明（签名）：\hspace{5em}}\\
	\makebox[16em]{年\hspace{1.5em} 月\hspace{1.5em} 日\hspace{3em}}\\[2em]
	\end{flushright}
	\hspace{2em}该同学呈交的学位论文是在本人指导下独立完成的研究成果。本人已经对学生毕业论文内容进行严格审核，论文写作中参考其他个人或集体已经发表的研究成果，均在文中以适当方式明确标明，并符合相关法律规范及《厦门大学本科毕业论文规范》。\par
	\begin{flushright}
	\makebox[24em]{学生声明（签名）：\hspace{5em}}\\
	\makebox[16em]{年\hspace{1.5em} 月\hspace{1.5em} 日\hspace{3em}}\\[2em]
	\end{flushright}
	}
	\end{flushleft}


  }

%------------------------ Abstract & Keywords -------------------------

\newenvironment{cnabstract}{
\newpage
	\thispagestyle{empty}
\chapter[摘要]{}
	 \@afterheading
	}
    {\par}
	
\newenvironment{enabstract}{
\newpage
	\thispagestyle{empty}
\chapter[Abstract]{}
	 \@afterheading
	}
    {\par}
%------------------------ 目录格式 -------------------------
\usepackage{titletoc}
\usepackage{titlesec}
%\renewcommand\contentsname{\heiti \zihao{4} 目录}  % 都可以
%%% ---- 章节标题设置 ----- %%%%
\CTEXsetup[titleformat+={\zihao{-3}\heiti}, name={第,章},numberformat={\zihao{-3}\heiti},nameformat={\zihao{-3}\heiti}]{chapter}
\titleformat{\section}[hang]{\zihao{4}\songti}{\thesection}{1em}{}
\titleformat{\subsection}[hang]{\zihao{4}\heiti}{\thesubsection}{1em}{}

%% 用titletoc宏包提供的命令可以方便地设置目录的格式
\titlecontents{chapter}[0pt]{\vspace{0pt}\songti\zihao{-4}}
    {\thecontentslabel\ }{}
    {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
\titlecontents{section}[2em]{\vspace{0pt}\songti\zihao{-4}}
    {\thecontentslabel\ }{}
    {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
\titlecontents{subsection}[4em]{\vspace{0pt}\songti\zihao{-4}}
    {\thecontentslabel\ }{}
    {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
	





				  
				  
%--------------- 新增厦大要求的Arial -------------------------
%---------------使用说明：在正文中用 \arial{} -------------------------
\newcommand\fontnamesans{Arial}%Calibri
\newfontinstance\Arial{\fontnamesans}
\newcommand{\arial}[1]{\,{\Arial#1}\,}




\newcommand\acknowledgement{\backmatter\chapter[致谢]{\ziju{2}致谢}}