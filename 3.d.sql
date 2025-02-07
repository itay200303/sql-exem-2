SELECT tourists.first_name, tourists.last_name, tourists.email, tourists.phone, tours.tour_name, tours.start_date, tours.end_date
FROM tourists
LEFT JOIN tours ON tourists.tour_id = tours.id
UNION
SELECT tourists.first_name, tourists.last_name, tourists.email, tourists.phone, tours.tour_name, tours.start_date, tours.end_date
FROM tours
LEFT JOIN tourists ON tourists.tour_id = tours.id;