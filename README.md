# ZJU-UIUC Report Template

This is a template for reports (such as lab reports, MP reports) for ECE courses at ZJU-UIUC, Zhejiang University. It is originally designed to fit in the requirement of ECE 385, based on the syllabus of Spring 2020 semester.



## Structure

- `course-info.tex`: provides information about the course which will be printed on the cover page or footer / header.
- `lab-report.cls`: provides declaration of the class.
- `members.tex`: provides a list of people that contributes to the assignment who are required to provide names and student ids in the report. Usually they are the group members / teammates of the author.
- `titlepage.tex`: provides the layout of the cover page, which is implemented using `titlepage` environment.
- `template/template.tex`: provides an example of the report, which shows the basic usage of this $\LaTeX$ template.
- `logo.png`: the logo of ZJU-UIUC Institute.

## Usage

Write your document like `template/template.tex` and **compile with XeTeX or LuaTeX** to make `ctex` package working normally. (Sometimes we need to input a couple of Chinese characters… `ctex` makes this possible)

If you do not like `ctex`, simply remove it from `lab-report.cls`.

## Feedback

Open an issue.