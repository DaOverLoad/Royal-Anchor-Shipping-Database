-- Creating multple tables for the database


-- Vessel Type table:

    CREATE TABLE vessel_type (
    vessel_type_id VARCHAR2(5) PRIMARY KEY,
    vessel_type VARCHAR2(50) NOT NULL,
    deadweight NUMBER(6),
    tonnage NUMBER(6) NOT NULL,
    length FLOAT,
    breadth FLOAT,
    capacity NUMBER(6) NOT NULL,
    speed FLOAT NOT NULL,
    quantity NUMBER(2) NOT NULL);

-- Vessel table

    CREATE TABLE vessel (
    vessel_id VARCHAR2(4) PRIMARY KEY,
    vessel_type_id VARCHAR2(4),
    vessel_name VARCHAR2(50) NOT NULL,
    IMO NUMBER(10) NOT NULL,
    MMSI NUMBER(10) NOT NULL,
    AIS_type_code NUMBER(2),
    AIS_flag NUMBER(3) NOT NULL,
    callsign NUMBER(5) NOT NULL,
    gross_tonnage FLOAT NOT NULL,
    date_built DATE NOT NULL,
    CONSTRAINT fk_vessel_type
    FOREIGN KEY (vessel_type_id)
    REFERENCES vessel_type(vessel_type_id));

-- Crew Contact table

    CREATE TABLE crew_contact (
    crew_info_id VARCHAR(5) PRIMARY KEY,
    phone VARCHAR2(16) NOT NULL,
    email VARCHAR2(50) NOT NULL,
    emergency_contact_name VARCHAR2(50) NOT NULL,
    emergency_contact_phone VARCHAR2(16) NOT NULL,
    address VARCHAR2(100),
    postal_code VARCHAR2(12),
    country VARCHAR2(20) NOT NULL);

-- Crew Employment table

    CREATE TABLE crew_employment (
    employ_id VARCHAR2(5) PRIMARY KEY,
    employment_status VARCHAR2(12) NOT NULL,
    hire_date DATE NOT NULL,
    employment_date DATE NOT NULL,
    employment_end DATE NOT NULL,
    contract_expiry DATE NOT NULL,
    passport_num VARCHAR2(9) NOT NULL);

    -- To run after crew table is added 
    ALTER TABLE crew_employment
    ADD crew_id VARCHAR2(5);

    ALTER TABLE crew_employment
    ADD CONSTRAINT fk_employment_crew_id
    FOREIGN KEY (crew_id)
    REFERENCES crew(crew_id);

-- Crew Certification table
    CREATE TABLE crew_certification (
    cert_id VARCHAR2(5) PRIMARY KEY,
    certificate_type VARCHAR2(26) NOT NULL,
    certificate_expiry DATE NOT NULL,
    licence_number VARCHAR(16) NOT NULL,
    medical_exp_date DATE NOT NULL,
    sefarer_book_number VARCHAR2(16) NOT NULL);

    -- To run after crew table is added 

    ALTER TABLE crew_certification
    ADD crew_id VARCHAR2(5)
    ADD CONSTRAINT fk_certification_crew_id
    FOREIGN KEY (crew_id)
    REFERENCES crew(crew_id);

--  Crew Salary table 
    CREATE TABLE crew_salary (
    salary_id VARCHAR2(5) PRIMARY KEY,
    pay_rate VARCHAR2(7) NOT NULL,
    sortcode NUMBER(6) NOT NULL,
    account_num NUMBER(8) NOT NULL,
    payment_currency VARCHAR2(6) DEFAULT '£',
    tax_status VARCHAR2(11) NOT NULL,
    salary FLOAT NOT NULL);

-- Crew Job table
    CREATE TABLE crew_jobs (
    job_id VARCHAR2(4) PRIMARY KEY,
    job_title VARCHAR2(24) NOT NULL,
    rankings VARCHAR2(30) NOT NULL,
    department VARCHAR2(14) NOT NULL,
    job_description VARCHAR2(30) NOT NULL,
    certified VARCHAR2(1) DEFAULT 'N');

-- Crew table 

    CREATE TABLE crew (
    crew_id VARCHAR2(5) PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR2(12) DEFAULT 'Undisclosed',
    nationality VARCHAR2(40),
    country VARCHAR2(40) NOT NULL,
    job_id VARCHAR2(4),
    employ_id VARCHAR2(5),
    cert_id VARCHAR2(5),
    salary_id VARCHAR2(5),
    crew_info_id VARCHAR2(5),
    vessel_id VARCHAR2(5),
    CONSTRAINT fk_job_id FOREIGN KEY (job_id) REFERENCES crew_jobs(job_id),
    CONSTRAINT fk_employ_id FOREIGN KEY (employ_id) REFERENCES
    crew_employment(employ_id),
    CONSTRAINT fk_cert_id FOREIGN KEY (cert_id) REFERENCES crew_certification(cert_id),
    CONSTRAINT fk_salary_id FOREIGN KEY (salary_id) REFERENCES crew_salary(salary_id),
    CONSTRAINT fk_crew_info_id FOREIGN KEY (crew_info_id) REFERENCES
    crew_contact(crew_info_id),
    CONSTRAINT fk_vessel_id FOREIGN KEY (vessel_id) REFERENCES vessel(vessel_id));

    -- Alter table 
        ALTER TABLE crew
        DROP COLUMN employ_id CASCADE CONSTRAINTS
        ALTER TABLE crew
        DROP COLUMN cert_id CASCADE CONSTRAINTS

-- Port table
    CREATE TABLE ports(
    port_id VARCHAR2(4) PRIMARY KEY,
    port_name VARCHAR2(50) NOT NULL,
    port_code VARCHAR2(30) NOT NULL,
    city VARCHAR2(50) NOT NULL,
    country VARCHAR2(20) NOT NULL,
    longitude FLOAT NOT NULL,
    latitude FLOAT NOT NULL,
    timezone VARCHAR2(12) NOT NULL);

-- Office table 

    CREATE TABLE office (
    office_id VARCHAR2(4) PRIMARY KEY,
    office_name VARCHAR2(30) NOT NULL,
    office_branch VARCHAR2(30) NOT NULL,
    address VARCHAR2(200) NOT NULL,
    postal_code VARCHAR2(12) NOT NULL,
    country VARCHAR2(20) NOT NULL,
    phone NUMBER(12) NOT NULL,
    email VARCHAR2(50) NOT NULL,
    longitude FLOAT NOT NULL,
    latitude FLOAT NOT NULL,
    port_id VARCHAR2(4),
    CONSTRAINT fk_port_id FOREIGN KEY (port_id) REFERENCES ports(port_id));

-- Container Type table 

    CREATE TABLE container_type (
    container_type_id VARCHAR2(5) PRIMARY KEY,
    cont_name VARCHAR2(30) NOT NULL,
    cont_type VARCHAR2(20) NOT NULL,
    length FLOAT NOT NULL,
    width FLOAT NOT NULL,
    height FLOAT NOT NULL,
    capacity NUMBER(6) NOT NULL,
    TEU NUMBER(1) NOT NULL,
    tare NUMBER(5),
    max_payload NUMBER(6) NOT NULL,
    quantity NUMBER(4));

-- Container Vessel table

    CREATE TABLE container_vessel (
    container_id VARCHAR2(5) PRIMARY KEY,
    cont_number VARCHAR2(30) NOT NULL,
    container_type_id VARCHAR2(5),
    vessel_status VARCHAR2(20),
    current_location VARCHAR2(20),
    created_date DATE NOT NULL,
    last_inspections DATE NOT NULL,
    CONSTRAINT fk_container_type_id FOREIGN KEY (container_type_id) REFERENCES
    container_type(container_type_id));

-- Service Routes table

    CREATE TABLE service_routes (
    route_id VARCHAR(4) PRIMARY KEY,
    route_name VARCHAR(40) NOT NULL,
    number_of_stops NUMBER(10) NOT NULL,
    route VARCHAR(100) NOT NULL);

-- Route Stop table 

    CREATE TABLE route_stop (
    stop_id VARCHAR2(4) PRIMARY KEY,
    route_id VARCHAR2(4),
    port_id VARCHAR2(4),
    stop_order NUMBER(2) NOT NULL,
    CONSTRAINT fk_route_id FOREIGN KEY (route_id) REFERENCES service_routes(route_id),
    CONSTRAINT fk_route_port_id FOREIGN KEY (port_id) REFERENCES ports(port_id));

-- Vessel Schedules table

    CREATE TABLE vessel_schedules (
    ves_schedule_id VARCHAR2(5) PRIMARY KEY,
    vessel_id VARCHAR2(4),
    route_id VARCHAR2(4),
    port_id VARCHAR2(4),
    departure_date DATE NOT NULL,
    arrival_date DATE NOT NULL,
    port_order NUMBER(2),
    current_stop NUMBER(2) NOT NULL,
    CONSTRAINT fk_vessel_schedules_id FOREIGN KEY (vessel_id) REFERENCES vessel(vessel_id),
    CONSTRAINT fk_vessel_route_id FOREIGN KEY (route_id) REFERENCES
    service_routes(route_id),
    CONSTRAINT fk_vessel_port_id FOREIGN KEY (port_id) REFERENCES ports(port_id));

-- Order Container table 

    CREATE TABLE order_container (
    order_container_id VARCHAR2(6) PRIMARY KEY,
    vessel_id VARCHAR2(4),
    container_id VARCHAR2(5),
    container_number VARCHAR2(12) DEFAULT 'Processing',
    order_status VARCHAR2(20) NOT NULL,
    pickup_port VARCHAR2(40) NOT NULL,
    destination_port VARCHAR2(40) NOT NULL,
    CONSTRAINT fk_order_vessel_id FOREIGN KEY (vessel_id) REFERENCES vessel(vessel_id),
    CONSTRAINT fk_order_container_id FOREIGN KEY (container_id) REFERENCES
    container_vessel(container_id));

-- Customers table 
    CREATE TABLE customers(
    cust_id VARCHAR2(6) PRIMARY KEY,
    company_name VARCHAR2(50),
    first_name VARCHAR2(20) NOT NULL,
    last_name VARCHAR2(30) NOT NULL,
    email VARCHAR2(100) NOT NULL,
    address VARCHAR2(100) NOT NULL,
    postal_code VARCHAR2(12) NOT NULL,
    country VARCHAR2(100) NOT NULL,
    phone VARCHAR2(18) NOT NULL,
    customer_type VARCHAR2(30) NOT NULL);

-- Recipients table 
    CREATE TABLE recipients(
    recipient_id VARCHAR2(6) PRIMARY KEY,
    first_name VARCHAR2(20) NOT NULL,
    last_name VARCHAR2(30) NOT NULL,
    phone VARCHAR2(18) NOT NULL,
    email VARCHAR2(100) NOT NULL,
    address VARCHAR2(100) NOT NULL,
    city VARCHAR2(50) NOT NULL,
    state_province VARCHAR2(50),
    postal_code VARCHAR2(12) NOT NULL,
    country VARCHAR2(50) NOT NULL);

-- Bookings table
    CREATE TABLE bookings(
    booking_id VARCHAR2(8) PRIMARY KEY,
    cust_id VARCHAR2(6),
    recipient_id VARCHAR2(6),
    ves_schedule_id VARCHAR2(5),
    container_id VARCHAR2(5),
    booking_date DATE DEFAULT sysdate,
    booking_status VARCHAR2(20) DEFAULT 'Processing',
    CONSTRAINT fk_booking_cust_id FOREIGN KEY (cust_id) REFERENCES customers(cust_id),
    CONSTRAINT fk_booking_recipient_id FOREIGN KEY (recipient_id) REFERENCES
    recipients(recipient_id),
    CONSTRAINT fk_bokking_ves_shedule_id FOREIGN KEY (ves_schedule_id) REFERENCES
    vessel_schedules(ves_schedule_id),
    CONSTRAINT fk_booking_container_vessel_id FOREIGN KEY (container_id) REFERENCES
    container_vessel(container_id));

-- Orders table 

    CREATE TABLE orders(
    order_id VARCHAR2(6) PRIMARY KEY,
    booking_id VARCHAR2(8),
    item_description VARCHAR2(200) NOT NULL,
    weight FLOAT NOT NULL,
    volume FLOAT NOT NULL,
    order_status VARCHAR2(20) DEFAULT 'Processing',
    CONSTRAINT fk_order_booking_id FOREIGN KEY (booking_id) REFERENCES
    bookings(booking_id));

-- Customs table

    CREATE TABLE customs(
    customs_id VARCHAR2(5) PRIMARY KEY,
    order_id VARCHAR2(6),
    container_id VARCHAR2(5),
    country VARCHAR2(200) NOT NULL,
    inspection_status VARCHAR2(30) NOT NULL,
    tarrif_rate VARCHAR2(6) DEFAULT '0%',
    tarrif_price FLOAT NOT NULL,
    currency_code VARCHAR(6) DEFAULT '£',
    hs_code NUMBER(10) NOT NULL,
    CONSTRAINT fk_customs_order_id FOREIGN KEY (order_id) REFERENCES orders(order_id),
    CONSTRAINT fk_customs_container_id FOREIGN KEY (container_id) REFERENCES
    container_vessel(container_id))

-- Tracker table 

    CREATE TABLE tracker (
    tracker_id VARCHAR2(6) PRIMARY KEY,
    order_id VARCHAR2(6),
    location VARCHAR2(20) DEFAULT 'Processing',
    tracker_status VARCHAR2(20) DEFAULT 'Pending',
    last_update VARCHAR2(30) NOT NULL,
    port_id VARCHAR2(4),
    CONSTRAINT fk_tracker_order_id FOREIGN KEY (order_id) REFERENCES orders(order_id),
    CONSTRAINT fk_tracker_port_id FOREIGN KEY (port_id) REFERENCES ports(port_id));

