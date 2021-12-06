Select Name,Platform,
(CASE WHEN Year<2010 then 'pre-2010'
ELSE 'post-2010'
END) as Record
FROM vgsales
ORDER BY Name asc;