Project 2
Extract, Transform, & Load

Requirements:
• Gather Data from at least 2 sources (screen scrape, API save, downloaded csv files)  Onelargesourceisacceptableifthetransformationprocessislarger.
• Store Data in csv, JSON, or MongoDB
• Extract the data from the raw data and read with python / pandas
• Clean the data and transform the data to SQL database
• Create ERD for the Database (At least 2 normalizations / deduplications / joins / etc.)
• Load the transformed data into the database

Deliverables:
• 1 - Python / Jupyter Notebook to collect the data (reading data from excel files)

• 1 – Python / Jupyter Notebook to transform the data and load into SQL database (transforming data into tables and dataframes)
        Thiscanbetwofiles,onetotransformdataandonetoloadthedata.

• 1 – ERD Diagram for the SQL Database (pgAdmin)
• 1 – Script to create database schema

• 1 – Documentation on how to run in the projects README.md file
• 1 – Link to the project GitHub
        Donotincludethedata,onlytheinstructionsforgettingthedata


Documentation:

1. Open and Run All Cells from Data_Extraction.ipynb

2. Open and Run All Cells from Data_Transformation.ipynb

3. Open and Run the Table_Schema.sql file
4. With the Table_Schema.sql file open import the data for the corresponding tables. 
        each file should match the name of the table except for the contacts and crowdfunding campaign files, use the files that are labeled transformed. 

        Use the import/export data tool via pgAdmin  to import data

5. Open the Data_Validation.sql to pull the data from each table. 
6. Close All Files