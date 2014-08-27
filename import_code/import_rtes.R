# Imports the latest versions of the RTEs from the repo that creates them


data(RTEs)
RTEs_old <- RTEs

# check location - we might be going to change this to make it year-specific
RTEs <- read.csv("P:/OTSP/Regional Estimation/Regional Estimates/create_rtes/dissemination_outputs/RTEs_concorded.csv")

# place in the data folder so it will be picked up
save(RTEs, file ="pkg/data/RTEs.rda")