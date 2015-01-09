library(stringr)
library(devtools)
library(knitr)
project_dir <- getwd()


# set the .libPaths to make sure it saves to the test libraries, not directly to the current production library
.libPaths(c("P:/r/libraries/AAA TEST LIBRARIES", .libPaths()))


# Import any data waiting in the staging area to be imported
source("import_code/import_from_staging_area.R")

# Build the package:
build(pkg="pkg", path= "P:/OTSP/data-infrastructure/archive/", binary=TRUE)
build(pkg="pkg", path= "P:/OTSP/data-infrastructure/archive/", binary=FALSE)

# Build the documentation
setwd("doc")
knit2pdf("mbiedata-documentation.Rnw")
setwd(project_dir)