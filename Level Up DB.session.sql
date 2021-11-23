SELECT E.event_id AS Event, COUNT(gamer_id) AS Attendee_Count, A.username AS Username
FROM levelupapi_eventgamer AS E
JOIN levelupapi_gamer AS G
ON E.gamer_id = G.id
JOIN auth_user AS A
ON A.id = G.user_id
-- GROUP BY e.event_id