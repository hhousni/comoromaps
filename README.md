
# Overview

The goal of comorosmpas is to get maps of Comoro Islands to plot!

# Installation

Install from CRAN with

``` r
install.packages("comorosmaps")
```

The development version of ozmaps may be installed directly from github.

``` r
devtools::install_github("hhousni/comorosmaps")
```

## Usage

Plot Comoro Islands as one country without region.

``` r
library(comorosmaps)
comorosmap()
```

<img src="man/figures/README-unnamed-chunk-1-1.png" width="100%" />

Plot Comoro Islands as one country with region.

``` r
comorosmap(region = TRUE)
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />

Plot Moheli Island without region.

``` r
comorosmap("moheli")
```

<img src="man/figures/README-unnamed-chunk-3-1.png" width="100%" />

Plot Moheli Island with region.

``` r
comorosmap("moheli", region = TRUE)
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />
