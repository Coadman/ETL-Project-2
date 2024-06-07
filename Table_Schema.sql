-- SCHEMA: crowdfunding_schema

-- DROP SCHEMA IF EXISTS crowdfunding_schema ;

CREATE SCHEMA IF NOT EXISTS crowdfunding_schema
    AUTHORIZATION postgres;
	
-- Create the contacts table
CREATE TABLE crowdfunding_schema.contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL
);

-- Create the category table
CREATE TABLE crowdfunding_schema.category (
    category_id VARCHAR(50) PRIMARY KEY,
    category VARCHAR(50) NOT NULL
);

-- Create the subcategory table
CREATE TABLE crowdfunding_schema.subcategory (
    subcategory_id VARCHAR(50) PRIMARY KEY,
    subcategory VARCHAR(50) NOT NULL
);

-- Create the crowdfunding_campaign table
CREATE TABLE crowdfunding_schema.crowdfunding_campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT NOT NULL,
    category_id VARCHAR(50) NOT NULL,
    subcategory_id VARCHAR(50) NOT NULL,
    company VARCHAR(50) NOT NULL,
    description VARCHAR(255) NOT NULL,
    goal INT NOT NULL,
    pledged INT,
    outcome VARCHAR(50),
    backers_count INT DEFAULT 0,
    country VARCHAR(50) NOT NULL,
    currency VARCHAR(50) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES crowdfunding_schema.contacts (contact_id),
    FOREIGN KEY (category_id) REFERENCES crowdfunding_schema.category (category_id),
    FOREIGN KEY (subcategory_id) REFERENCES crowdfunding_schema.subcategory (subcategory_id)
);

COPY 
