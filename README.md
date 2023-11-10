# ZJUI Course Project Report Template

ZJUI课程报告的$\LaTeX$模板。

基于[UIUC ECE445 Template](https://courses.grainger.illinois.edu/ece445zjui/documents/445_template.zip)制作。

## Copyright

`references.bib`中条目版权根据其所属数据库与作者的协议归数据库和/或作者所有。

`zjui-report.cls`中`titlepage`部分由UIUC ECE445 Template的封面修改而来。

## 用法

本模板提供了两种样式：`zjui-report.cls`基于`book`类编写，`zjui-report-simple.cls`基于`article`类编写。二者默认使用a4paper纸张、10磅字，页边距2.54cm（约1英寸）。

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

XeTeX -> Biber -> XeTeX * 2


## 联系我

Email: zhongmartin@outlook.com
