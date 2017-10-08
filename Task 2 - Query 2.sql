SELECT player.username, SUM(purchase.cost) as TotalSpent
FROM purchase
JOIN player on purchase.username = player.username
GROUP BY player.username 
ORDER BY player.username DESC;