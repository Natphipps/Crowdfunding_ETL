# Crowdfunding_ETL
project 2 - collaborators: Kathy Parrott & Natalia Phipps

# Project Overview
The ETL mini project focused on building an ETL (extract, transform, load) pipeline using Python, Pandas, and Python dictionary methods to extract and transform the data. After the data was transformed properly, each dataframe was exported to a separate csv file. These csv files were used to create and ERD. Lastly, using our knowledge and skills of data engineering we used SQL to create a relational database for the four csv files.

# Resources
The jupyter notebook can be found in ETL_Mini_Project_KParrot_NPhipps.ipynb. The two excel files (crowdfunding.xlsx, contacts.xlsx) that were used to create the dataframes can be found in the Resources folder.

# Creating the category and subcategory dataframes
- Using the .str.split() method, we assigned the category & subcategory values into two different columns category, and subcategory.
- Then using list comprehension and numpy arrays we created category_ids, and subcategory_ids.
- Lastly we created the two dataframes using pandas.

- category dataframe:
  
![image](https://github.com/Natphipps/Crowdfunding_ETL/assets/130694752/7374a644-2ae5-4c8e-8963-00e3d26517b1)

- subcategory dataframe:
  
![image](https://github.com/Natphipps/Crowdfunding_ETL/assets/130694752/19f136c3-ce53-4600-ab89-1b7845d8a2bc)



# creating the campaign dataframe
- to clean the campaign dataframe we renamed the blurb, launched_at, and deadline columns to: description, launched_date, and end_date.
- We converted the goal and pledged values from objects to float. Then, using to_datetime, converted the launched_date and end_date to yyyy-mm-dd formats.
- The subcategory and category dataframes were merged with the campaign dataframe.
- Unwanted columns were dropped.

- campaign dataframe:
  
![image](https://github.com/Natphipps/Crowdfunding_ETL/assets/130694752/c12e4f5a-c934-4b0a-8974-74b3ae9cecac)

# creating contacts dataframe

- Using the contacts.xlsx we read the data into a pandas dataframe.
- We iterated through the dataframe and convert each row into a dictionary, then using list comprehension we extracted the values from their keys, and added the values for each row to a new list.
- A new dataframe was created that contained the extracted data.
- The name column was split into first_name, and last_name columns.

- contacts dataframe:
  
![image](https://github.com/Natphipps/Crowdfunding_ETL/assets/130694752/2ec6c39b-4c1d-460f-af2f-7bc2e03cb853)


# Create the crowdfunding database

- After inspecting the csv files, the following ERD was created:

![Crowdfunding_ETL_ERD](https://github.com/Natphipps/Crowdfunding_ETL/assets/130694752/b4be3bef-958a-4d6f-b5f1-82e056fa2b64)

- We used the information from the ERD to create a table schema for each csv file. The table schema can be found in the crowdfunding_db_schema.sql file.
- Tables were created to handle primary, and foreign keys.
- The data from each csv was imported into their corresponding SQL table.

- subcategory table:

![image](https://github.com/Natphipps/Crowdfunding_ETL/assets/130694752/fcd53014-e5cd-448c-a5b5-41c66958dd21)

- category table:

![image](https://github.com/Natphipps/Crowdfunding_ETL/assets/130694752/bacffa24-0e10-4973-b731-1e842a953ecc)

- contacts table:

![image](https://github.com/Natphipps/Crowdfunding_ETL/assets/130694752/b8b63dda-8ce9-4fd9-b77a-ff54dc31d7f7)

- campaign table:

![image](https://github.com/Natphipps/Crowdfunding_ETL/assets/130694752/0e81448f-803e-49ff-84a1-60d9e752d5d6)





  
