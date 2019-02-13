-- Creates the table that will be populated by information on the people I reached out to for referrals
CREATE TABLE contact (
    contact_id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(15),
    lastname VARCHAR(15),
    relationship VARCHAR(50),
    job_title VARCHAR(25),
    company VARCHAR(25),
    date_contacted DATETIME,
    responded VARCHAR(3),
    met_up VARCHAR(3),
    referred VARCHAR(3)
);

-- Creates the table to hold the information about the people (HR) who coordinate and initiate the application process

CREATE TABLE interviewing_with (
    contact_id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(15),
    lastname VARCHAR(15),
    phone_screen DATE,
    on_site DATE,
    assignment DATE,
    final_round DATE,
    reference_check VARCHAR(3),
    num_references INT
);

-- Creates the table of job titles
CREATE TABLE jobs_salaries (
    job_title_id INT PRIMARY KEY AUTO_INCREMENT,
    job_title VARCHAR(25),
    estimated_salary INT
);

-- Makes companies table to store information on companies and industry and size
CREATE TABLE companies (
    company_id INT PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(25),
    industry_name VARCHAR(25),
    num_employees INT
);