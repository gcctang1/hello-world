pollutantmean <- function(directory, pollutant, id=1:332) {


	files_full <- list.files(directory, full.names=TRUE)
	comb_data <- data.frame()
	
		for (i in seq_along(id)){
		
		df <- read.csv(files_full[id[i]])
		comb_data <- rbind(comb_data, df)

		mean_value <- mean(comb_data[,pollutant], na.rm=TRUE)
		
	}

	mean_value
}


complete <- function(directory, id=1:332) {


	files_full <- list.files(directory, full.names=TRUE)
	set <- data.frame()

	
		for (i in seq_along(id)){

		df <- read.csv(files_full[id[i]])
		nob <- sum(complete.cases(df))
		set <- rbind(set,c(id[i],nob))
		
		}	

	colnames(set) <- c("id", "nob")
	set
}

