accessing
cardFromId: aNumber

	^ self cards detect: 
		[:card | card id = aNumber].