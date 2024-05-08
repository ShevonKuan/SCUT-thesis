% 华南理工大学 本科生毕业论文 LaTeX 模板
% ShevonKwan shevonkuan@datagrids.cn

% 定义模板样式
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{scutthesis}[South Chine University of Technology undergraduate thesis document class © ShevonKwan 2023]
\newcommand{\newclearpage}{\clearpage} % 设置文章为电子版格式（不添加多余空白页）
\DeclareOption{print-both-sides}{ % 设置文章为双面打印格式（添加多余空白页保证每个表格、章节开头为奇数页面）
    \renewcommand{\newclearpage}{
        \clearpage{
            \pagestyle{empty}
            \cleardoublepage
        }
    }
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax

\LoadClass[
    a4paper,
    12pt,
    openany,
    zihao=-4
]{ctexbook}


% 页面布局
\RequirePackage[top=2.5cm, bottom=2.5cm, left=2.5cm, right=2.5cm]{geometry} % 设置页边距
\setlength{\topmargin}{-1cm} % 设置上边距
% % 页眉页脚
\RequirePackage{fancyhdr} % 页眉页脚设置

% % 行距和段落缩进
\RequirePackage{setspace} % 设置行距



% % 目录样式
\RequirePackage[notlof,notlot,nottoc,numbib]{tocbibind} %table of content
\RequirePackage{tocloft}


% % 颜色设置
\RequirePackage{xcolor} % 用于颜色设置

% % 代码高亮
\RequirePackage{minted} % 用于代码高亮
\usemintedstyle{pastie}
\definecolor{code}{rgb}{0.95,0.95,0.95}

% % 特殊符号
\RequirePackage{gensymb} % 用于插入一些特殊符号

% % 表格制作
\RequirePackage{booktabs} % 用于三线表制作
\RequirePackage{multirow} % 用于合并表格行
\RequirePackage{makecell} % 用于单元格内换行和加粗等
\RequirePackage{longtable} % 用于长表格制作
\RequirePackage{colortbl} % 用于设置表格颜色
\RequirePackage{array}

% % 图片插入
\RequirePackage{graphicx} % 用于插入图片
\RequirePackage{wrapfig} % 用于图片的环绕排版
\RequirePackage[labelsep=space]{caption}
\RequirePackage[font=footnotesize]{subcaption} % 用于插入子图片

\RequirePackage[absolute]{textpos} %绝对位置控制

% % 符号说明
\RequirePackage{nomencl} % 用于制作符号说明

% % 伪代码
\RequirePackage[onelanguage,linesnumbered,algochapter,ruled,vlined]{algorithm2e}

% % 代码插入
\RequirePackage{listings} % 用于插入代码
% % 时间设置
\RequirePackage{datetime}

% % 字体设置

\setmonofont{Consolas}
\RequirePackage{newtxtext}
\RequirePackage{newtxmath, bm} % 用于设置数学公式字体


\RequirePackage{ragged2e} % 实现两端对齐
\RequirePackage[section]{placeins}
\RequirePackage{enumitem}


\RequirePackage[bottom, perpage]{footmisc}








\setCJKmainfont{AdobeSongStd-Light.otf}
[
    Path=./fonts/,
    % BoldFont   =AdobeHeitiStd-Regular.otf,
    % ItalicFont =AdobeKaitiStd-Regular.otf
    AutoFakeBold,
    AutoFakeSlant
]
\setCJKsansfont{AdobeHeitiStd-Regular.otf}
[
    Path=./fonts/,
    AutoFakeBold,
    AutoFakeSlant
]
\setCJKmonofont{AdobeFangsongStd-Regular.otf}
[
    Path =./fonts/,
]
\setCJKfamilyfont{zhsong}{AdobeSongStd-Light.otf}
[
    Path = ./fonts/,
    BoldFont   = AdobeHeitiStd-Regular.otf,
    ItalicFont = AdobeKaitiStd-Regular.otf
]
\setCJKfamilyfont{zhhei}{AdobeHeitiStd-Regular.otf}%AdobeHeitiStd-Regular.otf
[
    Path = ./fonts/,
    AutoFakeBold,
    AutoFakeSlant
]
\setCJKfamilyfont{zhkai}{AdobeKaitiStd-Regular.otf}
[
    Path = ./fonts/,
    AutoFakeBold,
    AutoFakeSlant
]
\setCJKfamilyfont{zhfs}{AdobeFangsongStd-Regular.otf}
[
    Path = ./fonts/,
    AutoFakeBold,
    AutoFakeSlant
]


% 插图和表格标题设置
\RequirePackage[font=footnotesize,tableposition=top]{caption} % 设置插图和表格标题字体和位置

% 参考文献设置
\RequirePackage[numbers,sort&compress]{natbib} % 设置参考文献格式

% 设定时间为中文日期
\ctexset{today=small}


\AtBeginDocument{
    \hypersetup{
        citecolor=green,
        filecolor=black,
        linkcolor=black,
        urlcolor=black,
        CJKbookmarks=true,
        pdftitle={\@ctitle},
        pdfauthor={\@cauthor},
        pdfkeywords={\@ckeywords},
        pdfcreator={LaTeX with hyperref package, using SCUT undergraduate Thesis LaTeX Template by Shevon}
    }
    \noheadpagestyle
}
\pagestyle{fancy}

% 1.5倍行距
\renewcommand{\baselinestretch}{1.5}

% 有序与无序列表环境
\setlist[enumerate]{nosep}
\renewcommand\labelenumi{\theenumi)}
%\renewcommand\labelenumi{\theenumi.}
\setlist[itemize]{nosep}
\setlist[description]{nosep}

% 默认页面页眉页脚样式
\renewcommand{\chaptermark}[1]{\markboth{\songti 第{\chinese{chapter}}章~#1}{}}

\fancypagestyle{plain}{% 样式中间变量
}
\fancypagestyle{main}{
    \fancyhf{}
    \fancyhead[CE]{\zihao{5}\songti 华南理工大学学士学位论文}
    \fancyhead[CO]{\zihao{5}\songti \leftmark}
    \fancyfoot[C]{\zihao{5}\thepage}
    \renewcommand{\headrulewidth}{1pt}
    \renewcommand{\footrulewidth}{0pt}
}
\fancypagestyle{nohead}{
    \fancyfoot[C]{\zihao{5}\thepage}
    \fancyhead{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
}

%修改中间变量
\newcommand\mainpagestyle{\cleardoublepage\pagestyle{main}\let\ps@plain\ps@main}
\newcommand\noheadpagestyle{\cleardoublepage\pagestyle{nohead}\let\ps@plain\ps@nohead}

% F8 目录标题：小2号黑体居中
\renewcommand{\cfttoctitlefont}{\hfill\zihao{-2}\heiti}
\renewcommand{\cftlottitlefont}{\hfill\zihao{-2}\heiti}
\renewcommand{\cftloftitlefont}{\hfill\zihao{-2}\heiti}

% 如果要加粗，放 \bfseries
% 目录中章节标题：四号宋体
% F9 目录内容：宋体四号
\renewcommand{\cftchapfont}{\bfseries\zihao{4}\songti}
\renewcommand{\cftchappagefont}{\bfseries\zihao{4}\songti}

% 目录中其他内容：小四号宋体
\renewcommand{\cftsecfont}{\zihao{-4}\songti}
\renewcommand{\cftsecpagefont}{\zihao{-4}\songti}
\renewcommand{\cftsubsecfont}{\zihao{-4}\songti}
\renewcommand{\cftsubsecpagefont}{\zihao{-4}\songti}
\setlength{\cftsecindent}{2em}        % 小节缩进, 对齐章标题空隙
\setlength{\cftsubsecindent}{4em}        % 子小节缩进, 对齐章标题空隙

% 插图目录
\renewcommand{\listfigurename}{插图目录}
\renewcommand{\cftfigfont}{\zihao{-4}\songti}
\renewcommand{\cftfigpagefont}{\zihao{-4}\songti}

% 表格目录
\renewcommand{\listtablename}{表格目录}
\renewcommand{\cfttabfont}{\zihao{-4}\songti}
\renewcommand{\cfttabpagefont}{\zihao{-4}\songti}

\renewcommand{\cftaftertoctitle}{\hfill}
\renewcommand{\cftafterlottitle}{\hfill}
\renewcommand{\cftafterloftitle}{\hfill}
\renewcommand{\cftdotsep}{1.5}
\renewcommand{\cftnodots}{\cftdotsep}
\cftsetpnumwidth{1.2em}

% 目录标题到目录正文的间距调整
\setlength{\cftaftertoctitleskip}{0.5cm}
\setlength{\cftafterloftitleskip}{0.6cm}
\setlength{\cftafterlottitleskip}{0.6cm}


% 表格与图片标题设定
% https://blog.csdn.net/uncle_gy/article/details/78313861
% https://tex.stackexchange.com/questions/101591/setting-font-size-for-caption-package
%\setlength\heavyrulewidth{0.2em} % 表格线宽
% F19 图题表题 宋体五号
\DeclareCaptionFormat{scutcaption}{\fontsize{10.5}{10.5}\selectfont#1#2#3}
\captionsetup{format=scutcaption}
\DeclareCaptionLabelFormat{opening}{#2)}
\subcaptionsetup[figure]{labelformat=opening}

% 目录设定，使用tocloft宏包
\setcounter{secnumdepth}{3} % depth of toc, 2
%\setcounter{tocdepth}{1}
% 如果要在目录中显示子章节请换用下面这行(目录中显示到x.y.z章)，如果不用这行默认显示到x.y章。
\setcounter{tocdepth}{2}

% 参考文献引用标记格式：右上角，带方括号
\RequirePackage{gbt7714}
\newcommand\overcite[1]{{\setcitestyle{super}\cite{#1}}}


% 相关信息宏定义 中山大学 黄俊杰(huangjj27, 349373001dc@gmail.com)
\newcommand\ctitle[1]{\def\@ctitle{#1}}
\newcommand\etitle[1]{\def\@etitle{#1}}
\newcommand\covertitlefirst[1]{\def\@covertitlefirst{#1}}
\newcommand\covertitlesecond[1]{\def\@covertitlesecond{#1}}
% 这两个在原来的info.tex里面定义，用于英文标题过长的时候的换行情况
\newcommand\etitlefirst[1]{\def\@etitlefirst{#1}}
\newcommand\etitlesecond[1]{\def\@etitlesecond{#1}}
\newcommand\eabstracttitlefirst[1]{\def\@eabstracttitlefirst{#1}} % 解决英文摘要页标题过长问题 (Issue 49&63)
\newcommand\eabstracttitlesecond[1]{\def\@eabstracttitlesecond{#1}}
\newcommand\cauthor[1]{\def\@cauthor{#1}} % 默认中文名为封面作者名字
\newcommand\eauthor[1]{\def\@eauthor{#1}}
\newcommand\studentid[1]{\def\@studentid{#1}}
\newcommand\cschool[1]{\def\@cschool{#1}}
\newcommand\cmajor[1]{\def\@cmajor{#1}}
\newcommand\emajor[1]{\def\@emajor{#1}}
\newcommand\cmentor[1]{\def\@cmentor{#1}}
\newcommand\ementor[1]{\def\@ementor{#1}}
\newcommand\mailbox[1]{\def\@mailbox{#1}}
\newcommand\phonenum[1]{\def\@phonenum{#1}}


\newcommand{\inputcode}[2]{ % 定义代码块命令，参数 #1 表示语言，#2 表示文件名
    \inputminted[
        fontfamily=tt,
        breaklines=true,
        linenos=true,
        bgcolor=code,
        baselinestretch=1.2,
        fontsize=\footnotesize]{#1}{#2} % 指定语言为 #1，文件名为 #2
}
\newcommand{\code}[2]{
    \mintinline[fontfamily=tt,
        breaklines=true,
        linenos=true,
        bgcolor=code,
        baselinestretch=1.2,
        fontsize=\footnotesize]{#1}{#2}
}
\newenvironment{codeblock}[2][]{\VerbatimEnvironment
    \begin{listing}
        \begin{minted}[
        fontfamily=tt,
        breaklines=true,
        linenos=true,
        bgcolor=code,
        baselinestretch=1.2,
        fontsize=\footnotesize,
    #1]{#2}}
 {\end{minted}\end{listing}}

\newcommand\makeUndergraduateCover {
    \begin{titlepage}
        \thispagestyle{empty}
        \begin{figure}[ht]
            \centering
            \includegraphics[height=2.75cm]{title.png}
        \end{figure}
        \begin{center}
            \zihao{0}
            \heiti{\vspace{-2.5em}本科毕业设计（论文）}
        \end{center}
        \begin{center}
            \zihao{1}
            \ \\
            \zihao{2}
            \heiti{\@ctitle}
            \ \\\ \\\ \\
        \end{center}

        \begin{center}
            \begin{spacing}{1.8}
                \zihao{-3}
                
                \textbf{
                    \begin{tabular}{cc}
                        % [s] 两端对齐
                        \makebox[2.56cm][s]{学院}   & \makebox[5.72cm]{\hfill\@cschool\hfill}                                  \\ \cline{2-2}
                        \makebox[2.56cm][s]{专业}   & \makebox[5.72cm]{\hfill\@cmajor\hfill}                                   \\ \cline{2-2}
                        \makebox[2.56cm][s]{学生姓名} & \makebox[5.72cm]{\hfill\@cauthor\hfill}                                  \\ \cline{2-2}
                        \makebox[2.56cm][s]{学生学号} & \makebox[5.72cm]{\hfill\@studentid\hfill}                                \\ \cline{2-2}
                        \makebox[2.56cm][s]{指导教师} & \makebox[5.72cm]{\hfill\@cmentor\hfill}                                  \\ \cline{2-2}
                        \makebox[2.56cm][s]{提交日期} & \makebox[5.72cm]{\hfill\number\year 年\number\month 月\number\day 日\hfill} \\ \cline{2-2}
                    \end{tabular}
                }
            \end{spacing}
        \end{center}
        \pagebreak[4]

    \end{titlepage}
    \newclearpage
}

% 原创性声明
\newcommand\makedisclaim[1][image/签名.png]{
    \ctexset {
        chapter = {
          format={\centering\zihao{2}\heiti},
          nameformat = {\zihao{2}\heiti},
          beforeskip = {10pt},
          afterskip = {20pt}
         }
    }
    \chapter*{华南理工大学\\学位论文原创性声明}

    \zihao{4}\songti

    本人郑重声明：所呈交的论文是本人在导师的指导下独立进行研究所取得的研究成果。除了文中特别加以标注引用的内容外，本论文不包含任何其他个人或集体已经发表或撰写的成果作品。对本文的研究做出重要贡献的个人和集体，均已在文中以明确方式标明。本人完全意识到本声明的法律后果由本人承担。

    作者签名：\hspace{5cm}日期：\number\year 年\number\month 月\number\day 日
    % \begin{flushright}
    %     \makebox[2.1cm][s]{作者签名：} \makebox[5cm]{\hspace{1cm}} \\
    %     \vspace{\baselineskip}
    %     \makebox[2.1cm][s]{日期：} \makebox[5cm]{\hspace{1cm}年\hspace{1cm}月\hspace{1cm}日} \\
    % \end{flushright}
    \begin{textblock}{5}(3.8,6.0) % 指定图片的位置和大小
        \includegraphics[height=1.5cm]{#1}
    \end{textblock}
    % \input{docs/disclaim}
    \ctexset{chapter/break={}}
    \vspace{2em}

    \chapter*{学位论文版权使用授权书}

    \zihao{4}\songti

    本学位论文作者完全了解学校有关保留、使用学位论文的规定，即：学校有权保存并向国家有关部门或机构送交论文的复印件和电子版，允许学位论文被查阅；学校可以公布学位论文的全部或部分内容，可以允许采用影印、缩印或其它复制手段保存、汇编学位论文。本人电子文档的内容和纸质论文的内容相一致。

    作者签名：\hspace{5cm}日期：\number\year 年\number\month 月\number\day 日

    指导教师签名：\hspace{4cm}日期：\number\year 年\number\month 月\number\day 日

    作者联系电话： \@phonenum\hspace{1.5cm} 电子邮箱:  \@mailbox
    % \begin{flushright}
    %     \makebox[2.1cm][s]{作者签名：} \makebox[5cm]{\hspace{1cm}} \\
    %     \vspace{\baselineskip}
    %     \makebox[2.1cm][s]{日期：} \makebox[5cm]{\hspace{1cm}年\hspace{1cm}月\hspace{1cm}日} \\
    % \end{flushright}
    \begin{textblock}{5}(3.8,10.745) % 指定图片的位置和大小
        \includegraphics[height=1.5cm]{#1}
    \end{textblock}



    \thispagestyle{empty}
    \newclearpage
}



% 摘要
\newcommand\ckeywords[1]{\def\@ckeywords{#1}}
\newcommand\ekeywords[1]{\def\@ekeywords{#1}}
\newcommand\cabstract[1]{\def\@cabstract{#1}}
\newcommand\eabstract[1]{\def\@eabstract{#1}}

\newcommand\makecabstract{
    \ctexset{
        section = {
          titleformat = {\zihao{4}\heiti},
          beforeskip = {10pt},
          afterskip = {20pt}
         },
        paragraph/format = {}
    }

    % 使用隐藏目录项的section及添加为chapter形式目录的方法来去掉在openright环境中中英文摘要间出现空白页的情况
    \section*{}
    \addcontentsline{toc}{chapter}{摘\hspace{\ccwd}要}

    % 或者只要一个醒目的标题
    % F2：中文摘要标题 黑体三号居中
    \vspace*{-5ex}
    \centerline{\zihao{-2}\heiti 摘\hspace{\ccwd}要}
    \vspace{2ex}


    % F3: 中文摘要内容 宋体小四号
    % F4: 中文关键词 宋体小四号(关键词加粗)

    \zihao{-4}\songti
    % \fontsize{12}{18}\songti
    % \paragraph{}
    % \setlength{\baselineskip}{20pt}
    \@cabstract
    \paragraph{\heiti{关键词：}}\@ckeywords

}

\newcommand\makeeabstract{

    \ctexset{
        section = {
          titleformat = {\zihao{4}\bfseries},
          beforeskip = {10pt},
          afterskip = {20pt}
         }
    }

    \section*{}
    \addcontentsline{toc}{chapter}{Abstract}

    % F5 英文摘要标题，加粗三号全部大写
    \zihao{-2}
    \vspace*{-5ex}
    \centerline{Abstract}
    \vspace*{1.5ex}
    \setlength{\baselineskip}{20pt}

    % F6 英文摘要内容，小四号
    % F7 英文关键词，小四号，加粗
    \zihao{-4}
    \@eabstract
    \paragraph{\textbf{Keywords:}}\@ekeywords
}

\newcommand\makeabstract{
    \setcounter{page}{1}

    \makecabstract
    % \thispagestyle{cAbstract}
    \newclearpage

    \makeeabstract
    % \thispagestyle{eAbstract}
    \newclearpage
}
\newcommand\maketableofcontents{
    % 设置目录标题与页眉的距离
    % \setlength{\cftbeforetoctitleskip}{0em}
    % 设置目录标题与目录正文的距离
    % \setlength{\cftaftertoctitleskip}{0em}
    \section*{}
    \vspace*{-2.8cm}

    \addcontentsline{toc}{chapter}{目\hspace{\ccwd}录}
    \renewcommand{\contentsname}{\centerline{目\hspace{\ccwd}录}}
    \tableofcontents
    \newclearpage
}
\newcommand\makelistoffiguretable{
    \section*{}
    \vspace*{-2.8cm}
    \addcontentsline{toc}{chapter}{插图目录}
    \listoffigures
    \newclearpage
    \section*{}
    \vspace*{-2.8cm}
    \addcontentsline{toc}{chapter}{表格目录}
    \listoftables
    % \thispagestyle{listoffiguretable}
    \newclearpage
}



\renewcommand\mainmatter{
    \@mainmattertrue
    \pagenumbering{arabic}
    \ctexset {
        chapter = {
          fixskip = true,
          format={\centering\zihao{-2}\heiti},
          nameformat = {\zihao{-2}\heiti},
          aftername = \hspace{0.5em},
          beforeskip = {10pt},
          afterskip = {20pt},
          name = {第,章},
          number={\chinese{chapter}},
          titleformat = {\zihao{-2}\heiti}
         },
        section = {
          format = {\zihao{-3}\heiti},
          aftername = \hspace{0.5em},
          nameformat = {\zihao{-3}\heiti},
          titleformat = {\zihao{-3}\heiti},
          beforeskip = {0.5\baselineskip},
          afterskip = {0.5\baselineskip plus 0.3\baselineskip minus 0.3\baselineskip},
         },
        subsection = {
                format = {\zihao{4}\heiti},
                aftername = \hspace{0.5em},
                nameformat = {\zihao{4}\heiti},
                titleformat = {\zihao{4}\heiti},
                beforeskip = {0.5\baselineskip},
                afterskip = {0.5\baselineskip plus 0.1\baselineskip minus 0.1\baselineskip},
            },
        subsubsection = {
                fixskip = true,
                format = {\zihao{-4}\heiti},
                aftername = \hspace{0.5em},
                nameformat = {\zihao{-4}\heiti},
                titleformat = {\zihao{-4}\heiti},
                beforeskip = {0.5\baselineskip},
                afterskip = {0.5\baselineskip plus 0.1\baselineskip minus 0.1\baselineskip},
            }
    }
    \zihao{-4}\songti \linespread{1.5}\selectfont
    %\pagestyle{plain}
    \mainpagestyle
}

\renewcommand\backmatter{
    \@mainmatterfalse
    \setcounter{chapter}{0}
    \setcounter{section}{0}

    \ctexset {
        chapter = {
          fixskip = true,
          format={\centering\zihao{-2}\heiti},
          nameformat = {\zihao{-2}\heiti},
          beforeskip = {10pt},
          afterskip = {20pt},
          titleformat = {\zihao{-2}\heiti}
         },
        section = {
          format = {\zihao{-3}\heiti},
          aftername = \hspace{0.5em},
          nameformat = {\zihao{-3}\heiti},
          titleformat = {\zihao{-3}\heiti},
          beforeskip = {0.5\baselineskip},
          afterskip = {0.5\baselineskip plus 0.3\baselineskip minus 0.3\baselineskip},
         },
        subsection = {
                format = {\zihao{4}\heiti},
                aftername = \hspace{0.5em},
                nameformat = {\zihao{4}\heiti},
                titleformat = {\zihao{4}\heiti},
                beforeskip = {0.5\baselineskip},
                afterskip = {0.5\baselineskip plus 0.1\baselineskip minus 0.1\baselineskip},
            },
        subsubsection = {
                fixskip = true,
                format = {\zihao{-4}\heiti},
                aftername = \hspace{0.5em},
                nameformat = {\zihao{-4}\heiti},
                titleformat = {\zihao{-4}\heiti},
                beforeskip = {0.5\baselineskip},
                afterskip = {0.5\baselineskip plus 0.1\baselineskip minus 0.1\baselineskip},
            }
    }


}



% 参考文献
% 标题小五号黑体加冒号
% 内容小五号宋体
\newcommand\makereferences{
    \begingroup

    % 引用样式
    \bibliographystyle{gbt7714-numerical}
    % \nocite{*}
    % F15 参考文献内容 宋体五号
    {\zihao{-4}\songti\linespread{1.5}\bibliography{main}}    % 引用文献列表
    \endgroup
}

% 附录样式
\renewcommand\appendix{\par
    \@mainmattertrue
    % \fancypagestyle{plain}{
    %     \fancyhead[R]{\zihao{-5} 附录\thechapter \leftmark}
    % }
    \setcounter{chapter}{0}
    \setcounter{section}{0}
    \gdef\@chapapp{\appendixname}
    \gdef\thechapter{\@Alph\c@chapter}
    \gdef\CTEX@prechapter{\CTEX@preappendix}
    \gdef\CTEX@thechapter{\CTEX@appendix@number}
    \gdef\CTEX@postchapter{}
    \renewcommand\thefigure{\Alph{chapter}-\arabic{figure}}
    \renewcommand\thetable{\Alph{chapter}-\arabic{table}}
}


\def\equationautorefname{式}%
\def\footnoteautorefname{脚注}%
\def\itemautorefname{项}%
\def\figureautorefname{图}%
\def\tableautorefname{表}%
\def\partautorefname{篇}%
\def\appendixautorefname{附录}%
\def\chapterautorefname{章}%
\def\sectionautorefname{节}%
\def\subsectionautorefname{小节}%
\def\subsubsectionautorefname{小小节}%
\def\paragraphautorefname{段落}%
\def\subparagraphautorefname{子段落}%
\def\FancyVerbLineautorefname{行}%
\def\theoremautorefname{定理}%

% 设置公式的编号为短杠形式
\renewcommand\theequation{%
    \thechapter-\arabic{equation}}
% 设置图, 表的编号为短杠形式
\renewcommand\thefigure{\arabic{chapter}-\arabic{figure}}
\renewcommand\thetable{\arabic{chapter}-\arabic{table}}


% 超链接
\RequirePackage[hidelinks, hyperfootnotes=true]{hyperref} % 用于制作超链接
