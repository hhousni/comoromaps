
# Overview

The goal of comorosmpas is to get maps of Comoro Islands to plot!

# Installation

Install from CRAN with

``` r
install.packages("comorosmaps")
```

The development version of comorosmaps may be installed directly from
github.

``` r
devtools::install_github("hhousni/comorosmaps")
```

## Usage

Plot Comoro islands as one country without region.

``` r
library(comorosmaps)
comoros()
```

<img src="man/figures/README-unnamed-chunk-1-1.png" width="100%" />

Plot Comoro islands as one country with region.

``` r
comoros(pref = TRUE)
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />

Plot Moheli island without region.

``` r
moheli()
```

<img src="man/figures/README-unnamed-chunk-3-1.png" width="100%" />

Plot Moheli island with region.

``` r
moheli(pref = TRUE)
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />

Plot Anjouan island without region.

``` r
anjouan()
```

<img src="man/figures/README-unnamed-chunk-5-1.png" width="100%" />

Plot Moheli island with region.

``` r
anjouan(pref = TRUE)
```

<img src="man/figures/README-unnamed-chunk-6-1.png" width="100%" />

Plot Grande Comore island without region.

``` r
grandeComore()
```

<img src="man/figures/README-unnamed-chunk-7-1.png" width="100%" />

Plot Grande Comore island with region.

``` r
grandeComore(pref = TRUE)
```

<img src="man/figures/README-unnamed-chunk-8-1.png" width="100%" />
