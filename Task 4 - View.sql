
CREATE VIEW INACTIVE_PLAYERS AS 
SELECT player.firstName, player.lastName, player.creationDateTime
FROM player
LEFT JOIN
	 (SELECT player.username, COUNT(playerprogress.questID) AS questsComplete
	  FROM playerprogress
	  JOIN player ON player.username = playerprogress.username
      WHERE playerprogress.progress = 'complete'
	  GROUP BY player.username) ac
      ON ac.username = player.username
      WHERE ac.questsComplete IS NULL

      