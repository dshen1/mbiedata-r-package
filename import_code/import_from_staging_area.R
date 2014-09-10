

latest_data <- dir("P:/otsp/data-infrastructure/mbiedata-r-package/staging_area")

if(sum(str_sub(latest_data, -3, -1) != "rda" ) > 0){
	stop("There are some files in the staging area without .rda extensions.")
}

if(length(latest_data) > 0){
	success <- file.copy(from = paste0("P:/otsp/data-infrastructure/mbiedata-r-package/staging_area/", latest_data),
	          to   = paste0("pkg/data/", latest_data),
			  overwrite = TRUE)
    if(success){
		file.remove(paste0("P:/otsp/data-infrastructure/mbiedata-r-package/staging_area/", latest_data))
		print(paste(length(latest_data), "files were successfully imported to the data folder of the package."))
	}	else {
		stop("Failed to copy all files from the staging area.")
		}
	}
