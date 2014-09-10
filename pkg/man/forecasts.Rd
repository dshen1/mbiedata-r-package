\name{forecasts}
\alias{forecasts}
\alias{forecasts}
\docType{data}
\title{
New Zealand tourism forecasts 2014 - 2020
}
\description{
New Zealand tourism forecasts 2014 - 2020
}
\usage{data(forecasts)}
\format{
 Provides total spend, spend per day, total visitors, total visitor days, and visitor arrivals for business, visiting friends and relatives, holiday and other purpose of visit.  Data from years dating before the ForecastYear are actuals; from the ForecastYear onwards they are forecasts (indicated by the variable "Type").
 
 }
\details{
These forecasts are produced for MBIE by NZIER and are based on factor-augmented vector autoregression models.
}
\source{
New Zealand Ministry of Business, Innovation and Employment
}
\references{
www.mbie.govt.nz
}

\seealso{

}

\examples{

data(forecasts)

final <- subset(forecasts, Year == max(Year))[, c("Country", "TotalVisitorSpend")]

forecasts$Country <- factor(forecasts$Country, levels=final$Country[order(-final$TotalVisitorSpend)])

ggplot(subset(forecasts, TotalVisitorSpend > 0), aes(x=Year, color=Country, linetype=Type, y=TotalVisitorSpend / 10 ^ 6)) +
  geom_line(size=2) +
  labs(x="", y="Total visitor spend ($m)\n", title="Tourism forecasts, New Zealand") +
  scale_color_manual(values=tourism.cols("Alternating"))


ggplot(forecasts, aes(x=TotalVisitorSpend / 10^6, y=TotalVisitorDays / 10^6, color=Year)) +
  geom_text(aes(label=Year), size=3) +
  geom_path() +
  facet_wrap(~Country, scale="free")

}
\keyword{datasets}
