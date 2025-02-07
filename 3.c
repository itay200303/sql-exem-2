SELECT tourists.first_name, tourists.last_name, tours.tour_name, tours.start_date, tours.end_date
FROM tourists
LEFT JOIN tours ON tourists.tour_id = tours.id;