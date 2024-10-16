CREATE TABLE category (
  category_id VARCHAR(10) NOT NULL,
  category VARCHAR(30) NOT NULL,
  PRIMARY KEY (category_id)
);

select * from category;

CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) NOT NULL,
	subcategory VARCHAR(20) NOT NULL,
	PRIMARY KEY (subcategory_id)
);

select * from subcategory;



CREATE TABLE contacts (
	contact_id INT NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	email VARCHAR(50) NOT NULL,
	PRIMARY KEY (contact_id)
);

select * from contacts;


CREATE TABLE campaign (
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    description VARCHAR(100) NOT NULL,
    goal DECIMAL NOT NULL,  
    pledged DECIMAL NOT NULL,
    outcome VARCHAR(30) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(30) NOT NULL,
    currency VARCHAR(30) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(30) NOT NULL,
    subcategory_id VARCHAR(30) NOT NULL,
    PRIMARY KEY (cf_id),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

select * from campaign;
