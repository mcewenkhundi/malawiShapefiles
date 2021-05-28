
<!-- README.md is generated from README.Rmd. Please edit that file -->

# malawiShapefiles

<!-- badges: start -->
<!-- badges: end -->

The goal of malawiShapefiles is to be the repository of Malawi
administrative and water body shapefiles

## Installation

You can install the released version of malawiShapefiles from
[CRAN](https://CRAN.R-project.org) with:

``` r
#install.packages("malawiShapefiles")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("mcewenkhundi/malawiShapefiles")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(malawiShapefiles)
library(sf)
#> Linking to GEOS 3.8.0, GDAL 3.0.4, PROJ 6.3.1
library(tidyverse)
#> -- Attaching packages --------------------------------------- tidyverse 1.3.0 --
#> v ggplot2 3.3.3          v purrr   0.3.4     
#> v tibble  3.1.1          v dplyr   1.0.5.9000
#> v tidyr   1.1.2          v stringr 1.4.0     
#> v readr   1.4.0          v forcats 0.5.0
#> Warning: package 'tibble' was built under R version 4.0.5
#> -- Conflicts ------------------------------------------ tidyverse_conflicts() --
#> x dplyr::filter() masks stats::filter()
#> x dplyr::lag()    masks stats::lag()
library(ggspatial)


ggplot() +
  geom_sf(data=malawi, aes(fill = bt_label)) +
  scale_fill_manual(values = alpha(c("#DDDDDD", "#FF851B")),guide=FALSE) +
  labs(y = "Latitude", 
       x = "Longitude",
       title = "Map of administrative districts of Malawi",
       subtitle = "Blantyre is marked orange") +
  geom_sf(data=malawi_lakes[malawi_lakes$NAME=="LAKE NYASA",], fill = "light blue", color = "blue") +
  theme_light() +
  annotation_scale(location = "bl", width_hint = 0.5) +
  annotation_north_arrow(location = "tr", style = north_arrow_fancy_orienteering)
```

<img src="man/figures/README-example-1.png" width="100%" />

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/master/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
