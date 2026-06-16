SELECT id,
       first_name,
       last_name,
       email,
       created_at,
       status
FROM users
WHERE status = 'active'
ORDER BY created_at DESC
LIMIT 10;



