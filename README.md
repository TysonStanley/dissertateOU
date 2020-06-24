
<!-- README.md is generated from README.Rmd. Please edit that file -->

# `dissertateOU` `v0.0.1` <img src="inst/dissertateOU_hex.png" align="right" width="30%" height="30%"/>

The goal of `dissertateOU` is to make two aspects of writing a
dissertation at Oklahoma University better:

1.  Formatting of the dissertation is automatically done for you
2.  All analyses are intimately tied to the document, making the work
    more reproducible

Ultimately, this allows the student to focus on the writing and the
results without having to worry excessively about updating tables and
figures, adjusting formatting of things like the title page and table of
contents, and other minor (but important) aspects of getting the
document correct.

## Installation

You can install `dissertateOU` with:

``` r
remotes::install_github("tysonstanley/dissertateOU")
```

## LaTeX

> Importantly, this package requires the new release of LaTeX from your
> preferred distribution. Older versions will often encounter an error
> regarding “\\counterwithin”. If this error comes up for you, then you
> need to update your LaTeX.

### Some Important Notes

  - To put the title on two lines (see the thesis cover page above), use
    `\newline` (or if that doesn’t work, use `\\newline`) at the point
    where you want the title to split to the second line. In general,
    USU wants the first of the two title lines to be longer than the
    second part.
  - If you don’t need a section (e.g., “Public Abstract”, “Chapter 5”,
    etc.), remove it from the main `.Rmd` file. For example, if you want
    to remove the “Public Abstract”, remove all the lines starting from
    the `\newpage` in that section down to the actual words `Publically
    abstracted words go here.`. It will then not be included in the
    knitted document.
  - Currently, the package uses APA 7 formatting for citations (by
    default) but this can be altered by downloading a new `.csl` file
    and specifying it in the yaml, by replacing the `apa7.csl` in the
    `pandoc_args: [ "--csl", "apa7.csl" ]` argument with your file name.
    The package also comes with `apa6.csl` to use.
  - Although the School of Graduate Studies at Utah State University has
    approved the use of `dissertateUSU`, before using it, talk to your
    committee chair and your graduate program coordinator to make sure
    it is approved by your department.

## Writing, Writing, Writing

In the folder, there are other RMarkdown files called `Chapter1.Rmd`,
`Chapter2.Rmd`, etc. These are the files where you will do the writing
and analyzing. The main RMarkdown file will bring all these files
together into one document. The only things you need to update in the
main RMarkdown file is the `yaml` information, the abstracts,
acknowledgments, and dedication.

## Note

The package is still undergoing some development and we would love
feedback on any aspect that doesn’t work as expected.

We also want to thank the
[`rticles`](https://github.com/rstudio/rticles) package for the
functionality for `dissertateOU`. The idea to make this package, as well
as its design, was derived from the `rticles` package.
