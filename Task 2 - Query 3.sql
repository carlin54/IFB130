SELECT player.username, phonenumber.phoneNumber
FROM player
JOIN phonenumber ON player.username = phonenumber.username
WHERE player.dob = (SELECT
			min(player.dob)
            FROM player);