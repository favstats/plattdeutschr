
<!-- README.md is generated from README.Rmd. Please edit that file -->

# plattdeutschr

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

The goal of `plattdeutschr` is to translate German into Plattdeutsch
(German dialect). `plattdeutschr` is built upon [this
tool](https://www.xn--versetter-z7a.de/) by Marcel Meyer and simply
provides an interface to it.

## Installation

You can install the development version of `plattdeutschr` from GitHub
with:

``` r
# install.packages("remotes")
remotes::install_github("favstats/plattdeutschr")
```

## Example

This is a basic example:

``` r
library(plattdeutschr)
## basic example code
```

``` r
get_plattdeutsch("Was geht heute noch meine Kerle")
#> [1] "Wat geiht vondaag noch mien Keerl"
```

``` r
get_plattdeutsch("Ich würde gerne Maultaschen essen. Oder doch vielleicht Spätzle mit Soße.")
#> [1] "Ik deed geern Muultaschen eten. Aver villicht Laatzle mit Söös."
```

``` r
get_plattdeutsch(random = T)
#> [1] "Ik schölen ehr beter fragen."
```
