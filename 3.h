SELECT tourists.first_name, tourists.last_name, tours.tour_name
FROM tourists
CROSS JOIN tours;