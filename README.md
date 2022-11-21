Repo Introduction
================
Eric Viera
2022-11-21

# Project Description:

For this Info 550 project I decided to look into some of the statistics
surrounding income and housing inequality in Boston Massachusetts. I
grew up in the area and some of these issues can be quite prominent
depending on where in the city you travel. For this project I want to
look compare metrics such as ownership vs renting rates across
community, average income within a community, average bedroom count per
unit, etc. across racial groups and income levels in order to better
understand how inequalities are emphasized through modern housing
practices.

# Git Repository Contents:

## Home Folder:

1)  .gitignore : a gitignore file is included to ensure that all of the
    outputs from my local repository will not be available for download
    on my gitHub repository. Specifically all .rds and .png files in the
    output folder, all html and pdf files in the home folder, and some
    random local files that don’t serve any purpose to the project

2)  Makefile: This folder also includes a Make file which allows users
    to write make in the command line in order to render our Housing
    Data Report. Files used to make up this report are included within
    their own statements in the make file allowing for all the dependent
    files to be created when we actually ‘make’ our Make file.

3)  Housing_Data_Pt.1.Rmd: This is the actual report that we are
    rendering using our render report code and our Make file to compile

4)  README.Rmd: You are currently reading this description of my repo.
    Thank you for taking the time to do so ;)

## Code folder

1)  Clean data: This is just code that tidies up our raw data file so
    that we can better understand what each variable actually represents
    and saves the new data as a RDS object in the output folder

2)  Make table 1: This code is used to make our first table and save
    that table as a RDS object in the output folder so that it can be
    loaded into our report once it is rendered.

3)  Make figure 1: This code is used to make a basic scatterplot of our
    data and save that figure as a PNG image in the output folder so
    that it can be loaded into our report once it is rendered.

4)  Render report: This code will actually render our
    Housing_Data_Pt.1.Rmd file when ran. This along with all other
    objects created from our code are referenced in our Make file and
    will all collaboratively compile our report when typing ‘make’ in
    the command line, but you can run just this code to ensure that the
    report compiles as well!

## Output folder

This is where your table, figure, and clean data should be saved, but it
will be empty upon viewing my repo in Github.
