FROM rocker/r-ver:4.1.0
WORKDIR /workspace
RUN R -e "install.packages('renv', repos='https://cloud.r-project.org')"
COPY renv.lock renv/activate.R /workspace/
RUN R -e "renv::restore()"
CMD ["/bin/bash"]
