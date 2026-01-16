-- Crew Jobs Data 

    INSERT ALL
    INTO crew_jobs (job_id, job_title, rankings, department, job_description, certified)
    VALUES ('JB10', 'Captain', 'Officer', 'Deck', 'Master of the vessel', 'Y')
    INTO crew_jobs (job_id, job_title, rankings, department, job_description, certified)
    VALUES ('JB11', 'Chief Mate', 'Officer', 'Deck', 'Head of deck operations', 'Y')
    INTO crew_jobs (job_id, job_title, rankings, department, job_description, certified)
    VALUES ('JB12', 'Second Mate', 'Junior Officer', 'Deck', 'Navigation duties', 'Y')
    INTO crew_jobs (job_id, job_title, rankings, department, job_description, certified)
    VALUES ('JB13', 'Third Mate', 'Junior Officer', 'Deck', 'Safety equipment manager', 'Y')
    INTO crew_jobs (job_id, job_title, rankings, department, job_description, certified)
    VALUES ('JB14', 'Boatswain', 'Deck Crew', 'Deck', 'Lead deckhand operations', 'N')
    INTO crew_jobs (job_id, job_title, rankings, department, job_description, certified)
    VALUES ('JB15', 'Able Seaman', 'Deck Crew', 'Deck', 'Experienced deckhand', 'N')
    INTO crew_jobs (job_id, job_title, rankings, department, job_description, certified)
    VALUES ('JB16', 'Ordinary Seaman', 'Deck Crew', 'Deck', 'Junior deckhand', 'N')
    INTO crew_jobs (job_id, job_title, rankings, department, job_description, certified)
    VALUES ('JB17', 'Chief Engineer', 'Officer', 'Engine', 'Head of engine dept.', 'Y')
    INTO crew_jobs (job_id, job_title, rankings, department, job_description, certified)
    VALUES ('JB18', 'Second Engineer', 'Engineer', 'Engine', 'Assist Chief Engineer', 'Y')
    INTO crew_jobs (job_id, job_title, rankings, department, job_description, certified)
    VALUES ('JB19', 'Third Engineer', 'Engineer', 'Engine', 'Auxiliary engine ops', 'Y')
    INTO crew_jobs (job_id, job_title, rankings, department, job_description, certified)
    VALUES ('JB20', 'Fourth Engineer', 'Engineer', 'Engine', 'Engine room support', 'Y')
    INTO crew_jobs (job_id, job_title, rankings, department, job_description, certified)
    VALUES ('JB21', 'Motorman', 'Technician', 'Engine', 'Assist engine officers', 'N')
    INTO crew_jobs (job_id, job_title, rankings, department, job_description, certified)
    VALUES ('JB22', 'Oiler', 'Technician', 'Engine', 'Lubricates engine parts', 'N')
    INTO crew_jobs (job_id, job_title, rankings, department, job_description, certified)
    VALUES ('JB23', 'Wiper', 'Technician', 'Engine', 'Engine room cleaning', 'N')
    INTO crew_jobs (job_id, job_title, rankings, department, job_description, certified)
    VALUES ('JB24', 'Electrician', 'Technician', 'Engine', 'Maintains ship electrics', 'N')
    INTO crew_jobs (job_id, job_title, rankings, department, job_description, certified)
    VALUES ('JB25', 'Chief Cook', 'Catering Staff', 'Catering', 'Manages kitchen ops', 'N')
    INTO crew_jobs (job_id, job_title, rankings, department, job_description, certified)
    VALUES ('JB26', 'Cook', 'Catering Staff', 'Catering', 'Prepares daily meals', 'N')
    INTO crew_jobs (job_id, job_title, rankings, department, job_description, certified)
    VALUES ('JB27', 'Baker', 'Catering Staff', 'Catering', 'Bakes food items', 'N')
    INTO crew_jobs (job_id, job_title, rankings, department, job_description, certified)
    VALUES ('JB28', 'Steward', 'Catering Staff', 'Catering', 'Cabin service duties', 'N')
    INTO crew_jobs (job_id, job_title, rankings, department, job_description, certified)
    VALUES ('JB29', 'Messman', 'Catering Staff', 'Catering', 'Assists in mess hall', 'N')
    INTO crew_jobs (job_id, job_title, rankings, department, job_description, certified)
    VALUES ('JB30', 'Medic', 'Medical Officer', 'Medical', 'Provides medical care', 'Y')
    INTO crew_jobs (job_id, job_title, rankings, department, job_description, certified)
    VALUES ('JB31', 'Nurse', 'Medical Officer', 'Medical', 'Assists medical care', 'Y')
    INTO crew_jobs (job_id, job_title, rankings, department, job_description, certified)
    VALUES ('JB32', 'Radio Officer', 'Communication Officer', 'Communication', 'Handles
    communications', 'Y')
    INTO crew_jobs (job_id, job_title, rankings, department, job_description, certified)
    VALUES ('JB33', 'IT Officer', 'Communication Officer', 'Communication', 'Manages IT systems', 'N')
    SELECT * FROM dual;

-- Vessel Type Data 

    INSERT ALL
    INTO vessel_type (vessel_type_id, vessel_type, deadweight, tonnage, length, breadth, capacity, speed,
    quantity)
    VALUES ('VT01', 'ULCV (Ultra Large Container Vessel)', 220000, 195000, 400.0, 61.0, 24000, 22.5,
    5)
    INTO vessel_type (vessel_type_id, vessel_type, deadweight, tonnage, length, breadth, capacity, speed,
    quantity)
    VALUES ('VT02', 'VLCC (Very Large Crude Carrier)', 320000, 210000, 330.0, 60.0, 2000, 16.0, 4)
    INTO vessel_type (vessel_type_id, vessel_type, deadweight, tonnage, length, breadth, capacity, speed,
    quantity)
    VALUES ('VT03', 'Capesize Bulk Carrier', 180000, 150000, 290.0, 45.0, 200000, 14.5, 6)
    INTO vessel_type (vessel_type_id, vessel_type, deadweight, tonnage, length, breadth, capacity, speed,
    quantity)
    VALUES ('VT04', 'LNG Carrier', 135000, 130000, 295.0, 46.4, 175000, 19.5, 3)
    INTO vessel_type (vessel_type_id, vessel_type, deadweight, tonnage, length, breadth, capacity, speed,
    quantity)
    VALUES ('VT05', 'RORO Vessel', 50000, 67000, 200.0, 32.0, 6500, 20.0, 4)
    INTO vessel_type (vessel_type_id, vessel_type, deadweight, tonnage, length, breadth, capacity, speed,
    quantity)
    VALUES ('VT06', 'PCTC (Car Carrier)', 20000, 72000, 200.0, 32.2, 8000, 21.0, 6)
    INTO vessel_type (vessel_type_id, vessel_type, deadweight, tonnage, length, breadth, capacity, speed,
    quantity)
    VALUES ('VT07', 'Panamax Container Ship', 65000, 58000, 294.0, 32.2, 5200, 24.0, 7)
    INTO vessel_type (vessel_type_id, vessel_type, deadweight, tonnage, length, breadth, capacity, speed,
    quantity)
    VALUES ('VT08', 'Handysize Bulk Carrier', 38000, 25000, 180.0, 30.0, 35000, 13.5, 8)
    INTO vessel_type (vessel_type_id, vessel_type, deadweight, tonnage, length, breadth, capacity, speed,
    quantity) VALUES ('VT09', 'Feeder Container Ship', 12000, 10000, 140.0, 22.0, 1000, 18.0, 10)
    INTO vessel_type (vessel_type_id, vessel_type, deadweight, tonnage, length, breadth, capacity, speed,
    quantity)
    VALUES ('VT10', 'Small LNG Carrier', 10000, 15000, 130.0, 20.0, 30000, 16.5, 5)
    INTO vessel_type (vessel_type_id, vessel_type, deadweight, tonnage, length, breadth, capacity, speed,
    quantity)
    VALUES ('VT11', 'Multipurpose Cargo Ship', 25000, 20000, 175.0, 26.0, 23000, 15.0, 9)
    INTO vessel_type (vessel_type_id, vessel_type, deadweight, tonnage, length, breadth, capacity, speed,
    quantity)
    VALUES ('VT12', 'Supramax Bulk Carrier', 58000, 50000, 200.0, 32.2, 57000, 14.0, 5)
    INTO vessel_type (vessel_type_id, vessel_type, deadweight, tonnage, length, breadth, capacity, speed,
    quantity)
    VALUES ('VT13', 'Heavy Lift Vessel', 16000, 17000, 150.0, 25.0, 18000, 17.0, 3)
    SELECT * FROM dual;

-- Service Routes Data 

    INSERT ALL
    INTO service_routes (route_id, route_name, number_of_stops, route)
    VALUES ('SR01', 'Route 1 - Shanghai to Rotterdam', 8, 'Shanghai, China → Rotterdam, Netherlands')
    INTO service_routes (route_id, route_name, number_of_stops, route)
    VALUES ('SR02', 'Route 2 - New York to Yokohama', 5, 'New York, USA → Yokohama, Japan')
    INTO service_routes (route_id, route_name, number_of_stops, route)
    VALUES ('SR03', 'Route 3 - Montreal to Hamburg', 6, 'Montreal, Canada → Hamburg, Germany')
    INTO service_routes (route_id, route_name, number_of_stops, route)
    VALUES ('SR04', 'Route 4 - Mumbai to London', 7, 'Mumbai, India → London, UK')
    INTO service_routes (route_id, route_name, number_of_stops, route)
    VALUES ('SR05', 'Route 5 - St. Petersburg to Lisbon', 5, 'St. Petersburg, Russia → Lisbon, Portugal')
    INTO service_routes (route_id, route_name, number_of_stops, route)
    VALUES ('SR06', 'Route 6 - Dublin to Sydney', 9, 'Dublin, Ireland → Sydney, Australia')
    INTO service_routes (route_id, route_name, number_of_stops, route)
    VALUES ('SR07', 'Route 7 - Perth to New York', 9, 'Perth, Australia → New York, America')
    INTO service_routes (route_id, route_name, number_of_stops, route)
    VALUES ('SR08', 'Route 8 - Singapore to Los Angeles', 10, 'Singapore → Los Angeles, USA')
    INTO service_routes (route_id, route_name, number_of_stops, route)
    VALUES ('SR09', 'Route 9 - Cape Town to Shanghai', 7, 'Cape Town, South Africa → Shanghai,
    China')
    INTO service_routes (route_id, route_name, number_of_stops, route)
    VALUES ('SR10', 'Route 10 - Busan to Santos', 8, 'Busan, South Korea → Santos, Brazil')
    SELECT * FROM dual;

-- Container Type Insert Data 

    INSERT ALL
    INTO container_type (container_type_id, cont_name, cont_type, length, width, height, capacity, TEU,
    tare, max_payload, quantity)
    VALUES ('CT03', 'Standard 20ft Dry', 'Dry', 6.06, 2.44, 2.59, 33, 1, 2300, 28200, 500)
    INTO container_type (container_type_id, cont_name, cont_type, length, width, height, capacity, TEU,
    tare, max_payload, quantity)
    VALUES ('CT04', 'Standard 40ft Dry', 'Dry', 12.19, 2.44, 2.59, 67, 2, 3800, 26480, 400)
    INTO container_type (container_type_id, cont_name, cont_type, length, width, height, capacity, TEU,
    tare, max_payload, quantity)
    VALUES ('CT05', 'High Cube 40ft Dry', 'Dry', 12.19, 2.44, 2.89, 76, 2, 4000, 26500, 300)
    INTO container_type (container_type_id, cont_name, cont_type, length, width, height, capacity, TEU,
    tare, max_payload, quantity)
    VALUES ('CT06', 'Reefer 20ft', 'Reefer', 6.06, 2.44, 2.59, 28, 1, 3050, 27000, 150)
    INTO container_type (container_type_id, cont_name, cont_type, length, width, height, capacity, TEU,
    tare, max_payload, quantity)
    VALUES ('CT07', 'Reefer 40ft', 'Reefer', 12.19, 2.44, 2.59, 58, 2, 4500, 25500, 120)
    INTO container_type (container_type_id, cont_name, cont_type, length, width, height, capacity, TEU,
    tare, max_payload, quantity)
    VALUES ('CT08', 'Flat Rack 20ft', 'Flat Rack', 6.06, 2.44, 2.13, 30, 1, 2500, 31000, 100)
    INTO container_type (container_type_id, cont_name, cont_type, length, width, height, capacity, TEU,
    tare, max_payload, quantity)
    VALUES ('CT09', 'Flat Rack 40ft', 'Flat Rack', 12.19, 2.44, 2.13, 62, 2, 5200, 40000, 90)
    INTO container_type (container_type_id, cont_name, cont_type, length, width, height, capacity, TEU,
    tare, max_payload, quantity)
    VALUES ('CT10', 'Open Top 20ft', 'Open Top', 6.06, 2.44, 2.59, 32, 1, 2300, 28000, 80)
    INTO container_type (container_type_id, cont_name, cont_type, length, width, height, capacity, TEU,
    tare, max_payload, quantity)
    VALUES ('CT11', 'Open Top 40ft', 'Open Top', 12.19, 2.44, 2.59, 66, 2, 3900, 26500, 70)
    INTO container_type (container_type_id, cont_name, cont_type, length, width, height, capacity, TEU,
    tare, max_payload, quantity)
    VALUES ('CT12', 'Tank 20ft', 'Tank', 6.06, 2.44, 2.59, 25, 1, 3200, 26000, 60)
    INTO container_type (container_type_id, cont_name, cont_type, length, width, height, capacity, TEU,
    tare, max_payload, quantity)
    VALUES ('CT13', 'Ventilated 20ft', 'Ventilated', 6.06, 2.44, 2.59, 33, 1, 2300, 28000, 50)
    SELECT * FROM dual;
    