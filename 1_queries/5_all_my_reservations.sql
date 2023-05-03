SELECT reservations.id, properties.title, properties.cost_per_night, reservations.start_date, AVG(property_reviews.rating) AS average_rating
FROM properties
JOIN reservations ON properties.id = reservations.property_id
JOIN property_reviews ON property_reviews.property_id = properties.id
WHERE reservations.guest_id = 1
GROUP BY reservations.id, properties.id
ORDER BY start_date
LIMIT 10;