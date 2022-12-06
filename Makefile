Housing_report.html: Housing_Data_Pt.1.Rmd code/03_Render_report.R clean_data table1 figure1
	Rscript code/03_Render_report.R
	
clean_data:
	Rscript code/00_clean_data.R
table1:
	Rscript code/01_Make_table1.R
figure1:
	Rscript code/02_Make_figure1.R
	
.PHONY: clean
clean:
	rm -f output/*.rds && rm -f *.html && rm -f final_report/*.html
.PHONY: install

install: 
	R -e "renv::restore(prompt = FALSE)"
#Works for Mac and windows 
final_report/report.html:
	docker run -v "/$$(pwd)"/final_report:/project/final_report edviera16/house_proj