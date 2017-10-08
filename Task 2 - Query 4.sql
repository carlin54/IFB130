SELECT badge.badgeName,
	   player.firstName, 
	   player.lastName, 
       player.email
FROM purchase
JOIN player ON purchase.username = player.username
JOIN badge ON purchase.badgeID = badge.badgeID
ORDER BY badge.badgeName, player.firstName, player.lastName ASC;