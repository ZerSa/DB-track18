SELECT users.user_id, SUM(payment_sum) as user_sum
FROM users JOIN payments on users.user_id = payments.user_id
GROUP BY user_id 
ORDER BY user_sum DESC
LIMIT 3;


SELECT AVG (avg_sessions.count_sessions)
FROM 
	(SELECT COUNT(session_id) AS count_sessions
	FROM users LEFT JOIN sessions on users.user_id = sessions.user_id
	GROUP BY users.user_id) as avg_sessions
;