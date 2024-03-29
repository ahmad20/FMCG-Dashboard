my_packages = c("httr", "jsonlite", "shiny",
                "shinydashboard", "shinydashboardPlus", 
                "plotly", "tidyverse", "europepmc", "ggpubr")

###########################################################

install_if_missing = function(p) {
  if (p %in% rownames(installed.packages()) == FALSE) {
    install.packages(p, dependencies = TRUE)
  }
  else {
    cat(paste("Skipping already installed package:", p, "\n"))
  }
}
invisible(sapply(my_packages, install_if_missing))

###########################################################
