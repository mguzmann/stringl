# stringl.jl

The idea is to create a feature complete port of [stringr](https://cran.r-project.org/web/packages/stringr/stringr.pdf) to Julia.

The main advantange of stringr over Julia's use of regular expressions is its consistency:

* data first

* all verbs work the same

Most work here will simply consist on wrapping around Julia's regex functions.
