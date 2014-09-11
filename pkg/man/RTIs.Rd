\name{RTIs}
\alias{RTIs}
\docType{data}
\title{
Regional Tourism Indicators
}
\description{
Regional Tourism Indicators
}
\usage{data(RTIs)}
\format{
 Eight data frames corresponding to four pivot tables and four straight rectangles of data.
 
 }
\details{
The Regional Tourism Indicators (RTIs) are indicators (index of spend, and actual count of a sample of transactions) of tourism activity in New Zealand's regions.  Full details available on the MBIE website.  The RTIs data object contains eight data frames, corresponding to the eight datasets released each month on the MBIE website.

The eight data frames are
\itemize{
 \item Dom_RTI_Visitor_Pivot_By_Commodity_published
 \item Int_RTI_Visitor_Pivot_By_Country_By_RTO_published
 \item  Int_RTI_Visitor_Pivot_By_Commodity_published
 \item Dom_RTI_Visitor_pivot_By_Origin_By_RTO_published
 \item Domestic_Spend_RTO_Indexes_published
 \item International_Spend_RTO_Indexes_published
 \item International_Spend_TLA_Indexes_published
 \item Domestic_Spend_TLA_Indexes_published
}
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

data(RTIs)
ggplot(subset(Dom_RTI_Visitor_Pivot_By_Commodity_published, 
				Indicator_type == "Index" & 
				Industry != "Education" & 
				Industry != "Non tourism-related"), 
			aes(x=Period, y=Value, colour=Industry)) +
			geom_line() +
			facet_wrap(~RTO) +
			scale_colour_brewer(palette="Set1")


}
\keyword{datasets}

