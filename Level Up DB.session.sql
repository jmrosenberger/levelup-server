SELECT E.event_id AS Name_Of_Event, 
    Ga.Title AS Game_Title, 
    Ev.Description AS About,
    COUNT(E.gamer_id) AS Attendee_Count, 
    A.username AS Username, A.email AS Email
FROM levelupapi_eventgamer AS E
JOIN levelupapi_gamer AS G
    ON E.gamer_id = G.id
JOIN auth_user AS A
    ON A.id = G.user_id
JOIN levelupapi_event AS Ev
    ON Ev.id = E.Event_id
JOIN levelupapi_game AS Ga
    ON Ev.game_id = Ga.id
GROUP BY e.event_id