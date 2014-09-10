# Import the forecasts from TRED and save as an .rda

library(RODBC)

TRED_Prod <- odbcConnect("TRED_Prod")

forecasts <- sqlFetch(TRED_Prod, "NZTFSurveyMainHeader")
forecasts <- subset(forecasts, Year != 0)
is.na(forecasts$SpendPerDay[forecasts$SpendPerDay == 0]) <- TRUE
is.na(forecasts$TotalVisitorSpend[forecasts$TotalVisitorSpend == 0]) <- TRUE
forecasts$Type <- with(forecasts, ifelse(Year < ForecastYear, "Actual", "Forecast"))

save(forecasts, file="pkg/data/forecasts.rda")

# example usage
# ggplot(forecasts, aes(x=Year, colour=Country, y = TotalVisitorDays, linetype=Type)) + geom_line()

