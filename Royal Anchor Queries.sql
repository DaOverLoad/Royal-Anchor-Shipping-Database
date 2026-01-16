-- Tracking order status for Customers and Recipients orders 

    SELECT 
    book.booking_id,
    book.booking_date,
    cust.first_name AS Customer_Name,
    reci.first_name AS Recipient_Name,
    ord.order_id,
    ord.item_description, 
    ord.weight,
    ord.volume,
    ord.order_status
    FROM bookings book
    JOIN customers cust ON book.cust_id = cust.cust_id
    JOIN recipients reci ON book.recipient_id = reci.recipient_id
    JOIN orders ord ON book.booking_id = ord.booking_id
    ORDER BY book.booking_date, book.booking_id;


-- Which orders contain goods that weigh over 1000kg and what routes are they assigned to?

    SELECT 
    ord.order_id,
    ord.item_description,
    ord.weight,
    book.booking_id,
    vess.vessel_id,
    po.port_name AS destination 
    FROM orders ord
    JOIN bookings book ON ord.booking_id = book.booking_id
    JOIN vessel_schedules vess ON book.ves_schedules_id = vess.ves_schedules_id
    JOIN ports po ON vess.port_id = po.port_id
    WHERE weight > 1000 

-- Calculating the amount of crew members in each department

    SELECT cj.job_title,
        COUNT(cr.crew_id) AS total_crew 
    FROM crew cr 
    JOIN crew_jobs cj ON cr.job_id = cj.job_id
    GROUP BY cj.job_title
    ORDER BY total_crew DESC; 

-- Checking a Vessel Schedule  

    SELECT
    ve.vessel_name,
    vs.poort_id,
    po.port_name,
    TO_CHAR(vs.arrival_date, 'DD-Mon-YYYY') AS eta,
    TO_CHAR(vs.departure_date, 'DD-Mon-YYYY') AS etd
    FROM vessel ve
    JOIN vessel_schedules vs ON ve.vessel_id = vs.vessel_id
    JOIN ports po ON vs.port_id = po.port_id
    WHERE ve.vessel_name = 'RAC ULCV Spirit'
    ORDER BY vs.port_order; 

-- Counting the customs form per destination port 

    SELECT 
    oc.destination_port, 
    COUNT(cu.customs_id) AS customs_forms 
    FROM customs cu 
    JOIN order_container oc ON cu.container_id = oc.container_id
    GROUP BY oc.destination_port 
    ORDER BY customs_forms DESC; 

-- How many containers in transit, damaged or empty? 

    SELECT container_type_id, vessel_status, COUNT(*) AS count 
    FROM container_vessel
    GROUP BY container_type_id, vessel_status;
    