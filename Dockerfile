FROM rocker/rstudio:4.2.2
RUN Rscript -e "install.packages('renv', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN Rscript -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN Rscript -e "remotes::install_version('cowsay', version = '0.8.0', repos = 'https://cloud.r-project.org')"
RUN Rscript -e "install.packages('glue', repos = c(CRAN = 'https://cloud.r-project.org'))" 
# 'glue' use to test auto-builder on github
