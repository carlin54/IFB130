UPDATE player
SET player.streetName = 'Evergreen Terrace',
    player.streetNumber = 72,
    player.suburb = 'Springfield'
WHERE player.lastName = 'Smith' AND 
	  player.streetNumber = 180 AND
      player.streetName = 'Zelda Street' AND
      player.suburb = 'Linkburb';