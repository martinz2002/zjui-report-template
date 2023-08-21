# Individual Report Template for ZJU-UIUC ECE 445: Senior Design Project Lab

ZJUI课程报告的$\LaTeX$模板。

基于[UIUC ECE445 Template](https://courses.grainger.illinois.edu/ece445zjui/documents/445_template.zip)制作。

## 许可

`references.bib`中条目版权根据其所属数据库与作者的协议归数据库和/或作者所有。

`zjui-report.cls`中`titlepage`部分由UIUC ECE445 Template的封面修改而来。

## 用法

本模板基于`book`类编写，默认使用a4paper纸张、12磅字，页边距2.54cm（约1英寸）。

### $\LaTeX$基本语法

可参考：[Learn LaTeX in 30 minutes - Overleaf, Online LaTeX Editor](https://www.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes)

### 新命令

**本仓库根目录下的`sample.tex`提供了一个开箱即用的样本，您可以根据需要填写、删除信息并编译。**

本仓库提供的一系列新命令列举如下：

#### 报告信息类

`\authornames{<ListOfMembers>}`定义了需要**显示在封面上**的作者、组员信息。

`\coursecode{<CourseCode>}`定义了课程代码。

`\coursename{<CourseName>}`定义了课程名称。

`\reporttitle{<Title>}`定义项目的标题。标题将出现在封面填写项目名称的位置上。

`\name{<GivenName>}{<FamilyName>}`可以生成一个姓名（姓在后），其中姓以小号大写字母（Small Capital）显示。

`\reporttype{<Type>}`定义报告的类型，显示在课程名下方。

`\semester{<Semester>}`定义报告所属的学期，如Spring 2023。将出现在封面上。

`\instructor{<FacultyName>}`定义授课教师姓名。将出现在封面上。

`\reportdate{<Date>}`定义报告的撰写日期。将出现在所有封面上。

#### 封面生成类

`\makecoverpage`将生成一个报告封面。

### 文献管理

本模板的引文插入依赖`biblatex`宏包，可自动生成IEEE格式引文。推荐使用开源文献管理工具Zotero（ https://zotero.org/ ）配合其附加组件BetterBibTeX（ https://github.com/retorquere/zotero-better-bibtex ）进行文件管理。BetterBibTeX允许用户将文献库中的条目导出为biblatex的参考文献文件，并可设置自动更新。在导言区使用`\addbibresource{<FileName>}`命令即可指定文档所使用的`biblatex`数据库文件。

`biblatex`宏包文档：[The biblatex Package](http://mirrors.ctan.org/macros/latex/contrib/biblatex/doc/biblatex.pdf)

IEEE格式引文参考：[IEEE Reference Guide -- IEEE Author Center](https://ieeeauthorcenter.ieee.org/wp-content/uploads/IEEE-Reference-Guide.pdf)

Zotero的使用说明：[Zotero Documentation](https://www.zotero.org/support/)

BetterBibTeX的使用说明：[Better BibTeX for Zotero :: Better BibTeX for Zotero (retorque.re)](https://retorque.re/zotero-better-bibtex/)

### 查看成品：编译

由于模板采用了BibLaTeX作为引文工具，您需要特别注意编译过程。限于笔者精力，详细信息不在此放出（主要原因是我也不会直接用命令行编译……）。如果您不了解具体如何编译，笔者建议您采用以下两种方案：

1. 采用在线$\LaTeX$编辑平台，如Overleaf。这类平台能自动处理如文献引用、图片编号等交叉引用的问题。（其后端应该是采用了`latexmk`的编译方式）

2. **在您本地使用微软Visual Studio Code软件+相应插件**：到VSCode的Marketplace下载插件"LaTeX Workshop"，并在设置中找到“Latex-workshop > Latex: Recipes”项，点击“在 settings.json 中编辑”，删除原有`"latex-workshop.latex.tools"`和`""latex-workshop.latex.recipes"`项的内容，并将以下内容复制到您的`settings.json`文件中：

   ```json
   "latex-workshop.latex.tools": [
       {
           "name": "xelatex",
           "command": "xelatex",
           "args": [
               "-synctex=1",
               "-interaction=nonstopmode",
               "-file-line-error",
               "%DOCFILE%"
           ]
       },
       {
           "name": "latexmk-lua",
           "command": "latexmk",
           "args": [
               "-lualatex",
               "-synctex=1",
               "-file-line-error",
               "-interaction=nonstopmode",
               "%DOCFILE%"
           ]
       },
       {
           "name": "pdflatex",
           "command": "pdflatex",
           "args": [
               "-synctex=1",
               "-interaction=nonstopmode",
               "-file-line-error",
               "%DOCFILE%"
           ]
       },
       {
           "name": "lualatex",
           "command": "lualatex",
           "args": [
               "-synctex=1",
               "-interaction=nonstopmode",
               "-file-line-error",
               "%DOCFILE%"
           ]
       },
       {
           "name": "bibtex",
           "command": "bibtex",
           "args": [
               "%DOCFILE%"
           ]
       },
       {
           "name": "latexmk-clean",
           "command": "latexmk",
           "args": [
               "-c"
           ]
       }
   ],
   "latex-workshop.latex.recipes": [
       {
           "name": "latexmk-lua",
           "tools": [
               "latexmk-lua"
           ],
       },
       {
           "name": "lualatex",
           "tools": [
               "lualatex"
           ],
       }
       {
           "name": "lua->bib->lua->lua",
           "tools": [
               "lualatex",
               "bibtex",
               "lualatex",
               "lualatex"
           ]
       },
       {
           "name": "xelatex",
           "tools": [
               "xelatex"
           ],
       },
       {
           "name": "xe->bib->xe->xe",
           "tools": [
               "xelatex",
               "bibtex",
               "xelatex",
               "xelatex"
           ]
       },
       {
           "name": "pdflatex",
           "tools": [
               "pdflatex"
           ]
       },
       {
           "name": "pdf->bib->pdf->pdf",
           "tools": [
               "pdflatex",
               "bibtex",
               "pdflatex",
               "pdflatex"
           ]
       }
   ], // 若本行后无设置项，则将逗号删除
   ```

   随后点击左边栏的“TEX”按钮，展开“Build LaTeX project”项，您将看到：

   <img src="./README.assets/image-20230417192931167.png" alt="image-20230417192931167" style="zoom: 80%;" />

   通常我们使用"xe->bib->xe->xe"，或"lua->bib->lua->lua"，或"latexmk-lua"项进行编译。**使用pdflatex或“pdf->bib->pdf->pdf”编译可能导致意外错误，这不是BUG，是一些宏包的特性！**部分宏包只能使用Xe$\TeX$或Lua$\TeX$正常编译。

LaTeX Workshop插件的使用说明：[Home · James-Yu/LaTeX-Workshop Wiki (github.com)](https://github.com/James-Yu/LaTeX-Workshop/wiki)

微软Visual Studio Code的使用说明：[Documentation for Visual Studio Code](https://code.visualstudio.com/Docs)

## 联系我

Email: zhongmartin@outlook.com