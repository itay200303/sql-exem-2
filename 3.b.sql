SELECT tourists.first_name, tourists.last_name, tours.tour_name, tours.start_date, tours.end_date
FROM tourists
INNER JOIN tours ON tourists.tour_id = tours.id
WHERE tourists.tour_id IS NOT NULL;