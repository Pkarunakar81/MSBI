
Define data warehouse: -

Data warehousing (DW) is a method of gathering and analyzing data from many sources in order to get useful business insights
Star Schema,Snowflake Schema
1.	What is the difference between Char and VARCHAR
2.	What is difference between VARCHAR and NVARCHAR
3.	What are different Types of Constraints Available in SQL Server
4.	How to Enable Change Data Capture(CDC) on Database in SQL Server
5.	How to Disable Change Data Capture(CDC) on Database in SQL Server

What is Data Mining?


Data mining is analyzing data from different perspectives, dimensions, and patterns and summarizing them into meaningful content. Data is often retrieved or queried from the database in its format. On the other hand, it can be defined as the method or process of turning raw data into useful information.

Data Lake


A data lake is a centralized repository for structure and unstructured data storage. It can be used to store raw data without any structure schema, and there is no need to perform any ETL or transformation job. Any type of data can be stored here, like images, text, files, and videos, and even it can store machine learning model artifacts, real-time and analytics output, etc. Data retrieval processing can be done via export, so the schema is defined on reading. It mainly stores raw and unprocessed data. The main focus is to capture and store as much data as possible.



What is Data Modelling?


Data Modelling is a very simple step of simplifying an entity here in the concept of data engineering. It will simplify complex software by simply breaking it up into diagrams and further breaking it into flow charts. Flowcharts are a simple representation of how a complex entity can be broken down into a simple diagram. This will give a visual representation, an easier understanding of the complex problem, and even better readability to a person who might not be proficient in that particular software usage.
 
What is a dimensional model in a data warehouse?


A dimensional model is a design approach for organizing data in a data warehouse. It consists of fact tables and dimension tables. Fact tables store quantitative data (e.g., sales, cost, revenue) and are typically linked to one or more dimension tables, which store descriptive data (e.g., product, customer, time). Dimensional modeling lets users quickly understand and analyze data by breaking it down into smaller, more manageable pieces.

What is a Fact? What are the types of Facts?


A fact may be a central component of a multi-dimensional model that contains the measures to be analyzed. Facts are related to dimensions.

Types of facts are:

●	Additive Facts

●	Semi-additive Facts
●	Non-additive Facts



What is the Data Pipeline?


Data Pipeline refers to any set of process elements that move data from one system to a different one. Data Pipeline is often built for an application that uses data to bring value. It is often used to integrate the info across the applications, build info-driven web products, and complete data mining activities. Data engineers build the data pipeline.

What is Dimensional Data Modeling?


Dimensional modeling is a set of guidelines to design database table structures for easier and faster data retrieval. It is a widely accepted technique. The benefits of using dimensional modeling are its simplicity and faster query performance. Dimension modeling elaborates logical and physical data models to further detail model data and data-related requirements. Dimensional models map the aspects of every process within the business.

Dimensional Modelling is a core design concept used by many data warehouse designers design data warehouses. During this design model, all the info is stored in two sorts of tables.
 

●	Facts table

●	Dimension table
 
The fact table contains the facts or measurements of the business, and the dimension table contains the context of measurements by which the facts are calculated. Dimension modeling is a method of designing a data warehouse.

Types of Dimensional Modelling are listed below:

●	Conceptual Modelling

●	Logical Modelling
●	Physical Modelling

