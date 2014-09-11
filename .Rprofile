 
 # the usual command to point the libraries at the right spot
 .libPaths(c(.libPaths(), "P:/R/libraries/current"))

 # Set the library path so the Test folder is listed first and the installation will be to there,
# rather than to the folder used for libraries by everyone
.libPaths(c("P:/r/libraries/AAA TEST LIBRARIES", .libPaths()))


 library(utils)
 library(Defaults)
 library(mbie)
 library(mbiedata)
 
 setDefaults(q, save="no")
 useDefaults(q)
 Sys.setenv(PDFLATEX="xelatex")
 setInternet2(TRUE) 
 Sys.setenv(R_GSCMD = '"C:/Program Files (x86)/gs/gs8.54/bin/gswin32c.exe"')
 Sys.setenv(SDMX_CONF = "P:/R/configuration.properties")


#============ set up latex environment ============ #
## replace miktex package folder to a customized one
if(file.exists("P:/MiKTeX/libraries/miktex-portable-current")) {
  system("initexmf --register-root=P:/MiKTeX/libraries/miktex-portable-current/")
  system("initexmf -u")
} else if(file.exists(paste0(substr(getwd(),1,2),"/MiKTeX/libraries/miktex-portable-current"))){
  system(paste0("initexmf --register-root=",substr(getwd(),1,2),"/MiKTeX/libraries/miktex-portable-current"))
  system("initexmf -u")
}

## include mbie package 
if(file.exists("P:/MiKTeX/libraries/mbie-template-release")){
  LatexStylesDir <- "P:/MiKTeX/libraries/mbie-template-release/"
} else if(file.exists(paste0(substr(getwd(),1,2),"/MiKTeX/libraries/mbie-template-release"))) {
  LatexStylesDir <- paste0(substr(getwd(),1,2),"/MiKTeX/libraries/mbie-template-release")
}

if(!grepl(LatexStylesDir,Sys.getenv("TEXINPUTS"))){
  Sys.setenv(TEXINPUTS = paste0(LatexStylesDir,";",Sys.getenv("TEXINPUTS")))
} 
Sys.setenv(BIBINPUTS = paste0(getwd(),"/knitr/;",Sys.getenv("BIBINPUTS")))
#============ set up latex environment ============ #