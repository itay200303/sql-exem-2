SELECT COUNT(*)
FROM tours
LEFT JOIN tourists ON tours.id = tourists.tour_id
WHERE tourists.id IS NULL;