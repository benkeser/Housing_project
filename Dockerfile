#Because I am doing development from command line
FROM rocker/r-ubuntu
RUN apt-get update && apt-get install -y pandoc zlib1g-dev

#Creating directory in my image
RUN mkdir /project
WORKDIR /project


#Copy over all renv files
COPY .Rprofile .
COPY renv.lock .

#Copy Makefile, config file, and hiv_report.Rmd
COPY config.yml .
COPY Makefile .
COPY Housing_Data_Pt.1.Rmd .

#Create renv folder that is the same as in the local project directory
RUN mkdir renv
COPY renv/activate.R renv
COPY renv/settings.dcf renv


#Call upon renv to make sure we have necessary packages
RUN Rscript -e "renv::restore(prompt = FALSE)"

#Create Environment Variable 
ENV WHICH_CONFIG  "default"

#Create code, output, raw_data, and final_report directories in our image
RUN mkdir code

RUN mkdir output

RUN mkdir raw_data
COPY raw_data/HousingData.csv raw_data

COPY code code

RUN mkdir final_report


#Make and move the report over
CMD make && mv Housing_Data_Pt.1.html final_report