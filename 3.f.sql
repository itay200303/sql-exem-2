SELECT tours.tour_name, tours.start_date, tours.end_date
FROM tours
LEFT JOIN tourists ON tours.id = tourists.tour_id
WHERE tourists.id IS NULL;
