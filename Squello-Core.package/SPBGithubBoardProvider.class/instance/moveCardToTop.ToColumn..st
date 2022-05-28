cards
moveCardToTop: aSPBCard ToColumn: aSPBLane

	| payload |
	payload := Dictionary newFrom: {'position' -> 'top' . 'column_id' -> aSPBLane id}.	
	self api moveCard: aSPBCard id withPostData: payload.