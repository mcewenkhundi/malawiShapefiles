library(usethis)
library(here)
create_package(path=here())
use_readme_rmd()
use_mit_license("McEwen Khundi")
use_data_raw()
#Create dir for figures
dir.create(here("figures"),)
#Create dir for docs
dir.create(here("docs"))
dir.create(here("data"))
