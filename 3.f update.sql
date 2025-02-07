UPDATE tours
SET start_date = DATE(start_date, '+1 day'), end_date = DATE(end_date, '+1 day')
WHERE id IN (
    SELECT tours.id
    FROM tours
    LEFT JOIN tourists ON tours.id = tourists.tour_id
    WHERE tourists.id IS NULL
);