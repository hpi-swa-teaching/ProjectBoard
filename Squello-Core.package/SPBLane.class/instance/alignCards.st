card movement
alignCards

	| cards current |
	cards := (self board laneCardLinkage at: self id).
	1 to: cards size do:
		[:i | current := cards at: i.
		current position: ((self position x + 10) @ (self position y + 70 + ((i-1) * 120)))].
	

	