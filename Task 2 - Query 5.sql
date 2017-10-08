SELECT player.username, COUNT(playerprogress.questID) AS CountCompletedQuests
FROM player
JOIN playerprogress ON player.username = playerprogress.username
WHERE playerprogress.progress = 'complete'
GROUP BY player.username;