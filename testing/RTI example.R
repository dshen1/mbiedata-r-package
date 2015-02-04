library(extrafont)

data(RTIs_int)
ggplot(subset(Int_RTI_Visitor_Pivot_By_Commodity_published, 
              Indicator_type == "Index" & 
                Industry != "Education" & 
                Industry != "Non tourism-related" &
                RTO == "Total (all RTOs)"), 
       aes(x=Period, y=Value)) +
  stat_sa() +
  facet_wrap(Industry~RTO, nrow=4) +
  ggtitle("Regional Tourism Indicators - International") +
  labs(y="Index (2008 = 100), seasonally adjusted \n") +
  theme_grey(base_family="Calibri")